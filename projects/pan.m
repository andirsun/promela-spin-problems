#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM c9 */
	case 3: // STATE 1 - _spin_nvr.tmp:132 - [(!((!((ganador==3))||(jugadas==9))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][1] = 1;
		if (!( !(( !((((int)now.ganador)==3))||(((int)now.jugadas)==9)))))
			continue;
		/* merge: assert(!(!((!((ganador==3))||(jugadas==9)))))(0, 2, 6) */
		reached[12][2] = 1;
		spin_assert( !( !(( !((((int)now.ganador)==3))||(((int)now.jugadas)==9)))), " !( !(( !((ganador==3))||(jugadas==9))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[12][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:137 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[12][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c8 */
	case 5: // STATE 1 - _spin_nvr.tmp:114 - [(turno?[0])] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][1] = 1;
		if (!((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 8 - _spin_nvr.tmp:119 - [((!(turno?[0])&&!((turno?[1]||(ganador!=0)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][8] = 1;
		if (!(( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0))&& !(((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)||(((int)now.ganador)!=0))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 13 - _spin_nvr.tmp:123 - [(!((turno?[1]||(ganador!=0))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][13] = 1;
		if (!( !(((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)||(((int)now.ganador)!=0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 15 - _spin_nvr.tmp:124 - [((!(!(turno?[0]))&&!((turno?[1]||(ganador!=0)))))] (18:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][15] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !(((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)||(((int)now.ganador)!=0))))))
			continue;
		/* merge: assert(!((!(!(turno?[0]))&&!((turno?[1]||(ganador!=0))))))(0, 16, 18) */
		reached[11][16] = 1;
		spin_assert( !(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !(((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)||(((int)now.ganador)!=0))))), " !(( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0)))&& !(((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 1)||(ganador!=0)))))", II, tt, t);
		/* merge: .(goto)(0, 19, 18) */
		reached[11][19] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 22 - _spin_nvr.tmp:128 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[11][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c7 */
	case 10: // STATE 1 - _spin_nvr.tmp:79 - [(turno?[0])] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][1] = 1;
		if (!((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 8 - _spin_nvr.tmp:84 - [((!(turno?[0])&&!(turno?[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][8] = 1;
		if (!(( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - _spin_nvr.tmp:88 - [(!(turno?[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][13] = 1;
		if (!( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 15 - _spin_nvr.tmp:89 - [((!(!(turno?[0]))&&!(turno?[1])))] (18:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][15] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		/* merge: assert(!((!(!(turno?[0]))&&!(turno?[1]))))(0, 16, 18) */
		reached[10][16] = 1;
		spin_assert( !(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))), " !(( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0)))&& !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 1))))", II, tt, t);
		/* merge: .(goto)(0, 19, 18) */
		reached[10][19] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 21 - _spin_nvr.tmp:93 - [(!(!(turno?[0])))] (26:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][21] = 1;
		if (!( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))))
			continue;
		/* merge: assert(!(!(!(turno?[0]))))(0, 22, 26) */
		reached[10][22] = 1;
		spin_assert( !( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))), " !( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 27, 26) */
		reached[10][27] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 29 - _spin_nvr.tmp:98 - [((!(!(turno?[0]))&&!(turno?[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported29 = 0;
			if (verbose && !reported29)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported29 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][29] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 31 - _spin_nvr.tmp:99 - [((!(!(turno?[0]))&&!(turno?[1])))] (38:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported31 = 0;
			if (verbose && !reported31)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported31 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][31] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		/* merge: assert(!((!(!(turno?[0]))&&!(turno?[1]))))(0, 32, 38) */
		reached[10][32] = 1;
		spin_assert( !(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))), " !(( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0)))&& !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 1))))", II, tt, t);
		/* merge: .(goto)(0, 39, 38) */
		reached[10][39] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 34 - _spin_nvr.tmp:100 - [(!(turno?[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported34 = 0;
			if (verbose && !reported34)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported34 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][34] = 1;
		if (!( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 36 - _spin_nvr.tmp:101 - [((!(!(turno?[0]))&&!(turno?[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported36 = 0;
			if (verbose && !reported36)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported36 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][36] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 41 - _spin_nvr.tmp:105 - [(!(!(turno?[0])))] (46:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported41 = 0;
			if (verbose && !reported41)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported41 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][41] = 1;
		if (!( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))))
			continue;
		/* merge: assert(!(!(!(turno?[0]))))(0, 42, 46) */
		reached[10][42] = 1;
		spin_assert( !( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))), " !( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 47, 46) */
		reached[10][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 50 - _spin_nvr.tmp:110 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported50 = 0;
			if (verbose && !reported50)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported50 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[10][50] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM cg */
	case 21: // STATE 1 - _spin_nvr.tmp:61 - [(turno?[0])] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][1] = 1;
		if (!((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:66 - [((!(turno?[0])&&!(turno?[1])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][8] = 1;
		if (!(( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:70 - [(!(turno?[1]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][13] = 1;
		if (!( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 15 - _spin_nvr.tmp:71 - [((!(!(turno?[0]))&&!(turno?[1])))] (18:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][15] = 1;
		if (!(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))))
			continue;
		/* merge: assert(!((!(!(turno?[0]))&&!(turno?[1]))))(0, 16, 18) */
		reached[9][16] = 1;
		spin_assert( !(( !( !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 0)))&& !((q_len(now.turno) > 0 \
		&& qrecv(now.turno, 0, 0, 0) == 1)))), " !(( !( !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 0)))&& !((q_len(turno) > 0 \
		&& qrecv(turno, 0, 0, 0) == 1))))", II, tt, t);
		/* merge: .(goto)(0, 19, 18) */
		reached[9][19] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 22 - _spin_nvr.tmp:75 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported22 = 0;
			if (verbose && !reported22)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported22 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][22] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c5 */
	case 26: // STATE 1 - _spin_nvr.tmp:50 - [((!(!((elTrique[4]==1)))&&!((ganador==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !((((int)now.elTrique[4])==1)))&& !((((int)now.ganador)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 8 - _spin_nvr.tmp:55 - [(!((ganador==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !((((int)now.ganador)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 13 - _spin_nvr.tmp:57 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c4 */
	case 29: // STATE 1 - _spin_nvr.tmp:39 - [((!(!((((elTrique[0]==1)&&(elTrique[1]==1))&&(elTrique[2]==1))))&&!((ganador==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !((((((int)now.elTrique[0])==1)&&(((int)now.elTrique[1])==1))&&(((int)now.elTrique[2])==1))))&& !((((int)now.ganador)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 8 - _spin_nvr.tmp:44 - [(!((ganador==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!( !((((int)now.ganador)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 13 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c3 */
	case 32: // STATE 1 - _spin_nvr.tmp:30 - [(!((ganador!=3)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !((((int)now.ganador)!=3))))
			continue;
		/* merge: assert(!(!((ganador!=3))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !((((int)now.ganador)!=3))), " !( !((ganador!=3)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 33: // STATE 10 - _spin_nvr.tmp:35 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c2 */
	case 34: // STATE 1 - _spin_nvr.tmp:21 - [(!((ganador!=2)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !((((int)now.ganador)!=2))))
			continue;
		/* merge: assert(!(!((ganador!=2))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !((((int)now.ganador)!=2))), " !( !((ganador!=2)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c1 */
	case 36: // STATE 1 - _spin_nvr.tmp:12 - [(!((ganador!=1)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((((int)now.ganador)!=1))))
			continue;
		/* merge: assert(!(!((ganador!=1))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !((((int)now.ganador)!=1))), " !( !((ganador!=1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c0 */
	case 38: // STATE 1 - _spin_nvr.tmp:3 - [(!((ganador==0)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((((int)now.ganador)==0))))
			continue;
		/* merge: assert(!(!((ganador==0))))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !((((int)now.ganador)==0))), " !( !((ganador==0)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 40: // STATE 1 - trique.pml:77 - [turno!0] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.turno))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.turno);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.turno, 0, 0, 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 2 - trique.pml:77 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC eljuez */
	case 42: // STATE 1 - trique.pml:66 - [juez?j,a,b] (0:0:3 - 1)
		reached[1][1] = 1;
		if (q_len(now.juez) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->j);
		(trpt+1)->bup.ovals[1] = ((P1 *)this)->a;
		(trpt+1)->bup.ovals[2] = ((P1 *)this)->b;
		;
		((P1 *)this)->j = qrecv(now.juez, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("eljuez:j", ((int)((P1 *)this)->j));
#endif
		;
		((P1 *)this)->a = qrecv(now.juez, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("eljuez:a", ((P1 *)this)->a);
#endif
		;
		((P1 *)this)->b = qrecv(now.juez, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("eljuez:b", ((P1 *)this)->b);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.juez);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->j)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->a); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)this)->b); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 43: // STATE 2 - trique.pml:8 - [k = 0] (0:11:2 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_5_1_k);
		((P1 *)this)->_5_1_k = 0;
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_1_k));
#endif
		;
		/* merge: r1 = 1(11, 3, 11) */
		reached[1][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->r1);
		((P1 *)this)->r1 = 1;
#ifdef VAR_RANGES
		logval("eljuez:r1", ((int)((P1 *)this)->r1));
#endif
		;
		/* merge: .(goto)(0, 12, 11) */
		reached[1][12] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 44: // STATE 4 - trique.pml:9 - [(((k<3)&&(elTrique[((a*3)+k)]==j)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(((((int)((P1 *)this)->_5_1_k)<3)&&(((int)now.elTrique[ Index(((((P1 *)this)->a*3)+((int)((P1 *)this)->_5_1_k)), 9) ])==((int)((P1 *)this)->j)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 5 - trique.pml:9 - [k = (k+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->_5_1_k);
		((P1 *)this)->_5_1_k = (((int)((P1 *)this)->_5_1_k)+1);
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_1_k));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 6 - trique.pml:10 - [(((k<3)&&(elTrique[((a*3)+k)]!=j)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(((((int)((P1 *)this)->_5_1_k)<3)&&(((int)now.elTrique[ Index(((((P1 *)this)->a*3)+((int)((P1 *)this)->_5_1_k)), 9) ])!=((int)((P1 *)this)->j)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_1_k */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_5_1_k;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_5_1_k = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: a */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->a;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->a = 0;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 7 - trique.pml:10 - [r1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->r1);
		((P1 *)this)->r1 = 0;
#ifdef VAR_RANGES
		logval("eljuez:r1", ((int)((P1 *)this)->r1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 15 - trique.pml:14 - [k = 0] (0:24:2 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_5_2_k);
		((P1 *)this)->_5_2_k = 0;
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_2_k));
#endif
		;
		/* merge: r2 = 1(24, 16, 24) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->r2);
		((P1 *)this)->r2 = 1;
#ifdef VAR_RANGES
		logval("eljuez:r2", ((int)((P1 *)this)->r2));
#endif
		;
		/* merge: .(goto)(0, 25, 24) */
		reached[1][25] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 49: // STATE 17 - trique.pml:15 - [(((k<3)&&(elTrique[((k*3)+b)]==j)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!(((((int)((P1 *)this)->_5_2_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_2_k)*3)+((P1 *)this)->b), 9) ])==((int)((P1 *)this)->j)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 18 - trique.pml:15 - [k = (k+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->_5_2_k);
		((P1 *)this)->_5_2_k = (((int)((P1 *)this)->_5_2_k)+1);
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_2_k));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 19 - trique.pml:16 - [(((k<3)&&(elTrique[((k*3)+b)]!=j)))] (0:0:2 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		if (!(((((int)((P1 *)this)->_5_2_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_2_k)*3)+((P1 *)this)->b), 9) ])!=((int)((P1 *)this)->j)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_2_k */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->_5_2_k;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_5_2_k = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: b */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->b;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->b = 0;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 20 - trique.pml:16 - [r2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->r2);
		((P1 *)this)->r2 = 0;
#ifdef VAR_RANGES
		logval("eljuez:r2", ((int)((P1 *)this)->r2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 28 - trique.pml:20 - [k = 0] (0:37:2 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_5_3_k);
		((P1 *)this)->_5_3_k = 0;
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_3_k));
#endif
		;
		/* merge: r3 = 1(37, 29, 37) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->r3);
		((P1 *)this)->r3 = 1;
#ifdef VAR_RANGES
		logval("eljuez:r3", ((int)((P1 *)this)->r3));
#endif
		;
		/* merge: .(goto)(0, 38, 37) */
		reached[1][38] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 54: // STATE 30 - trique.pml:21 - [(((k<3)&&(elTrique[((k*3)+k)]==j)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		if (!(((((int)((P1 *)this)->_5_3_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_3_k)*3)+((int)((P1 *)this)->_5_3_k)), 9) ])==((int)((P1 *)this)->j)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 31 - trique.pml:21 - [k = (k+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->_5_3_k);
		((P1 *)this)->_5_3_k = (((int)((P1 *)this)->_5_3_k)+1);
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_3_k));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 32 - trique.pml:22 - [(((k<3)&&(elTrique[((k*3)+k)]!=j)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!(((((int)((P1 *)this)->_5_3_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_3_k)*3)+((int)((P1 *)this)->_5_3_k)), 9) ])!=((int)((P1 *)this)->j)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_3_k */  (trpt+1)->bup.oval = ((P1 *)this)->_5_3_k;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_5_3_k = 0;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 33 - trique.pml:22 - [r3 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->r3);
		((P1 *)this)->r3 = 0;
#ifdef VAR_RANGES
		logval("eljuez:r3", ((int)((P1 *)this)->r3));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 41 - trique.pml:27 - [k = 0] (0:50:2 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->_5_4_k);
		((P1 *)this)->_5_4_k = 0;
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_4_k));
#endif
		;
		/* merge: r4 = 1(50, 42, 50) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->r4);
		((P1 *)this)->r4 = 1;
#ifdef VAR_RANGES
		logval("eljuez:r4", ((int)((P1 *)this)->r4));
#endif
		;
		/* merge: .(goto)(0, 51, 50) */
		reached[1][51] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 59: // STATE 43 - trique.pml:28 - [(((k<3)&&(elTrique[((k*3)+((3-1)-k))]==j)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (!(((((int)((P1 *)this)->_5_4_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_4_k)*3)+((3-1)-((int)((P1 *)this)->_5_4_k))), 9) ])==((int)((P1 *)this)->j)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 44 - trique.pml:28 - [k = (k+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->_5_4_k);
		((P1 *)this)->_5_4_k = (((int)((P1 *)this)->_5_4_k)+1);
#ifdef VAR_RANGES
		logval("eljuez:k", ((int)((P1 *)this)->_5_4_k));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 45 - trique.pml:29 - [(((k<3)&&(elTrique[((k*3)+((3-1)-k))]!=j)))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!(((((int)((P1 *)this)->_5_4_k)<3)&&(((int)now.elTrique[ Index(((((int)((P1 *)this)->_5_4_k)*3)+((3-1)-((int)((P1 *)this)->_5_4_k))), 9) ])!=((int)((P1 *)this)->j)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _5_4_k */  (trpt+1)->bup.oval = ((P1 *)this)->_5_4_k;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->_5_4_k = 0;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 46 - trique.pml:29 - [r4 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->r4);
		((P1 *)this)->r4 = 0;
#ifdef VAR_RANGES
		logval("eljuez:r4", ((int)((P1 *)this)->r4));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 54 - trique.pml:69 - [(((((r1+r2)+r3)+r4)!=0))] (62:0:5 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!(((((((int)((P1 *)this)->r1)+((int)((P1 *)this)->r2))+((int)((P1 *)this)->r3))+((int)((P1 *)this)->r4))!=0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r1 */  (trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->r1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r2 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->r2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r3 */  (trpt+1)->bup.ovals[2] = ((P1 *)this)->r3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r4 */  (trpt+1)->bup.ovals[3] = ((P1 *)this)->r4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r4 = 0;
		/* merge: gana = j(0, 55, 62) */
		reached[1][55] = 1;
		(trpt+1)->bup.ovals[4] = ((int)((P1 *)this)->gana);
		((P1 *)this)->gana = ((int)((P1 *)this)->j);
#ifdef VAR_RANGES
		logval("eljuez:gana", ((int)((P1 *)this)->gana));
#endif
		;
		/* merge: .(goto)(0, 61, 62) */
		reached[1][61] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 64: // STATE 56 - trique.pml:70 - [((((((r1+r2)+r3)+r4)==0)&&(jugadas==(3*3))))] (0:0:4 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		if (!((((((((int)((P1 *)this)->r1)+((int)((P1 *)this)->r2))+((int)((P1 *)this)->r3))+((int)((P1 *)this)->r4))==0)&&(((int)now.jugadas)==(3*3)))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r1 */  (trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)this)->r1;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r1 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r2 */  (trpt+1)->bup.ovals[1] = ((P1 *)this)->r2;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r2 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r3 */  (trpt+1)->bup.ovals[2] = ((P1 *)this)->r3;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r3 = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r4 */  (trpt+1)->bup.ovals[3] = ((P1 *)this)->r4;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->r4 = 0;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 57 - trique.pml:70 - [gana = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->gana);
		((P1 *)this)->gana = 3;
#ifdef VAR_RANGES
		logval("eljuez:gana", ((int)((P1 *)this)->gana));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 59 - trique.pml:71 - [gana = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->gana);
		((P1 *)this)->gana = 0;
#ifdef VAR_RANGES
		logval("eljuez:gana", ((int)((P1 *)this)->gana));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 62 - trique.pml:73 - [ac!gana] (0:0:0 - 4)
		IfNotBlocked
		reached[1][62] = 1;
		if (q_full(now.ac))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ac);
		sprintf(simtmp, "%d", ((int)((P1 *)this)->gana)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ac, 0, ((int)((P1 *)this)->gana), 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 66 - trique.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC jugador */
	case 69: // STATE 1 - trique.pml:42 - [((ganador==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)now.ganador)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 2 - trique.pml:43 - [turno?eval(_pid)] (0:0:0 - 1)
		reached[0][2] = 1;
		if (q_len(now.turno) == 0) continue;

		XX=1;
		if (((int)((P0 *)this)->_pid) != qrecv(now.turno, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.turno-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.turno, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.turno);
		sprintf(simtmp, "%d", ((int)((P0 *)this)->_pid)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 71: // STATE 3 - trique.pml:44 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = 1;
#ifdef VAR_RANGES
		logval("jugador:i", ((P0 *)this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 4 - trique.pml:44 - [((i<(3*3)))] (7:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)this)->i<(3*3))))
			continue;
		/* merge: i = (i+1)(0, 5, 7) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->i;
		((P0 *)this)->i = (((P0 *)this)->i+1);
#ifdef VAR_RANGES
		logval("jugador:i", ((P0 *)this)->i);
#endif
		;
		/* merge: .(goto)(0, 8, 7) */
		reached[0][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 73: // STATE 10 - trique.pml:45 - [((elTrique[(i-1)]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.elTrique[ Index((((P0 *)this)->i-1), 9) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 11 - trique.pml:46 - [a = ((i-1)/3)] (0:13:2 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->a);
		((P0 *)this)->a = ((((P0 *)this)->i-1)/3);
#ifdef VAR_RANGES
		logval("jugador:a", ((int)((P0 *)this)->a));
#endif
		;
		/* merge: b = ((i-1)%3)(13, 12, 13) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)this)->b);
		((P0 *)this)->b = ((((P0 *)this)->i-1)%3);
#ifdef VAR_RANGES
		logval("jugador:b", ((int)((P0 *)this)->b));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 75: // STATE 13 - trique.pml:47 - [elTrique[((a*3)+b)] = (_pid+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.elTrique[ Index(((((int)((P0 *)this)->a)*3)+((int)((P0 *)this)->b)), 9) ]);
		now.elTrique[ Index(((((P0 *)this)->a*3)+((P0 *)this)->b), 9) ] = (((int)((P0 *)this)->_pid)+1);
#ifdef VAR_RANGES
		logval("elTrique[((jugador:a*3)+jugador:b)]", ((int)now.elTrique[ Index(((((int)((P0 *)this)->a)*3)+((int)((P0 *)this)->b)), 9) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 14 - trique.pml:48 - [jugadas = (jugadas+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.jugadas);
		now.jugadas = (((int)now.jugadas)+1);
#ifdef VAR_RANGES
		logval("jugadas", ((int)now.jugadas));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 15 - trique.pml:49 - [juez!(_pid+1),a,b] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_full(now.juez))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.juez);
		sprintf(simtmp, "%d", (((int)((P0 *)this)->_pid)+1)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->a)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->b)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.juez, 0, (((int)((P0 *)this)->_pid)+1), ((int)((P0 *)this)->a), ((int)((P0 *)this)->b), 3);
		_m = 2; goto P999; /* 0 */
	case 78: // STATE 24 - trique.pml:54 - [ac?ganador] (0:0:1 - 3)
		reached[0][24] = 1;
		if (q_len(now.ac) == 0) continue;

		XX=1;
		(trpt+1)->bup.oval = ((int)now.ganador);
		;
		now.ganador = qrecv(now.ac, XX-1, 0, 1);
#ifdef VAR_RANGES
		logval("ganador", ((int)now.ganador));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ac);
		sprintf(simtmp, "%d", ((int)now.ganador)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 79: // STATE 25 - trique.pml:55 - [((ganador==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((int)now.ganador)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 26 - trique.pml:55 - [turno!(1-_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (q_full(now.turno))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.turno);
		sprintf(simtmp, "%d", (1-((int)((P0 *)this)->_pid))); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.turno, 0, (1-((int)((P0 *)this)->_pid)), 0, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 81: // STATE 34 - trique.pml:59 - [-end-] (0:0:0 - 3)
		IfNotBlocked
		reached[0][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

