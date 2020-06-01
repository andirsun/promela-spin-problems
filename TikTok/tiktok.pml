mtype {tick,tock,ok}
chan env = [2] of {mtype}      /* canal para envío   */
chan rec = [2] of {mtype,bit}   /* canal de confirmación   */

active proctype servidor() {
   /*BUsca en la cabeza del canal de recepcion el primer componente ok y el segundo componente bit 0 o 1 tambien se podria escribir rec?ok,0*/
   do :: rec?ok(0) -> env!tick  /* si cliente cero confirmó el anterior */
      :: rec?ok(1) -> env!tock  /* si cliente uno confirmó el anterior */
   od
   }
active proctype elTick(){
rec!ok(0);
   do :: env?tick -> rec!ok(0)  od /*revisa si en el canal de envio en la cabeza hay un tik y si es asi envia una confirmacion al servidor con su bit 0*/ 
   }
active proctype elTock(){
rec!ok(1);
   do :: env?tock -> rec!ok(1)  od 
   }



  ltl c1 {[](env?[tick] -> <> (rec?[ok,0] || rec?[ok,1]))}
  ltl c1_1 {[](env?[tick]  -> <> (rec?[ok,0]))}
  
  ltl c1_3 {([]<>(env?[tick])) && ([]<>(env?[tock]))}
 
  ltl cc {[](env??[tick] -> env?[tick])}
  /*
  	siempre que en la cabeza del canale envio haya un tick, significa que
  	va a existir de nuevo el tick en la cabeza del canal, solo hasta que
  	el servidor reciba la confirmacion del tick 
  	FALSO : Puede quedarse el tock solamente enviando y recibiendo
  */
  ltl c3 {[](env?[tick] -> ((env?[tick]) U (rec?[ok,0]) ))}
  
  /*
  	Siempre en la cabeza de la cola de envio haya un tick y en la siguiente unidad
  	de tiempo ya no este en ningun lado de la cola,significa que no va a existir
  	el tick en la cabeza del canal de envio hasta que lo hayan recibido
  */
  ltl c4 {[]((env?[tick] && X !(env??[tick])) -> X(!(env?[tick]) U (rec?[ok,0])))}
  /*
   a diferencia de el anterior la W me dice que puede que rec?[ok,0] no ocurra
   y la de arriba si tiene que ocurrir, asi que cuando aparezca si pasa
   VERDADERO : 
  */
  ltl c5 {[]((env?[tick] && X !(env??[tick])) -> X(!(env?[tick]) W (rec?[ok,0])))}
  