#define M 6;    /* número de reintentos   */
#define N 4;   /* tamaño del archivo  */
mtype {MENS, CNF};   /* mensaje y confirmación  */
chan haciaE = [1] of {mtype, bit};   /*  canal del receptor al emisor   */
chan haciaR = [1] of {mtype, byte, bit};   /* canal del emisor al receptor  */
bit fallado=0;
int elems = 0;       /* número de elementos transmitidos   */
int file[4]={3,5,1,6};  /* archivo de transmisión   */
int miArch [4] ;   /* archivo de recepción   */
byte m=0;
proctype Emisor(chan leer, escr)
{
  bit bitenvio=0;
  bit bitrecibido;/*no se inicializa por que no sabe que va a recibir*/
  byte cont = 0;
  
  do
  	 /* SI ya transfirio todos los archivos */
     :: elems == N -> goto transferirOK;
     /* si aun no ha transferido todos los archivos*/
     :: elems < N -> 
     	printf("hola");
     	/* Si ya envio el archico por el canar de escritura*/
      if :: escr ! MENS(file[elems], bitenvio) ->
           /*entonces se queda esperando*/
           if
             /* si lee por el canal de lectura el dato*/
             :: leer ? CNF(bitrecibido) ->
                  bitenvio = 1 - bitenvio;
                  elems = elems + 1;/*aumenta el indice del elemento para enviar*/
             ::  timeout -> if
             			/*aumenta el numero de reintentos*/
                        ::  cont < M -> cont = cont + 1
                        :: else
                       fi
            fi
            
          :: timeout -> skip
       fi
       /*time out final en el que ya no aumentan los reintentos*/
       :: cont == M -> goto emisorfalla
   od;
   /*finalizacion*/
   transferirOK: printf("listo ");
   emisorfalla: fallado = 1 
}

proctype Receptor(chan leer, escr)
{
  bit bitrecibido;
  bit bitanterior=1;
  byte x; /*cualquier numero que vaya a recibir */
  do
  	 /*si lee el mensaje por el canal de recepcion*/
     :: leer ? MENS(x, bitrecibido) ->
        if :: bitanterior != bitrecibido -> 
                  miArch[m] = x;
                   m = m + 1;
                   bitanterior = bitrecibido
            :: else
         fi
         escr ! CNF(bitrecibido)
     :: fallado == 1 -> goto recfalla 
   od;
   recfalla: skip
}
/*
proctype demonio (chan in, out) {
  do
   :: out ? _,_,_
   :: in ? _,_
 od
}
*/
init
{
  run Emisor(haciaE, haciaR);
  run Receptor(haciaR, haciaE);
  /*run demonio(haciaE, haciaR);*/
}