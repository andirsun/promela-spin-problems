/* numero de receptores */
# define R 2
/* número de reintentos antes de acabar */	
# define M 4;
/* tamaño del archivo  */
# define N 4;       
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


/* Metodos */
active proctype Emisor () {
	byte cont = 0; /*contador de reintentos*/
	/*
		flag describe cuantos receptores han confirmado su dato,
		si ya al enviar un dato, todos los receptores confirman el envio,
		entonces flag == R por ende puedo enviar el otro dato
	*/
	byte flag = 0;
	/* para saber si lo envio con fallas o sin fallas*/
	bit bitenvio=0;
	bit bitrecibido;
	do	
		/* si ya se enviaron todos los datos*/
		:: elems == N ->
			/* Y si ya todos confirmaron*/
			if:: flag==R ->
				goto transferirOK;
				
			  ::else -> skip
			fi
		 
		/* Si aun no ha enviado todos los elementos O si ya envio todos los elementos pero no todos han confirmado el ultimo elemento */
		:: elems < N  ->
			
			/* Si aun no han recibido todos el archivo*/
			if  :: flag < R ->
				printf("valor del flag %d ",flag);
				/* envia el mensaje al los receptores*/
				if :: env ! MENS(file[elems], bitenvio) ->
					
					/* se queda leyendo la respuesta */
					if:: conf ? CNF(bitrecibido) ->
						bitenvio = 1 - bitenvio;
						printf("me contestaron, voy a aumentar el flag");
						flag++;
					  :: timeout -> printf("me estalle");
					  						
					fi
				fi
				
			
				/* si el flag ya indica que todos los receptores recibieron ese dato*/
				::else -> 
				printf("ya me confirmaron entonces crecere elemento");
				flag = 0;
				elems++;
			fi 
		/* el contador de reintentos ya se copo */
		:: cont == M -> goto emisorfalla;
	
	od
	
	transferirOK: printf("Termine de transferir todos los archivos");
	/* marcador para saber cuando falla el recepto */
	emisorfalla: fallado = 1
}


active [ R ] proctype Receptor () {
	
	bit bitrecibido;
  	bit bitanterior=1;
  	byte x; /*cualquier numero que vaya a recibir */
  	/* Arreglo donde va a guardar el archivo*/
  	int miArch [4] ;
  	/*indice de donde voy a guardar los nuevos datos en mi arreglo*/   
  	byte m=0;
 	do
  	 	/*si lee el mensaje por el canal de envio*/
		:: env ? MENS(x, bitrecibido) ->
			/* si es un dato nuevo*/
			bitanterioir = bitrecibido;
			if :: bitanterior != bitrecibido -> 
				miArch[m] = x;
				m++;
				/*activa la bandera para decir que ya recibio ese archivo*/
				bitanterior = bitrecibido
            	
            	:: else
         	
         	fi
         	/* envia la confirmacion*/
         	printf("confirma recibido");
         	conf ! CNF(bitrecibido)
         	
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