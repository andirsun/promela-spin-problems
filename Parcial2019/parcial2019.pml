mtype {ok}
#define NC 2 /*define el numero de consumidores*/
chan env = [2] of {mtype,bit}      /* canal para envío o recepcion   */
chan rec = [2] of {mtype,bit}   /* canal de confirmación   */ 


active proctype productor() {
	/* id de cualquier consumidor*/
	int consumerId; 
	/*mensaje que se va a producir*/
	int m;
	/*BUsca en la cabeza del canal de recepcion el primer componente ok y el segundo componente bit 0 o 1 tambien se podria escribir rec?ok,0*/
	do 
		
		/* 
      		si recibió el anterior, entonces modifica el mensaje
      		y en via ese nuevo mensaje por el canal 
      	*/
      	:: rec?ok(consumerId) ->   
      		m = (m + 1);
            env!m(consumerId);
            printf("le estoy confirmando al consumidor %d  \n", consumerId); 
            
      	/*
      		si no recibe el mensaje entonces, reenvíe el anterior
      		pero tener en cuenta que envia el mismo mensaje que 
      		no llego, ya que ese fue el que capturo el caido, asi que
      		reenvia el que no llego
      	*/
      	/**:: trate?deNuevo ->     
               en!envio(m);**/
	od
}

active [NC] proctype consumidor(){
	int c
	
	rec!ok(_pid); /*quiero que me produzca a mi*/
	/*revisa si en el canal de envio en la cabeza hay un tik y si es asi envia una confirmacion al servidor con su bit 0*/
	do 
		:: env?c(_pid) -> rec!ok(_pid); 
		printf(" Soy  %d y le estoy pidiendo al prductor \n", _pid);  
		
	od  
}


