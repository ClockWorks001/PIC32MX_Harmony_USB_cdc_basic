/*******************************************************************************
 *	USART_入力処理処理
 *	USART1を使用 *c18ではprintfはデフォルトでUSART1へ出力
 *	新規:20121006
 *	修正:-
 ******************************************************************************/
#ifndef _vSERIAL_CMND_H
#define _vSERIAL_CMND_H

/*****************************
 * VARIABLES
 *****************************/
typedef enum {
	eSERIAL_CMND_Wait,
	eSERIAL_CMND_Exec,
	eSERIAL_CMND_Esc,
	eSERIAL_CMND_Del,
	eSERIAL_CMND_End,
	eSERIAL_CMND_Err
} eSERIAL_CMND;

typedef struct {
    int     iCPtr, buffer_size;    //コマンドバッファの挿入位置
    BYTE*   cmdBuff;               //コマンドバッファ、最後の一文字はnullの格納用
} SERIAL_CMND;

/*****************************
 * PROTOTYPES
 *****************************/

void vCMND_init(SERIAL_CMND* sc, BYTE* cmd_buffer, int bufferSize);       //コマンドタスク用初期化処理
eSERIAL_CMND vGetsCMND(SERIAL_CMND* sc); //コマンド読み込み、マンドバッファへ格納処理

#endif

