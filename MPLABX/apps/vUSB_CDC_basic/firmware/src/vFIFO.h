/*******************************************************************************
 *	FIFO buffer for serial line
 *	??:20160827
 *	??:-
 ******************************************************************************/

#ifndef _vFIFO_H
#define _vFIFO_H

#include "integer.h"

//#define FIFO_BUFFER_SIZE 256

#define IS_FIFO_BUFFER_GOOD 0
#define IS_FIFO_BUFFER_EMPTY -1
#define IS_FIFO_BUFFER_FULL -9

typedef volatile struct {
    int     ri, wi, ct, buffer_size;/* Read index, Write index, Data counter */
    int     status;                 /* status -1:empty, -9:full */
    BYTE*   buff;                   /* FIFO buffer */
} FIFO_STRUCT;

void vFifo_init (FIFO_STRUCT* Fifo, BYTE* fifo_buffer, int fifo_buffer_size);
int  vFifo_storedByte (FIFO_STRUCT* Fifo);
int  vFifo_spaceSize (FIFO_STRUCT* Fifo);
int  vFifo_putc (FIFO_STRUCT* Fifo, BYTE d);
BYTE vFifo_getc (FIFO_STRUCT* Fifo);

#endif

