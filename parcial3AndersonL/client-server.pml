/* numero de receptores */
# define R 3 	
/* Tipos de mensajes*/
mtype { MENS , CNF };
/* Canales */
chan conf = [1] of {mtype , bit }; /* canal del receptor al emisor */
chan env = [1] of {mtype , byte , bit }; /* canal del emisor al receptor */

/* Metodos */
active [ R ] proctype Receptor () {
}
active proctype Emisor () {
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