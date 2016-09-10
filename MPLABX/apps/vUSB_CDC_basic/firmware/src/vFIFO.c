/*******************************************************************************
 *	FIFO buffer for serial line
 *	??:20160827
 *	??:-
 ******************************************************************************/

#include "string.h"
#include "integer.h"
#include "vFIFO.h"


/* Check number of bytes in the FIFO */
int  vFifo_storedByte (FIFO_STRUCT* Fifo)
{
    return Fifo->ct;   /* Returns number of bytes in the FIFO */
}

/* Check number of bytes in the FIFO */
int  vFifo_spaceSize (FIFO_STRUCT* Fifo)
{
    return (Fifo->buffer_size - Fifo->ct); 
}

/* Get a byte from FIFO */
BYTE vFifo_getc (FIFO_STRUCT* Fifo)
{
    BYTE d;
    int i;

    if (!Fifo->ct) {          /* Wait while FIFO empty */
        Fifo->status = IS_FIFO_BUFFER_EMPTY;
        return 0x00;
    }
    Fifo->status = IS_FIFO_BUFFER_GOOD;

    i = Fifo->ri;             /* Get a byte from FIFO */
    d = Fifo->buff[i++];
    Fifo->ri = i % Fifo->buffer_size;
    Fifo->ct--;

    return d;
}


/* Put a byte into FIFO *return status*/
int vFifo_putc (FIFO_STRUCT* Fifo, BYTE d)
{
    int i;

    if (Fifo->ct >= Fifo->buffer_size) {       /* Return when FIFO is full */
        Fifo->status = IS_FIFO_BUFFER_FULL;
        return  IS_FIFO_BUFFER_FULL;
    }

    Fifo->status = IS_FIFO_BUFFER_GOOD;
    i = Fifo->wi;     /* Put a data into the FIFO */
    Fifo->buff[i++] = d;
    Fifo->wi = i % Fifo->buffer_size;
    Fifo->ct++;
    return  IS_FIFO_BUFFER_GOOD;
   
}


/* Initialize FIFO module */
void vFifo_init (FIFO_STRUCT* Fifo, BYTE* fifo_buffer, int fifo_buffer_size)
{
    /* Clear FIFOs */
    Fifo->ri = 0; 
    Fifo->wi = 0; 
    Fifo->ct = 0;
    Fifo->buff = fifo_buffer;
    Fifo->buffer_size = fifo_buffer_size;
    Fifo->status = IS_FIFO_BUFFER_GOOD;
    memset( Fifo->buff , 0x00 , Fifo->buffer_size );
}


