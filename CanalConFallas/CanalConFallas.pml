#define maximo 20
mtype {envio, confirme, deNuevo};
chan en = [1] of {mtype, int}; /* canal de envio */
chan cn = [1] of {mtype,int};     /* canal de confirmación */
chan trate = [0] of {mtype};   /* canal de reintento, síncrono */
active proctype enviar(){
   int m;
   do 
      /* 
      		si recibió el anterior, entonces modifica el mensaje
      		y en via ese nuevo mensaje por el canal 
      */
      :: cn?confirme(m) ->   
               m = (m + 1) % maximo;
               en!envio(m)
      /*
      		si no recibe el mensaje entonces, reenvíe el anterior
      		pero tener en cuenta que envia el mismo mensaje que 
      		no llego, ya que ese fue el que capturo el caido, asi que
      		reenvia el que no llego
      */
      :: trate?deNuevo ->     
               en!envio(m);
   od
   }
 
active proctype recibir(){
   int r;
   do 
      :: en?envio(r) ->         /*     si recibe, confirme   */
               cn!confirme(r)
   od
   }
   
 
active proctype caido(){        
	do 
   		/*
   			De vez en cuando este caido va a leer el mensaje mas
   			rapido que el recibir entonces lo coje y no hacer nada,
   			lo que genera que tanto la confirmacion como la recepcion
   			se bloqueen y emula un fallo
   		*/
		:: en?envio(_) ->
	od
   }
 
 
active proctype reintento(){  /*   si todo se bloquea,   reintente   */
   do 
   		/*
   			Cuando el canal de recibo y el de envio estan bloqueados
   			por un fallom entonces reintenta en mandarle a la funcion
   			de mandar para que reenvie de nuevo el mismo mensaje que no
   			llego
   		*/
      :: timeout -> trate!deNuevo
   od
   }
 
 /* si se envía un cero, se confirma después un cero */
   
   ltl c1 {[](en?[envio(0)] -> <> cn?[confirme(0)]) }