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
  bit bitenvio=0, bitrecibido;
  byte cont = 0;
  
  do
     :: elems == N -> goto transferirOK;
     :: elems < N -> 
      if :: escr ! MENS(file[elems], bitenvio) ->
           if
             :: leer ? CNF(bitrecibido) ->
                  elems = elems + 1;
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

proctype Receptor(chan leer, escr)
{
  bit bitrecibido;
  byte x;
  do
     :: leer ? MENS(miArch[m], bitrecibido) ->
              m = m + 1; escr ! CNF(bitrecibido)
     :: fallado == 1 -> goto recfalla 
   od;
   recfalla: skip
}

proctype demonio (chan in, out) {
  do
   :: out ? _,_,_
   :: in ? _,_
 od
}
init
{
  run Emisor(haciaE, haciaR);
  run Receptor(haciaR, haciaE);
  run demonio(haciaE, haciaR);
}

ltl c1  {[]((haciaR?[MENS(5,_)]) -> X<>(miArch[1]==5) )}

ltl c2  {[]((m == 2)  -> (miArch[1]==file[1]) )}