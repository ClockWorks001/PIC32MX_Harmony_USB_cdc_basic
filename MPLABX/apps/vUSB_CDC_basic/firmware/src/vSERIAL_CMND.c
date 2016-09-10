/*******************************************************************************
 *	UART_入力処理処理
 *	UART2を使用 *c32ではprintfはデフォルトでUSART2へ出力
 *	新規:20130130
 *	修正:-
 ******************************************************************************/
#define vSERIAL_CMND_C

#include "integer.h"
#include "xprintf.h"

#include "vSERIAL_CMND.h"
#include "vUSB.h"


/*****************************
 * initialization
 *****************************/
void vCMND_init(SERIAL_CMND* sc, BYTE* cmd_buffer, int bufferSize) {
    int i;
	sc->iCPtr = 0;							// バッファクリアの指示。バッファポインタを戻す
    sc->buffer_size = bufferSize;
    sc->cmdBuff = cmd_buffer;
	for (i = 0; i < bufferSize ;  sc->cmdBuff[i++] = 0);
}


/*****************************
 * コマンド文字列取得,コマンドモード移行
 * 1文字づつ受信したデータをコマンドバッファに格納する。
 * エコーバック処理を行う
 *****************************/
eSERIAL_CMND vGetsCMND(SERIAL_CMND* sc) {
	unsigned char ucRxData;

	if(vUSB_readFIFO_storedByte()) {		//受信状況をチェック。したら、
		// PIR1bits.RC1IF = 0;
		ucRxData = vUSB_getc();			//受信データを取り込む

		switch(ucRxData) {						//取り込んだ1文字をチェック
		case 0x00:								//null
			break;
		case '\b':	// BS
			if(sc->iCPtr > 0) {
				sc->iCPtr--;						//バッファから1文字削除
				//コマンド・バッファから1文字削除されたとき消されたように表示する
				xputs("\b \b");		//1文字もどってクリア
			}
			return eSERIAL_CMND_Wait;
			break;

		case '\r':	// Enter(コマンド確定)
			if(sc->iCPtr < sc->buffer_size) {
				//まだコマンドバッファに登録できるとき
				sc->cmdBuff[sc->iCPtr] = 0x00;			//NULLコード
			} else {
				//コマンドバッファが満杯のとき
				sc->cmdBuff[sc->buffer_size] = 0x00;		//NULLコード
			}
			sc->iCPtr = 0 ;						//コマンドバッファをクリア
			return eSERIAL_CMND_Exec;
			break;

		case '\x7F':	// (DEL)入力のキャンセル
			sc->iCPtr = 0 ;						//コマンドバッファをクリア
			xputs("\n\rDelete the command");
			return eSERIAL_CMND_Del;
			break;

		case '\x1B':	// (ESC)メニュー階層のエスケープ
			sc->iCPtr = 0 ;						//コマンドバッファをクリア
			xputs("\n\rEscape the command");
			return eSERIAL_CMND_Esc;
			break;

		default:	// コマンド文字列の取得
			if(sc->iCPtr < sc->buffer_size) {
				//まだコマンドバッファに登録できるとき
				sc->cmdBuff[sc->iCPtr] = ucRxData;			//コマンド文字を登録
				vUSB_putc(ucRxData);	//1文字エコーバック
				sc->iCPtr++;							//次の登録位置
    			return eSERIAL_CMND_Wait;
			} else {
				xputs("\n\rCommand Over Flow");
				return eSERIAL_CMND_Err;
			}
		}

	}
	return eSERIAL_CMND_Wait;
}



