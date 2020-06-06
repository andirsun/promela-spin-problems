#define M 30      /* número de reintentos   */
#define N 4       /* tamaño del archivo  */
#define RECEP 3   /* cantidad de receptores*/ 


mtype {MENS, CNF};   /* mensaje y confirmación  */

chan conf = [1] of {mtype, bit};   /*  canal del receptor al emisor   */
chan env = [1] of {mtype, byte, bit};   /* canal del emisor al receptor  */

bit fallado=0;
int elems = 0;       /* número de elementos transmitidos   */
int checkout[N];    /* chequea si un elemento enviado ya fue confirmado por todos los receptores */

int file[4]={3,5,1,6};  /* archivo de transmisión   */
 //file[0] = 3; file[1] = 5; file[2] = 1; file[3] = 6;
byte m=0;
byte contConf = 0;      /* Cuenta las confirmaciones de cada receptor por cada  elemento enviado*/
byte ultimo=1;
 /*  Emisor del programa*/
active proctype Emisor()
{
  bit bitenvio  = 0, bitrecibido;
  byte cont     = 0;                               /* contador para los timeout del emisor*/
                              
  do
     :: elems == N -> goto transferirOK;
     :: elems < N -> 
      if 
         :: env ! MENS(file[elems], bitenvio) ->
            if 
               :: conf ? CNF(bitrecibido) ->
                                    
                  
                        checkout[elems] = 1;                /* Se confirma que para ese elemn todos los receptores lo recibieron*/
                        bitenvio        = 1 - bitenvio;     /* Se cambia el bit de envio(para alternar)*/
                        elems           = elems + 1;        /* se cambia al siguiente elemento del file*/
                         contConf =0;             /* se reinicia las confirmacion  de los  receptores para ese elemnto del file*/
                     
                     
                ::  timeout -> if
                        ::  cont < M -> cont = cont + 1
                        :: else
                       fi
            fi
          :: timeout -> skip
       fi
       :: cont == M -> goto emisorfalla
   od;
   transferirOK: printf("listo ");
   emisorfalla: fallado = 1 
}
bool recep_confir[RECEP];  /* Guarda si un receptor confirmo un elemento*/

active [RECEP] proctype  Receptor()
{
  bit bitrecibido;
  bit bitanterior=1;
  byte x;
  
  recep_confir[ _pid-1 ]=0;
  do 
     :: env ? MENS(x, bitrecibido) ->
        if :: bitanterior != bitrecibido -> 
                   bitanterior = bitrecibido
                   recep_confir[ _pid - 1 ]=1;  
                   contConf++;                  /* se aumenta si el receptor confirma el elemento recibido*/
           :: else
         fi
     :: contConf == RECEP ->
     	
     	if  :: ultimo == 1 ->
	       	atomic {  
	        	conf ! CNF(bitrecibido)      /*el receptor Confirma una unica vez por cada elemento recibido */
	        	ultimo = 0;
	       	}
       	:: else -> skip
     	fi 
       
       
       
       
         
    
     
     :: fallado == 1 -> goto recfalla 
   od
   recfalla: skip
}


/* 
active proctype demonio () {
  do
   :: out ? ,,_
   :: in ? ,
 od
}*/

     
     
     
