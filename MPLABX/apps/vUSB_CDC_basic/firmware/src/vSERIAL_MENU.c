/*******************************************************************************
 *	USART_Menu処理
 *	新規:20130130
 *	修正:-
 ******************************************************************************/
#define vSERIAL_MENU_C


#include "integer.h"
#include "xprintf.h"
#include "vSERIAL_CMND.h"
#include "vSERIAL_MENU.h"

eModeC2 eModeStatusC2;
        
SERIAL_CMND sc;
#define CMND_BUFFER_SIZE 128					//コマンドバッファサイズ　UART I/O buffer size
BYTE bCmdBuff[CMND_BUFFER_SIZE + 1];	//コマンドバッファ、最後の一文字はnullの格納用

char cMsgLine01;
const BYTE bMsg01[] = {
	"\r\n+Input command!"			//入力表示コマンドモード
	"\r\n+(DEL)->Clear the command"		//コマンドクリア
	"\r\n+(ESC)->Exit or Clear"			//
	"\r\n+Dyymmdd->Date setting"		//
	"\r\n+Thhmmss->Time setting"		//
	"\r\n+G->Time Output"				//時間の表示
	"\0"                               //End of Menu
};


//#pragma code
/*****************************
 * initialization
 *****************************/
void vSERIAL_menu_init(void) {
	eModeStatusC2 = eModeC2_menu_init ;
	vCMND_init(&sc, &bCmdBuff[0], CMND_BUFFER_SIZE) ;
	//xputs("\r\n>");					//改行&入力指示プロンプト
	vXputs_return();
}

/*****************************
 * Serial Menu control
 *****************************/
void vSERIAL_Menu_Control11(void) {

	switch (eModeStatusC2) {
	case  	eModeC2_menu_msg1 :
		xputs(bMsg01);							//初期メッセージ出力
		eModeStatusC2++;						//モードを次のステータスへ遷移
		break;

	case  	eModeC2_menu_init :
		vXputs_return();						//改行&入力指示プロンプト
		eModeStatusC2++;						//モードを次のステータスへ遷移
		break;

	case  	eModeC2_vGetsCMND :
		switch(vGetsCMND(&sc)) {					//コマンド文字列取得->cCmdBuf格納
		case eSERIAL_CMND_Exec:
			eModeStatusC2 = eModeC2_vExecCmd;
			break;
		case eSERIAL_CMND_Esc:
			eModeStatusC2 = eModeC2_menu_msg1;
			break;
		case eSERIAL_CMND_Del:
			eModeStatusC2 = eModeC2_menu_init;
			break;
		default:								//コマンド入力まち
			break;
		}
		break;

	case  	eModeC2_vExecCmd:					//Command selection
        
   		switch(sc.cmdBuff[0]) {
		case 'M':								//Menu表示コマンド
		case 'm':								//Menu表示コマンド
			eModeStatusC2 = eModeC2_menu_msg1;
			break;
        
		case 0x00:								//空enter
			eModeStatusC2 = eModeC2_menu_init;
			break;
        
        default:
			xputs("\r\nCOMMAND EXECUTE>>");  	//SAMPLE
			xputs(sc.cmdBuff);                 //SAMPLE
			eModeStatusC2 = eModeC2_menu_init;
            break;
        }
        
        break;
        
	case  	eModeC2_Command_error:
		// コマンド該当なし
		xputs("\r\n? Unrecognized command format");	// 入力エラー
		eModeStatusC2 = eModeC2_menu_init;
		break;

	default:
		eModeStatusC2 = eModeC2_menu_init;
	}

}

/*****************************
 * 改行&入力指示プロンプト
 *****************************/
void vXputs_return(void) {
	xputs("\r\n>");					//改行&入力指示プロンプト
}

/*****************************
 * return code / status output
 *****************************/
void vPut_rc (int rc) {		//ステータスOUTPUT
	int i;
	const char *str = {
		"OK\0"
		"DISK_ERR\0"
		"INT_ERR\0"
		"NOT_READY\0"
		"NO_FILE\0"
		"NO_PATH\0"
		"INVALID_NAME\0"
		"DENIED\0"
		"EXIST\0"
		"INVALID_OBJECT\0"
		"WRITE_PROTECTED\0"
		"INVALID_DRIVE\0"
		"NOT_ENABLED\0"
		"NO_FILE_SYSTEM\0"
		"MKFS_ABORTED\0"
		"TIMEOUT\0"
		"LOCKED\0"
		"NOT_ENOUGH_CORE\0"
		"TOO_MANY_OPEN_FILES\0"
	};
	for (i = 0; i != rc && *str; i++) {
		while (*str++) ;
	}
	xprintf("\r\nrc=%u FR_%s\r\n>", (UINT)rc, str);

}


