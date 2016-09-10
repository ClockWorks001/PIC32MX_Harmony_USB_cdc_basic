/*******************************************************************************
 *	USART_Menu処理
 *	新規:20120922
 *	修正:-
 ******************************************************************************/
#ifndef _vSERIAL_MENU_H
#define _vSERIAL_MENU_H

/*****************************
 * VARIABLES
 *****************************/
typedef enum  {
	eModeC2_menu_msg1,					//Start message
	eModeC2_menu_init,
	eModeC2_vGetsCMND,
	eModeC2_vExecCmd,					//コマンド分岐
	eModeC2_Command_error,
	eModeC2_end
} eModeC2 ;


#if defined vSERIAL_MENU_C

//	unsigned char *ucPtr1, *ucPtr2;			// Pointer for Byte data
	//long p1, p2;

#else

//	extern enum eModeC2 eModeStatusC2;

#endif


/*****************************
 * PROTOTYPES
 *****************************/
void vSERIAL_menu_init(void);
void vSERIAL_Menu_Control11(void);


void vXputs_return(void);
void vPut_rc (int rc);				//ステータスOUTPUT

#endif
