/*******************************************************************************
*
*  msgq_usr.h - Manifest Constants and Types for concurrent access to a
*                   circular buffer modelling a message queue
*
*   Notes:          User defined according to application
*
*******************************************************************************/

#define     BUFSIZE     8     /* number of slots in queues */
#define     NUM_QUEUES  2     /* number of queues */
#define     CONTROLLER_Q  0   /* queue 0: controller */
#define     HARDWARE_Q    1   /* queue 1: hardware */

/***( message structure )******************************************************/

typedef struct
{
  int   signal;
  int   value;
} msg_t;

/***( signals )****************************************************************/

typedef enum
{
  sCupOfCoffee,
  sCupOfWater,
  sReturnChange
} TO_CUSTOMER ;                           /* Signals sent to customer */

typedef enum
{
  sCoffee,
  sTea,
  sCoin
} FROM_CUSTOMER;                          /* Signals sent from customer
                                            to controller */

typedef enum
{
  sFillWater,
  sFillCoffee,
  sHeatWater
} TO_HARDWARE;                            /* Signals sent from controller
                                            to hardware */

typedef enum
{
  sWaterOK,
  sCoffeeOK,
  sWarm
} FROM_HARDWARE;                          /* Signals sent from hardware
                                            to controller */

/***( EFSM states )************************************************************/

typedef enum
{
  IdleC,
  PaidTen,
  MakingCoffee,
  WaterForCoffee,
  CoffeeAndWater
} CONTROLLER_STATES;                      /* EFSM states for controller */

typedef enum
{
  IdleH
} HARDWARE_STATES;                        /* EFSM states for hardware */
