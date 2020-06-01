	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM c9 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c8 */
;
		;
		;
		;
		;
		;
		;
		
	case 8: // STATE 15
		goto R999;

	case 9: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c7 */
;
		;
		;
		;
		;
		;
		;
		
	case 13: // STATE 15
		goto R999;
;
		
	case 14: // STATE 21
		goto R999;
;
		;
		;
		
	case 16: // STATE 31
		goto R999;
;
		;
		;
		;
		;
		
	case 19: // STATE 41
		goto R999;

	case 20: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM cg */
;
		;
		;
		;
		;
		;
		;
		
	case 24: // STATE 15
		goto R999;

	case 25: // STATE 22
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c5 */
;
		;
		;
		;
		
	case 28: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c4 */
;
		;
		;
		;
		
	case 31: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c3 */
;
		
	case 32: // STATE 1
		goto R999;

	case 33: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c2 */
;
		
	case 34: // STATE 1
		goto R999;

	case 35: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c1 */
;
		
	case 36: // STATE 1
		goto R999;

	case 37: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c0 */
;
		
	case 38: // STATE 1
		goto R999;

	case 39: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 40: // STATE 1
		;
		_m = unsend(now.turno);
		;
		goto R999;

	case 41: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC eljuez */

	case 42: // STATE 1
		;
		XX = 1;
		unrecv(now.juez, XX-1, 0, ((int)((P1 *)this)->j), 1);
		unrecv(now.juez, XX-1, 1, ((P1 *)this)->a, 0);
		unrecv(now.juez, XX-1, 2, ((P1 *)this)->b, 0);
		((P1 *)this)->j = trpt->bup.ovals[0];
		((P1 *)this)->a = trpt->bup.ovals[1];
		((P1 *)this)->b = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 43: // STATE 3
		;
		((P1 *)this)->r1 = trpt->bup.ovals[1];
		((P1 *)this)->_5_1_k = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 45: // STATE 5
		;
		((P1 *)this)->_5_1_k = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 6
		;
	/* 1 */	((P1 *)this)->a = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->_5_1_k = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 47: // STATE 7
		;
		((P1 *)this)->r1 = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 16
		;
		((P1 *)this)->r2 = trpt->bup.ovals[1];
		((P1 *)this)->_5_2_k = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 50: // STATE 18
		;
		((P1 *)this)->_5_2_k = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 19
		;
	/* 1 */	((P1 *)this)->b = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->_5_2_k = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 52: // STATE 20
		;
		((P1 *)this)->r2 = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 29
		;
		((P1 *)this)->r3 = trpt->bup.ovals[1];
		((P1 *)this)->_5_3_k = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 55: // STATE 31
		;
		((P1 *)this)->_5_3_k = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 32
		;
	/* 0 */	((P1 *)this)->_5_3_k = trpt->bup.oval;
		;
		;
		goto R999;

	case 57: // STATE 33
		;
		((P1 *)this)->r3 = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 42
		;
		((P1 *)this)->r4 = trpt->bup.ovals[1];
		((P1 *)this)->_5_4_k = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 60: // STATE 44
		;
		((P1 *)this)->_5_4_k = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 45
		;
	/* 0 */	((P1 *)this)->_5_4_k = trpt->bup.oval;
		;
		;
		goto R999;

	case 62: // STATE 46
		;
		((P1 *)this)->r4 = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 55
		;
		((P1 *)this)->gana = trpt->bup.ovals[4];
	/* 3 */	((P1 *)this)->r4 = trpt->bup.ovals[3];
	/* 2 */	((P1 *)this)->r3 = trpt->bup.ovals[2];
	/* 1 */	((P1 *)this)->r2 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->r1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 64: // STATE 56
		;
	/* 3 */	((P1 *)this)->r4 = trpt->bup.ovals[3];
	/* 2 */	((P1 *)this)->r3 = trpt->bup.ovals[2];
	/* 1 */	((P1 *)this)->r2 = trpt->bup.ovals[1];
	/* 0 */	((P1 *)this)->r1 = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 65: // STATE 57
		;
		((P1 *)this)->gana = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 59
		;
		((P1 *)this)->gana = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 62
		;
		_m = unsend(now.ac);
		;
		goto R999;

	case 68: // STATE 66
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC jugador */
;
		;
		
	case 70: // STATE 2
		;
		XX = 1;
		unrecv(now.turno, XX-1, 0, ((int)((P0 *)this)->_pid), 1);
		;
		;
		goto R999;

	case 71: // STATE 3
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 5
		;
		((P0 *)this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 74: // STATE 12
		;
		((P0 *)this)->b = trpt->bup.ovals[1];
		((P0 *)this)->a = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 75: // STATE 13
		;
		now.elTrique[ Index(((((P0 *)this)->a*3)+((P0 *)this)->b), 9) ] = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 14
		;
		now.jugadas = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 15
		;
		_m = unsend(now.juez);
		;
		goto R999;

	case 78: // STATE 24
		;
		XX = 1;
		unrecv(now.ac, XX-1, 0, ((int)now.ganador), 1);
		now.ganador = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 80: // STATE 26
		;
		_m = unsend(now.turno);
		;
		goto R999;

	case 81: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;
	}

