/* Anderson Laverde Gracia*/
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
/* contador de fallas*/
byte cont = 0; 


/* Metodos */

active proctype Emisor()
{
  bit bitenvio=0;
  bit bitrecibido;/*no se inicializa por que no sabe que va a recibir*/
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
  /*cualquier numero que vaya a recibir */
	byte x; 
  
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
	  	/*Si el elemento actual ya esta seteado, osea no esta vacio con 0*/
		:: get((_pid-1),m)!=0 ->
			/* si ya todos los receptores leyeron el dato del archivo*/
			if 	:: flag == R ->
				/* y si el que esta entrando es el ultimo que leyo el dato*/
				if :: idUltimo == _pid ->
					/* aca debe ir el atomic ya que el receptor que debe confirmar solo debe ser 1, y no puedo permitir que se metan mas*/
					atomic{
						/* leo y saco el mensaje del canal*/
						env ? MENS(x, bitrecibido);	
						/* pongo eldato del archivo en 0 (mi forma para validar el ltl 4 sin crear mas variables)*/
						file[elems]= 0;
						/* crezco el indice para meter en los arreglos */
						m++;
						/* pongo la bandera que me dice que renceptores han leido en 0 de nuevo ya que voy a leer un archivo nuevo*/
						flag = 0;
						/* mando el mensaje de confirmacion */
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
ltl c1 { [] (env?[MENS(file[0],_)]) -> <>(get(0,0) == file[0])  }
/* llega un momento en el que todo el archivo se ha enviado, ya que siempre que mi elems arranca en 0 y los va entregando a los receptores, entonces en algun momento aumentara al ultimo indice del archivo*/
ltl c2 { [](elems == 3) -> X<>(get(1,elems)!=0) }
/* Cualquier receptor recibe los elementos en orden, ya que comparo los arreglos internos*/
ltl c3 { [](elems > 0) -> (get(0,elems) == get(1,elems) )   }
/* Si el emisor va a enviar un elemento del archivo, todos los receptores ya recibieron los elementos anteriores.
	explicacion : la unica forma de que el un elemento de mi archivo sea 0 es por que ya todos recibieron los archivos aterioires y antes de crecer el indice lo pongo en 0
	asi emulo que cuando ya todos reciben un archivo lo quito del emisor
 */
ltl c4 { [](env?[MENS(file[3],_)]) -> (file[2] == 0) }
/* No necesariamente el receptor numero cero recibe siempre el elemento actual antes que el receptor numero 1
ex : saco de la base de datos el un elemento actual del receptor 1 y es diferente de 0, por lo que tiene algo guardado, y si veo el mismo elemento actual en el recepto 0 pues no lo tiene, as
*/
ltl c5 { <>((get(1,elems)!=0) -> (get(0,elems) == 0)) }

/* Si el sistema falla, el contador es igual a M (m´aximo n´umero de fallas): se debe cumplir. 
 si mi elems no llega a 3, quire decir que no se paso todo el archivo y eso significa que el sistema fallo ya que el contador de falla se igualo a M
*/
ltl c6 { <>( (fallado> 0) -> (cont == m) )}

