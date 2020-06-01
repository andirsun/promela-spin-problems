#define NT	2
#define NC	3
mtype = { rojo, verde, cruza, arriba, abajo };

chan sem   = [1] of { mtype };/* Solo puede ir un dato de typo mtype*/ 
chan valla   = [1] of { mtype };
byte trenCruzando=0;/* Para despues las pruebas*/
byte carCruzando=0; /* Para despues las pruebas*/
/*[NT] significa que hay 2 procesos trenes NT=2 y se identifica con el _pid del proceso*/
active [NT] proctype train()
/*la variable _pid que su valor es el identificador del proceso que esta ejecutando en este momento 0,1,2,3 etc*/
{ assert(_pid >= 0 && _pid < NT); 
	do
	:: sem?? verde -> /*si hay verde en el canal, lo lee sino y de una vez lo elimina para que no entre otro tren, se bloquea*/
	 assert(trenCruzando == 0) /*si va cruzar un tren es por que no hay trenes cruzando*/
	 trenCruzando ++;
     printf("tren %d cruza\n", _pid);     
     trenCruzando --;
     sem!rojo;/*pongo es semaforo en rojo*/

	od
}

active [NC] proctype carro()
{ mtype pos
	do
	:: valla??arriba  -> /*pregunta si la vaya esta arriba*/
	assert(carCruzando == 0);
	carCruzando ++;
     printf("carro %d cruza\n", _pid % NC);     
     carCruzando --;
     valla!abajo;    
	od
}
active proctype cruce()
{ 
	do
	:: sem!verde  -> /*mando el mensaje del semoforo en verde*/	
		sem?? rojo; /*espero a que me responda el semaforo en rojo que lo setea el tren cuando pasa*/
	:: valla!arriba ->
	   valla??abajo
	od
}
active proctype test() {
   assert (carCruzando == 0 || trenCruzando == 0)
   }

