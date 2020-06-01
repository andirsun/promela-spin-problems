#define maxtiempo 10  /* duracion max del reloj  */
/* el tictac del reloj  */
byte tictac = 0;   
/* tiempo en el que se pone la alarma  */
byte alarma = 0;  
/* Numero de bits que han sonado*/
byte bips;
mtype {ring,bip}
chan rc = [0] of {mtype}

proctype cpu(byte espera) {  /* espera = cada cuánto se dispara la alarma  */
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

proctype usuario() {
  do :: rc?ring -> bips = bips + 1;
  od
}
init {  atomic{ run cpu(1);  run MonitorReloj(); run usuario(); } }