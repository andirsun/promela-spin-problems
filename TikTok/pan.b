	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM c5 */
;
		;
		;
		;
		;
		
	case 5: // STATE 10
		goto R999;
;
		;
		;
		;
		;
		;
		;
		
	case 9: // STATE 22
		goto R999;
;
		
	case 10: // STATE 28
		goto R999;
;
		;
		;
		
	case 12: // STATE 38
		goto R999;
;
		;
		;
		;
		;
		
	case 15: // STATE 48
		goto R999;

	case 16: // STATE 57
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
		;
		
	case 19: // STATE 10
		goto R999;
;
		;
		;
		
	case 21: // STATE 18
		goto R999;

	case 22: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c3 */
;
		;
		;
		
	case 24: // STATE 3
		goto R999;
;
		;
		;
		
	case 26: // STATE 13
		goto R999;

	case 27: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM cc */
;
		
	case 28: // STATE 1
		goto R999;

	case 29: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c1_3 */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 34: // STATE 20
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c1_1 */
;
		;
		;
		;
		
	case 37: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM c1 */
;
		;
		;
		;
		
	case 40: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC elTock */

	case 41: // STATE 1
		;
		_m = unsend(now.rec);
		;
		goto R999;

	case 42: // STATE 2
		;
		XX = 1;
		unrecv(now.env, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 43: // STATE 3
		;
		_m = unsend(now.rec);
		;
		goto R999;

	case 44: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC elTick */

	case 45: // STATE 1
		;
		_m = unsend(now.rec);
		;
		goto R999;

	case 46: // STATE 2
		;
		XX = 1;
		unrecv(now.env, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 47: // STATE 3
		;
		_m = unsend(now.rec);
		;
		goto R999;

	case 48: // STATE 7
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC servidor */

	case 49: // STATE 1
		;
		XX = 1;
		unrecv(now.rec, XX-1, 0, 1, 1);
		unrecv(now.rec, XX-1, 1, 0, 0);
		;
		;
		goto R999;

	case 50: // STATE 2
		;
		_m = unsend(now.env);
		;
		goto R999;

	case 51: // STATE 3
		;
		XX = 1;
		unrecv(now.rec, XX-1, 0, 1, 1);
		unrecv(now.rec, XX-1, 1, 1, 0);
		;
		;
		goto R999;

	case 52: // STATE 4
		;
		_m = unsend(now.env);
		;
		goto R999;

	case 53: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;
	}

