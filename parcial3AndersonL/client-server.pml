/* numero de receptores */
# define R 2
/* número de reintentos antes de acabar */	
# define M 4
/* tamaño del archivo  */
# define N 4       
/* matriz para guardar la informaicion de cada receptor*/
byte data[R*N];
/*funciones para guardar y obtener datos de la matriz*/
#define get(a,b) 	data[((a)*N)+(b)]
#define put(a,b,c) 	data[((a)*N)+(b)] = c
/* Tipos de mensajes*/
mtype { MENS , CNF };
/* Canal del receptor al emisor */
chan conf = [1] of {mtype , bit };
/* Canal del emisor al receptor */ 
chan env = [1] of {mtype , byte , bit }; 
/* archivo de transmisión   */
int file[4]={3,5,1,6};  
/* 0 si el emisor no fallo, 1 el emisor fallo*/
bit fallado=0;
/* número de elementos transmitidos */
int elems = 0;    
/* flag que medice cuantos receptores han recibido un archivo*/
int flag = 0;    
/*indice de donde voy a guardar los nuevos datos en mi arreglo*/   
byte m=0;
byte idUltimo;


/* Metodos */

active proctype Emisor()
{
  bit bitenvio=0;
  bit bitrecibido;/*no se inicializa por que no sabe que va a recibir*/
  byte cont = 0;
  
  do
  	 /* SI ya transfirio todos los archivos que que solo aumento elem cuando todos me respondieron */
     :: elems == N -> goto transferirOK; 
     /* si aun no ha transferido todos los archivos*/
     :: elems < N -> 
     	/* Si ya envio el archico por el canar de escritura*/
      if :: env ! MENS(file[elems], bitenvio) ->
           /*entonces se queda esperando*/
           if
             /* si lee por el canal de lectura el dato*/
             :: conf ? CNF(bitrecibido) ->
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


active [ R ] proctype Receptor () {
	
	bit bitrecibido;
  bit bitanterior=1;
  byte x; /*cualquier numero que vaya a recibir */
  
 	do
 		:: get((_pid-1),m)==0 ->
		/* si aun no todos los receptores han recibido*/
			if :: flag < R ->
				/*si lee el mensaje por el canal de envio*/
				if :: env ? <MENS(x, bitrecibido)> ->
					/* si es un dato nuevo*/
					if :: bitanterior != bitrecibido -> 
						put((_pid-1),m,x);
						/* le digo que ese proceso es el ultimo*/ 
						idUltimo = _pid;
						/*activa la bandera para decir que ya recibio ese archivo*/
						bitanterior = bitrecibido
						/* crece el numero de receptores que recibieron el archivo*/
						flag++;
		              :: else
		         	
		      fi	
	      fi
			fi
	         	/*ultimo receptor*/
		:: get((_pid-1),m)!=0 ->
			
			if 	:: flag == R ->
				if :: idUltimo == _pid ->
					atomic{

						env ? MENS(x, bitrecibido);	
						m++;
						flag = 0;
						conf ! CNF(bitrecibido);
					}
					::else -> skip;
				fi	    	
		  fi    	
		         		
         
			
		:: fallado == 1 -> goto recfalla 
	od;
	recfalla: skip
}


/* Emulador de fallas */

/*
active proctype demonio () {
	do
		:: conf ? _ ,_ , _
		:: env ? _ , _
	od

}
*/

/* Propiedades sin el demonio */
/* Si un elemento se Envia, finalmente llega a cualquier operador */
ltl c1 { [] (env?[MENS(file[elems],_)]) -> X<>(conf?[CNF(_)])  }
/* llega un momento en el que todo el archivo se ha enviado, ya que siempre que mi elems arranca en 0 y los va entregando a los receptores, entonces en algun momento aumentara al ultimo indice del archivo*/
ltl c2 { [](elems == 0) -> X<>(elems == 3) }
/* Cualquier receptor recibe los elementos en orden */
ltl c3 { [](elems > 0) -> (get(0,elems) == get(1,elems) )   }
/* Si el emisor va a enviar un elemento del archivo, todos los receptores ya recibieron los elementos anteriores.
	explicacion : la unica forma de que el un elemento de mi archivo sea 0 es por que ya todos recibieron los archivos aterioires y antes de crecer el indice lo pongo en 0
	asi emulo que cuando ya todos reciben un archivo lo quito del emisor
 */
ltl c4 { [](env?[MENS(file[3],_)]) -> (file[2] == 0) }
/* No necesariamente el receptor numero cero recibe siempre el elemento actual antes que el receptor numero 1*/


