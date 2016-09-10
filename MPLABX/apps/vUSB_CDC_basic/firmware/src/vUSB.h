/*******************************************************************************
  MPLAB Harmony sample Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "vUSB_Initialize" and "vUSB_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "vUSB_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/


#ifndef _vUSB_H
#define _vUSB_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

//#include "system_config.h"
#include "system_definitions.h"

#include "integer.h"

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

#define LED_RED_ON PLIB_PORTS_PinSet (PORTS_ID_0, PORT_CHANNEL_C, PORTS_BIT_POS_8)
#define LED_RED_OFF PLIB_PORTS_PinClear (PORTS_ID_0, PORT_CHANNEL_C, PORTS_BIT_POS_8)

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
*/

typedef enum
{
    /* Application's state machine's initial state. */
    vUSB_STATE_INIT=0,
    /* Application waits for device configuration*/
    vUSB_STATE_WAIT_FOR_CONFIGURATION,
            
            
    /* USB read */
    /* Wait for a character receive */
    vUSB_READ_SCHEDULE,
            
    /* USB write */
    /* stuff data into write buffer from FIFO*/
    /* Wait for the TX to get completed */
    vUSB_WRITE_SCHEDULE,
           
    /* Application Error state*/
    vUSB_STATE_ERROR

} vUSB_STATES;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* Device layer handle returned by device layer open function */
    USB_DEVICE_HANDLE deviceHandle;

    /* Application's current state*/
    vUSB_STATES state;

    /* Set Line Coding Data */
    USB_CDC_LINE_CODING setLineCodingData;

    /* Device configured state */
    bool isConfigured;

    /* Get Line Coding Data */
    USB_CDC_LINE_CODING getLineCodingData;

    /* Control Line State */
    USB_CDC_CONTROL_LINE_STATE controlLineStateData;

    /* Read transfer handle */
    USB_DEVICE_CDC_TRANSFER_HANDLE readTransferHandle;

    /* Write transfer handle */
    USB_DEVICE_CDC_TRANSFER_HANDLE writeTransferHandle;

    /* True if a character was read */
    bool isReadComplete;

    /* True if a character was written*/
    bool isWriteComplete;

    /* Flag determines SOF event occurrence */
    bool sofEventHasOccurred;

    /* Break data */
    uint16_t breakData;

    /* Application CDC read buffer */
    uint8_t * CDC_readBuffer;
    /* Application CDC write buffer */
    uint8_t * CDC_writeBuffer;
    /* Read Buffer Length*/
    size_t CDC_ReadLength;
    /* Write Buffer Length*/
    size_t CDC_WriteLength;

} vUSB_DATA;

	
// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void vUSB_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the 
    application in its initial state and prepares it to run so that its 
    vUSB_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    vUSB_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void vUSB_Initialize (void );


/*******************************************************************************
  Function:
    void vUSB_Tasks ( void )

  Summary:
    MPLAB Harmony Demo application tasks function

  Description:
    This routine is the Harmony Demo application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    vUSB_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void vUSB_Tasks ( void );


/*******************************************************************************
  other Functions:
 */ 

void  vUSB_putc (BYTE d);
BYTE vUSB_getc (void);
int vUSB_readFIFO_storedByte (void);
int vUSB_writeFIFO_storedByte (void);


#endif /* _vUSB_H */
/*******************************************************************************
 End of File
 */

