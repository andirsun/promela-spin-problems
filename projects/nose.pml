/* primer version*/
#define M 20;    /* número de reintentos   */
#define N 4;   /* tamaño del archivo  */
#define R 3; /* cantidad de receptores*/ 

mtype {MENS, CNF};   /* mensaje y confirmación  */
chan conf = [1] of {mtype, bit};   /*  canal del receptor al emisor   */
chan env = [1] of {mtype, byte, bit};   /* canal del emisor al receptor  */
bit fallado=0;
int elems = 0;       /* número de elementos transmitidos   */

int file[4]={3,5,1,6};  /* archivo de transmisión   */
 //file[0] = 3; file[1] = 5; file[2] = 1; file[3] = 6;
 int miArch [3] ;   /* archivo de recepción   */
 byte m=0;
 
 
active proctype Emisor()
{
  bit bitenvio=0, bitrecibido;
  byte cont = 0;
  byte contRec = 0;
  do
     :: elems == N -> goto transferirOK;
     :: elems < N -> 
      if 
         :: env ! MENS(file[elems], bitenvio) ->
            if 
               :: conf ? CNF(bitrecibido) ->
                  contRec = contRec +1;
                  if 
                     :: contRec == R ->  
                        bitenvio = 1 - bitenvio;
                        elems = elems + 1;
                        contRec=0;   
                     :: timeout -> skip
                  fi
               :: timeout -> 
                        if ::  cont < M -> cont = cont + 1
                           :: else
                        fi
            fi
            
         ::skip
      fi
         :: cont == M -> goto emisorfalla
  od;
  transferirOK: printf("listo ");
  emisorfalla: fallado = 1 
}

active [3] proctype  Receptor()
{
  bit bitrecibido;
  bit bitanterior=1;
  byte x;
  do
     :: env ? MENS(x, bitrecibido) ->
        if :: bitanterior != bitrecibido -> 
                   bitanterior = bitrecibido
                   conf ! CNF(bitrecibido)
            :: else
         fi
         
     :: fallado == 1 -> goto recfalla 
   od;
   recfalla: skip
}


/* 
active proctype demonio () {
  do
   :: out ? _,_,_
   :: in ? _,_
 od
}*/

     
     
     
   /*  ... Si un elemento se envia, finalmente siempre llega  aun receptor    */ 
     
     ltl c1 { [](  env?[MENS(file[elems],_)]  -> <>  (  env ?[CNF(_)])  )}
     
   /*  ... llega un momento en que todo el archivo se ha transmitido a todos los receptores.    */ 
     
     ltl c2 { <>(elems == 5)}
     