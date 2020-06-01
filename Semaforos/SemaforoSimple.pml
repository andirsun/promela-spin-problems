#define maxtiempo 50   /* del reloj  */
#define T 2   /* tiempo del semáforo  */
byte tictac = 0;   /* el tictac del reloj  */
byte alarma = 0;  /* tiempo en el que se pone la alarma  */
mtype {ring}
mtype {rojo,amarillo,verde,cambio}
chan rc = [0] of {mtype};    /*  canal del reloj  */
chan sem = [0] of {mtype};
mtype ciclo[4] = {rojo,amarillo,verde,amarillo};
byte estado;      /* estado del semáforo. arranca en rojo   */

proctype semaforo() {
   do :: sem?cambio -> 
           estado = (estado + 1) % 4
   od
   }
 
proctype control() {
   do :: rc?ring ->
         printf("cambio de %e a %e \n", ciclo[estado],ciclo[(estado + 1)%4])
         sem!cambio
   od
 }
 
 /*   el reloj  */
 
 proctype reloj(byte espera) {  /* espera = cada cuánto se dispara la alarma  */
  alarma = espera;
  do  ::(alarma  < maxtiempo) ->
          atomic{   tictac == alarma ->   /* despertar al usuario ? */
                  rc!ring;               /* si, despiértelo */
                  alarma = tictac + espera;  }  /* reprograme la alarma */
      :: (alarma >= maxtiempo) -> /* si llega al máximo, vuelva y arranque  */
              alarma = espera;
              tictac != alarma
  od
}

proctype MonitorReloj() {
	do :: timeout -> 
          if :: (tictac < maxtiempo)->
                      tictac = tictac +1;
		     :: (tictac >= maxtiempo) -> tictac = 0;
		  fi
	od  
}

init
{ 
  atomic{ run reloj(T);  
          run MonitorReloj(); 
          run control();
          run semaforo()
        }
 }
  
  ltl c1 {[](ciclo[estado]==verde -> <> (ciclo[estado]==rojo))}
  
  
  ltl c2 {[]((ciclo[estado]==verde) && X!(ciclo[estado]==verde) 
              -> X( (ciclo[estado]==amarillo) U (ciclo[estado]==rojo)) )}
              
  ltl c3 {[]<>(ciclo[estado]==verde) && []<>(ciclo[estado]==rojo)}