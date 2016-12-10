/*******************************************************************************
*
*  msgq.h -     Service routines for concurrent access to a circular buffer
*               modelling a message queue
*
*   Notes:      The user should modify the msgq_usr.h file
*
*******************************************************************************/


#include  <Source/os.h>
//#include    <semaphore.h>
#include    "msgq_usr.h"      /* User-defined constants and structs */

#define     LOCAL       0     /* semaphores will not be shared
                                 with other processes */


typedef struct                /* message queue structure */
{
  msg_t             buffer [BUFSIZE];     /* circular buffer */
  int               bufin;                /* nxt free slot ndx */
  int               bufout;               /* nxt msg slot */
  OS_MUTEX			buffer_lock;          /* mutex for buffer */
  OS_SEM            items;                /* semaphore for items */
  OS_SEM            slots;                /* semaphore for slots */
} msgq_t;


void initialiseQueues ( void );
void destroyQueues ( void );
void sendMessage ( msgq_t *queue_ptr, msg_t msg );
msg_t receiveMessage ( msgq_t *queue_ptr );
