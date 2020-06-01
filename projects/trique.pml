#define N 3
byte elTrique[N*N];

#define get(a,b) 	elTrique[((a)*N)+(b)]
#define put(a,b,c) 	elTrique[((a)*N)+(b)] = c

inline ganaFila(f,j,r) {   /* es ganador j en la fila f? */
  byte k=0;  r = true;
   do :: k < N && get(f,k) == j -> k++
      :: k < N && get(f,k) != j -> r = false ; break 
      :: else -> break
   od  }
inline ganaColumna(c,j,r) { /* es ganador j en la columna c? */
  byte k=0;  r = true;
  do :: k < N && get(k,c) == j -> k++
     :: k < N && get(k,c) != j -> r = false ; break 
     :: else -> break
   od  }
inline ganaDiag1(j,r) { /* es ganador j en diagonal 1 ? */
 byte k=0;  r = true;
  do :: k < N && get(k,k) == j -> k++  
     :: k < N && get(k,k) != j -> r = false ; break 
     :: else -> break
   od
    }
inline ganaDiag2(j,r) { /* es ganador j en diagonal 2 ? */
 byte k=0;  r = true;
   do :: k < N && get(k,(N-1)-k) == j -> k++ 
      :: k < N && get(k,(N-1)-k) != j -> r = false ; break 
      :: else -> break
   od
    }

byte jugadas = 0;    /* las jugadas que van   */
byte ganador;  /* 0=no, 1=el uno gana, 2=el dos, 3 = empate  */
chan turno = [1] of {pid};            /* jugador que tiene el turno  */
chan juez = [1] of {pid,byte,byte};   /* quien decide si hay ganador   */
chan ac = [1] of {byte};             /*  confirmación   */
active [2] proctype jugador(){
  int i;
  byte a,b;
  do :: ganador == 0 ->
        turno?eval(_pid) ->   /* me toca a mi ?  */
              do :: select (i : 1 .. N*N)  -> /* i es una posición cualquiera */
                    if :: elTrique[i-1] == 0 ->
                          a = (i-1) / N; b = (i-1) % N; /* i es la fila a, columna b */
                          put(a,b, (_pid + 1)); /* juega en esa posición */
                          jugadas ++;;
                          juez!(_pid + 1),a,b;  /* le avisa al juez */
                          break
                       :: else -> skip
                    fi
              od;
              ac?ganador ->  /* el juez anuncia ganador, si lo hay */
              if :: ganador == 0 -> turno!(1-_pid)
                 :: else ->  break
              fi
    od          
}

active proctype eljuez(){
int a,b;
byte j, gana;
bit r1,r2,r3,r4;
  do
    :: juez?j,a,b ->
          ganaFila(a,j,r1); ganaColumna(b,j,r2);
          ganaDiag1(j,r3);  ganaDiag2(j,r4);
          if :: (r1 + r2 + r3 + r4) != 0 ->  gana = j
             :: (r1 + r2 + r3 + r4) == 0 && (jugadas == N * N) -> gana = 3
             :: else -> gana = 0
          fi;
          ac!gana 
  od
 }
  
  init { turno!0}
  
  ltl c0 {[](ganador == 0)}  /* nunca hay ganador ? */
  ltl c1 {[](ganador != 1)} /* nunca gana el 1 ? */
  ltl c2 {[](ganador != 2)} /* nunca gana el 2 ? */
  ltl c3 {[](ganador != 3)} /* nunca hay empate ? */
  ltl c4 {[]((elTrique[0]==1 && elTrique[1]==1 && elTrique[2]==1 ) -> <> (ganador == 1))}
  ltl c5 {[]((elTrique[4]==1) -> <> (ganador == 1))} /* el que ponga en casilla del centro gana ?*/
  
  /* Los ganadores se turnan  */
  
  
ltl cg {[](turno?[0] && X(!(turno?[0])) -> X(!(turno?[0]) U turno?[1]))}
    
   
   
   /*  ... pero si no han ganado o hay tablas  , despues de que alguien juega puede que no hayan mas turnos ya quep udo haber ganado   */ 
    
ltl c7 {[](turno?[0] && X(!(turno?[0])) -> X(!(turno?[0]) W turno?[1]))}

/*     c8 debe funcionar?    */
  
ltl c8 {[](turno?[0] && X(!(turno?[0])) -> X(!(turno?[0]) U (turno?[1] || (ganador != 0))))}

ltl c9 {[](ganador == 3 -> jugadas == 9)}
  