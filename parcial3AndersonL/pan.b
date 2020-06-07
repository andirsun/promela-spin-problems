	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM c6 */
;
		;
		
	case 4: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c5 */
;
		;
		
	case 6: // STATE 6
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
		
	case 9: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c3 */
;
		;
		;
		;
		
	case 12: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c2 */
;
		;
		;
		;
		
	case 15: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c1 */
;
		;
		
	case 17: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Receptor */
;
		;
		;
		;
		
	case 20: // STATE 3
		;
		XX = 1;
		((P1 *)this)->x = trpt->bup.ovals[0];
		((P1 *)this)->bitrecibido = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 21: // STATE 4
		;
	/* 0 */	((P1 *)this)->bitanterior = trpt->bup.oval;
		;
		;
		goto R999;

	case 22: // STATE 5
		;
		now.data[ Index((((((P1 *)this)->_pid-1)*4)+now.m), 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 6
		;
		now.idUltimo = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 7
		;
		((P1 *)this)->bitanterior = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 8
		;
		now.flag = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 29: // STATE 22
		;
		now.flag = trpt->bup.ovals[5];
		now.m = trpt->bup.ovals[4];
		now.file[ Index(now.elems, 4) ] = trpt->bup.ovals[3];
	/* 0 */	((P1 *)this)->x = trpt->bup.ovals[2];
		XX = 1;
		unrecv(now.env, XX-1, 0, 2, 1);
		unrecv(now.env, XX-1, 1, ((int)((P1 *)this)->x), 0);
		unrecv(now.env, XX-1, 2, ((int)((P1 *)this)->bitrecibido), 0);
		((P1 *)this)->x = trpt->bup.ovals[0];
		((P1 *)this)->bitrecibido = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 30: // STATE 23
		;
		_m = unsend(now.conf);
		;
		goto R999;
;
		;
		
	case 32: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Emisor */
;
		;
		;
		;
		
	case 35: // STATE 4
		;
		_m = unsend(now.env);
		;
		goto R999;

	case 36: // STATE 5
		;
	/* 0 */	((P0 *)this)->bitrecibido = trpt->bup.ovals[1];
		XX = 1;
		unrecv(now.conf, XX-1, 0, 1, 1);
		unrecv(now.conf, XX-1, 1, ((int)((P0 *)this)->bitrecibido), 0);
		((P0 *)this)->bitrecibido = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 37: // STATE 6
		;
		((P0 *)this)->bitenvio = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 7
		;
		now.elems = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 41: // STATE 10
		;
		now.cont = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 45: // STATE 26
		;
		now.fallado = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;
	}

