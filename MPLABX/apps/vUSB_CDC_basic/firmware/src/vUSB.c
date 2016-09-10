/*******************************************************************************
  MPLAB Harmony sample Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "string.h"
#include "vUSB.h"

#include "vFIFO.h"
#include "xprintf.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the vUSB_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

vUSB_DATA usbDATA;

#define vUSB_READ_BUFFER_SIZE 64
BYTE readBuffer[vUSB_READ_BUFFER_SIZE];

#define vUSB_WRITE_BUFFER_SIZE 64
BYTE writeBuffer[vUSB_WRITE_BUFFER_SIZE];

FIFO_STRUCT readFIFO;
#define FIFO_READ_BUFFER_SIZE 64
BYTE fifoReadBuffer[FIFO_READ_BUFFER_SIZE];

FIFO_STRUCT writeFIFO;
#define FIFO_WRITE_BUFFER_SIZE 256
BYTE fifoWriteBuffer[FIFO_WRITE_BUFFER_SIZE];

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************
 * USB CDC Device Events - Application Event Handler
 *******************************************************/

USB_DEVICE_CDC_EVENT_RESPONSE APP_USBDeviceCDCEventHandler
(
    USB_DEVICE_CDC_INDEX index ,
    USB_DEVICE_CDC_EVENT event ,
    void * pData,
    uintptr_t userData
)
{
    vUSB_DATA * usbDATAObject;
    usbDATAObject = (vUSB_DATA *)userData;
    USB_CDC_CONTROL_LINE_STATE * controlLineStateData;

    switch ( event )
    {
        case USB_DEVICE_CDC_EVENT_GET_LINE_CODING:

            /* This means the host wants to know the current line
             * coding. This is a control transfer request. Use the
             * USB_DEVICE_ControlSend() function to send the data to
             * host.  */

            USB_DEVICE_ControlSend(usbDATAObject->deviceHandle,
                    &usbDATAObject->getLineCodingData, sizeof(USB_CDC_LINE_CODING));

            break;

        case USB_DEVICE_CDC_EVENT_SET_LINE_CODING:

            /* This means the host wants to set the line coding.
             * This is a control transfer request. Use the
             * USB_DEVICE_ControlReceive() function to receive the
             * data from the host */

            USB_DEVICE_ControlReceive(usbDATAObject->deviceHandle,
                    &usbDATAObject->setLineCodingData, sizeof(USB_CDC_LINE_CODING));

            break;

        case USB_DEVICE_CDC_EVENT_SET_CONTROL_LINE_STATE:

            /* This means the host is setting the control line state.
             * Read the control line state. We will accept this request
             * for now. */

            controlLineStateData = (USB_CDC_CONTROL_LINE_STATE *)pData;
            usbDATAObject->controlLineStateData.dtr = controlLineStateData->dtr;
            usbDATAObject->controlLineStateData.carrier = controlLineStateData->carrier;

            USB_DEVICE_ControlStatus(usbDATAObject->deviceHandle, USB_DEVICE_CONTROL_STATUS_OK);

            break;

        case USB_DEVICE_CDC_EVENT_SEND_BREAK:

            /* This means that the host is requesting that a break of the
             * specified duration be sent. Read the break duration */

            usbDATAObject->breakData = ((USB_DEVICE_CDC_EVENT_DATA_SEND_BREAK *)pData)->breakDuration;
            break;

        case USB_DEVICE_CDC_EVENT_READ_COMPLETE:

            /* This means that the host has sent some data*/
            usbDATAObject->isReadComplete = true;
            usbDATAObject->CDC_ReadLength =
                    ((USB_DEVICE_CDC_EVENT_DATA_READ_COMPLETE*)pData)->length;
            break;

        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_RECEIVED:

            /* The data stage of the last control transfer is
             * complete. For now we accept all the data */

            USB_DEVICE_ControlStatus(usbDATAObject->deviceHandle, USB_DEVICE_CONTROL_STATUS_OK);
            break;

        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_SENT:

            /* This means the GET LINE CODING function data is valid. We dont
             * do much with this data in this demo. */
            break;

        case USB_DEVICE_CDC_EVENT_WRITE_COMPLETE:

            /* This means that the data write got completed. We can schedule
             * the next read. */

            usbDATAObject->isWriteComplete = true;
            break;

        default:
            break;
    }

    return USB_DEVICE_CDC_EVENT_RESPONSE_NONE;
}

/***********************************************
 * Application USB Device Layer Event Handler.
 ***********************************************/
void APP_USBDeviceEventHandler 
( 
    USB_DEVICE_EVENT event, 
    void * eventData, 
    uintptr_t context 
)
{
    USB_DEVICE_EVENT_DATA_CONFIGURED *configuredEventData;

    switch ( event )
    {
        case USB_DEVICE_EVENT_SOF:

            /* This event is used for switch debounce. This flag is reset
             * by the switch process routine. */
            usbDATA.sofEventHasOccurred = true;
            break;

        case USB_DEVICE_EVENT_RESET:

            /* Update LED to show reset state */
            LED_RED_ON;
        
            usbDATA.isConfigured = false;

            break;

        case USB_DEVICE_EVENT_CONFIGURED:

            /* Check the configuratio. We only support configuration 1 */
            configuredEventData = (USB_DEVICE_EVENT_DATA_CONFIGURED*)eventData;
            if ( configuredEventData->configurationValue == 1)
            {
                /* Update LED to show configured state */
                LED_RED_OFF;

                /* Register the CDC Device application event handler here.
                 * Note how the usbDATA object pointer is passed as the
                 * user data */

                USB_DEVICE_CDC_EventHandlerSet(USB_DEVICE_CDC_INDEX_0, APP_USBDeviceCDCEventHandler, (uintptr_t)&usbDATA);

                /* Mark that the device is now configured */
                usbDATA.isConfigured = true;

            }
            break;

        case USB_DEVICE_EVENT_POWER_DETECTED:

            /* VBUS was detected. We can attach the device */
            USB_DEVICE_Attach(usbDATA.deviceHandle);
            break;

        case USB_DEVICE_EVENT_POWER_REMOVED:

            /* VBUS is not available any more. Detach the device. */
            USB_DEVICE_Detach(usbDATA.deviceHandle);
            break;

        case USB_DEVICE_EVENT_SUSPENDED:

            /* Switch LED to show suspended state */
            LED_RED_OFF;
            break;

        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_ERROR:
        default:
            break;
    }
}


/*****************************************************
  Function:
    bool vUSB_StateReset(void)

  Remarks:
    This function is called in every step of the
    application state machine.
 */
  
bool vUSB_StateReset(void)
{
    /* This function returns true if the device
     * was reset  */

    bool retVal;

    if(usbDATA.isConfigured == false)
    {
        usbDATA.state = vUSB_STATE_WAIT_FOR_CONFIGURATION;
        usbDATA.readTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
        usbDATA.writeTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
        usbDATA.isReadComplete = true;
        usbDATA.isWriteComplete = true;
        retVal = true;
    }
    else
    {
        retVal = false;
    }

    return(retVal);
}


/*******************************************************************************
  Function:
    void vUSB_Initialize ( void )

  Remarks:
    See prototype in vUSB.h.
 */

void vUSB_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    usbDATA.state = vUSB_STATE_INIT;
    
    /* Device Layer Handle  */
    usbDATA.deviceHandle = USB_DEVICE_HANDLE_INVALID ;

    /* Device configured status */
    usbDATA.isConfigured = false;

    /* Initial get line coding state */
//    usbDATA.getLineCodingData.dwDTERate = ;
    usbDATA.getLineCodingData.dwDTERate = 115200;
    usbDATA.getLineCodingData.bParityType =  0;
    usbDATA.getLineCodingData.bParityType = 0;
    usbDATA.getLineCodingData.bDataBits = 8;

    /* Read Transfer Handle */
    usbDATA.readTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

    /* Write Transfer Handle */
    usbDATA.writeTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

    /* Intialize the read complete flag */
    usbDATA.isReadComplete = true;

    /*Initialize the write complete flag*/
    usbDATA.isWriteComplete = true;

    /* Reset other flags */
    usbDATA.sofEventHasOccurred = false;

    /* Set up the read write buffer */
    usbDATA.CDC_readBuffer = &readBuffer[0];
    usbDATA.CDC_writeBuffer = &writeBuffer[0];

    vFifo_init (&readFIFO, &fifoReadBuffer[0], FIFO_READ_BUFFER_SIZE);
    vFifo_init (&writeFIFO, &fifoWriteBuffer[0], FIFO_WRITE_BUFFER_SIZE);

	// Join USB_CDC and xput()  //
  	xdev_out(vUSB_putc);

}

/******************************************************************************
  Function:
    void vUSB_Tasks ( void )

  Remarks:
    See prototype in vUSB.h.
 */

#define vUSB_STATE_NEXT_STEP usbDATA.state++
void vUSB_Tasks (void )
{
    /* Update the application state machine based
     * on the current state */

    int i;
    
    switch(usbDATA.state)
    {
        case vUSB_STATE_INIT:

            /* Open the device layer */
            usbDATA.deviceHandle = USB_DEVICE_Open( USB_DEVICE_INDEX_0, DRV_IO_INTENT_READWRITE );

            if(usbDATA.deviceHandle != USB_DEVICE_HANDLE_INVALID)
            {
                /* Register a callback with device layer to get event notification (for end point 0) */
                USB_DEVICE_EventHandlerSet(usbDATA.deviceHandle, APP_USBDeviceEventHandler, 0);
                vUSB_STATE_NEXT_STEP;
            }
            else
            {
                /* The Device Layer is not ready to be opened. We should try
                 * again later. */
            }
           
            break;

        case vUSB_STATE_WAIT_FOR_CONFIGURATION:

            /* Check if the device was configured */
            if(usbDATA.isConfigured)
            {
                /* If the device is configured then lets start reading */
                vUSB_STATE_NEXT_STEP;
            }
            break;

        //==READ============================================================
        case vUSB_READ_SCHEDULE:

            if(vUSB_StateReset())
            {
                break;
            }

            /* If a read is complete, then schedule a read
             * else wait for the current read to complete */

            if(usbDATA.isReadComplete == true)
            {
                // put in readFIFO from USB-CDC read buffer.
                if(usbDATA.CDC_ReadLength <= vFifo_spaceSize(&readFIFO))
                {
                    for(i = 0; i < usbDATA.CDC_ReadLength; i++)
                    {
                        vFifo_putc (&readFIFO, usbDATA.CDC_readBuffer[i]); 
                    }
                } else {
                    break;
                }
                usbDATA.CDC_ReadLength = 0;

                // set a next CDC read schedule.
                usbDATA.isReadComplete = false;
                usbDATA.readTransferHandle =  USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

                USB_DEVICE_CDC_Read (USB_DEVICE_CDC_INDEX_0,
                        &usbDATA.readTransferHandle, usbDATA.CDC_readBuffer,
                        vUSB_READ_BUFFER_SIZE);

                if(usbDATA.readTransferHandle == USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID)
                {
                    usbDATA.state = vUSB_STATE_ERROR;
                    break;
                }
            }
            vUSB_STATE_NEXT_STEP;
            break;
     //==READ============================================================

     //==WRITE===========================================================
         case vUSB_WRITE_SCHEDULE:

             /* Check if a character was sent. The isWriteComplete
              * flag gets updated in the CDC event handler */
           if(usbDATA.isWriteComplete == true && vFifo_storedByte(&writeFIFO) > 0)
            {
                // put in USB-CDC write buffer from writeFIFO
                usbDATA.CDC_WriteLength = vFifo_storedByte(&writeFIFO);
                if(usbDATA.CDC_WriteLength > vUSB_WRITE_BUFFER_SIZE)
                {
                    usbDATA.CDC_WriteLength = vUSB_WRITE_BUFFER_SIZE;
                }
                for(i = 0; i < usbDATA.CDC_WriteLength && i < vUSB_WRITE_BUFFER_SIZE ; i++)
                {
                    usbDATA.CDC_writeBuffer[i] = vFifo_getc(&writeFIFO) ; 
                }
                memset( &(usbDATA.CDC_writeBuffer[i]) , 0x00 , vUSB_WRITE_BUFFER_SIZE - usbDATA.CDC_WriteLength );

                if(vUSB_StateReset()) 
                {
                    break;
                }

                /* Setup the write */
                usbDATA.writeTransferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
                usbDATA.isWriteComplete = false;

                // It's a simple return to serial console.
                USB_DEVICE_CDC_Write(USB_DEVICE_CDC_INDEX_0,
                        &usbDATA.writeTransferHandle,
                        usbDATA.CDC_writeBuffer, usbDATA.CDC_WriteLength,
                        USB_DEVICE_CDC_TRANSFER_FLAGS_DATA_COMPLETE);

            }
            usbDATA.state = vUSB_READ_SCHEDULE;
            break;
            //==WRITE===========================================================
            
        case vUSB_STATE_ERROR:
            usbDATA.isConfigured = false;
            vUSB_StateReset();
            break;
        default:
            break;
    }
}

/* Put a byte into USB write FIFO *return status*/
void vUSB_putc (BYTE d)
{
    vFifo_putc (&writeFIFO, d);
}

/* Get a byte from USB read FIFO */
BYTE vUSB_getc (void)
{
    return  vFifo_getc (&readFIFO);
}

/* return number of bytes of using read FIFO */
int vUSB_readFIFO_storedByte (void)
{
    return  vFifo_storedByte (&readFIFO);
}

/* return number of bytes of using write FIFO */
int vUSB_writeFIFO_storedByte (void)
{
    return  vFifo_storedByte (&writeFIFO);
}


/*******************************************************************************
 End of File
 */

