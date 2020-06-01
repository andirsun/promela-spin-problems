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

		 /* CLAIM c5 */
	case 3: // STATE 1 - _spin_nvr.tmp:84 - [(env?[tick])] (0:0:0 - 1)
		
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
		if (!((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:89 - [(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:90 - [(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0])))] (17:0:0 - 1)
		
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
		reached[9][10] = 1;
		if (!((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0]))))(0, 11, 17) */
		reached[9][11] = 1;
		spin_assert( !((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !((( !(Q_has(env, 1, 3, 0, 0))&& !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 18, 17) */
		reached[9][18] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 13 - _spin_nvr.tmp:91 - [((!(env??[tick])&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!(( !(Q_has(now.env, 1, 3, 0, 0))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 15 - _spin_nvr.tmp:92 - [(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 20 - _spin_nvr.tmp:96 - [(!(rec?[ok,0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][20] = 1;
		if (!( !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 22 - _spin_nvr.tmp:97 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (25:0:0 - 1)
		
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
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!((!(!(env?[tick]))&&!(rec?[ok,0]))))(0, 23, 25) */
		reached[9][23] = 1;
		spin_assert( !(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !(( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3)))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 26, 25) */
		reached[9][26] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 28 - _spin_nvr.tmp:101 - [(!(!(env?[tick])))] (33:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][28] = 1;
		if (!( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))))
			continue;
		/* merge: assert(!(!(!(env?[tick]))))(0, 29, 33) */
		reached[9][29] = 1;
		spin_assert( !( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))), " !( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))))", II, tt, t);
		/* merge: .(goto)(0, 34, 33) */
		reached[9][34] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 11: // STATE 36 - _spin_nvr.tmp:106 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		reached[9][36] = 1;
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 38 - _spin_nvr.tmp:107 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (45:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported38 = 0;
			if (verbose && !reported38)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported38 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][38] = 1;
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!((!(!(env?[tick]))&&!(rec?[ok,0]))))(0, 39, 45) */
		reached[9][39] = 1;
		spin_assert( !(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !(( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3)))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 46, 45) */
		reached[9][46] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 41 - _spin_nvr.tmp:108 - [(!(rec?[ok,0]))] (0:0:0 - 1)
		
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
		reached[9][41] = 1;
		if (!( !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 43 - _spin_nvr.tmp:109 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported43 = 0;
			if (verbose && !reported43)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported43 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][43] = 1;
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 48 - _spin_nvr.tmp:113 - [(!(!(env?[tick])))] (53:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported48 = 0;
			if (verbose && !reported48)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported48 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][48] = 1;
		if (!( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))))
			continue;
		/* merge: assert(!(!(!(env?[tick]))))(0, 49, 53) */
		reached[9][49] = 1;
		spin_assert( !( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))), " !( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))))", II, tt, t);
		/* merge: .(goto)(0, 54, 53) */
		reached[9][54] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 16: // STATE 57 - _spin_nvr.tmp:118 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported57 = 0;
			if (verbose && !reported57)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported57 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[9][57] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c4 */
	case 17: // STATE 1 - _spin_nvr.tmp:65 - [(env?[tick])] (0:0:0 - 1)
		
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
		if (!((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 8 - _spin_nvr.tmp:70 - [((!(env??[tick])&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!(( !(Q_has(now.env, 1, 3, 0, 0))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 10 - _spin_nvr.tmp:71 - [(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0])))] (13:0:0 - 1)
		
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
		reached[8][10] = 1;
		if (!((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!(((!(env??[tick])&&!(!(env?[tick])))&&!(rec?[ok,0]))))(0, 11, 13) */
		reached[8][11] = 1;
		spin_assert( !((( !(Q_has(now.env, 1, 3, 0, 0))&& !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !((( !(Q_has(env, 1, 3, 0, 0))&& !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 14, 13) */
		reached[8][14] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 16 - _spin_nvr.tmp:75 - [(!(rec?[ok,0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported16 = 0;
			if (verbose && !reported16)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported16 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][16] = 1;
		if (!( !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 18 - _spin_nvr.tmp:76 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (21:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][18] = 1;
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!((!(!(env?[tick]))&&!(rec?[ok,0]))))(0, 19, 21) */
		reached[8][19] = 1;
		spin_assert( !(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !(( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3)))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 22, 21) */
		reached[8][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 22: // STATE 25 - _spin_nvr.tmp:80 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported25 = 0;
			if (verbose && !reported25)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported25 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c3 */
	case 23: // STATE 1 - _spin_nvr.tmp:50 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 3 - _spin_nvr.tmp:51 - [(((!(!(env?[tick]))&&!(env?[tick]))&&!(rec?[ok,0])))] (8:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][3] = 1;
		if (!((( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!(((!(!(env?[tick]))&&!(env?[tick]))&&!(rec?[ok,0]))))(0, 4, 8) */
		reached[7][4] = 1;
		spin_assert( !((( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !((( !( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3)))&& !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3)))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 9, 8) */
		reached[7][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 11 - _spin_nvr.tmp:56 - [(!(rec?[ok,0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][11] = 1;
		if (!( !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - _spin_nvr.tmp:57 - [((!(env?[tick])&&!(rec?[ok,0])))] (16:0:0 - 1)
		
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
		if (!(( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		/* merge: assert(!((!(env?[tick])&&!(rec?[ok,0]))))(0, 14, 16) */
		reached[7][14] = 1;
		spin_assert( !(( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))), " !(( !((q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))&& !((q_len(rec) > 0 \
		&& qrecv(rec, 0, 0, 0) == 1 \
		&& qrecv(rec, 0, 1, 0) == 0))))", II, tt, t);
		/* merge: .(goto)(0, 17, 16) */
		reached[7][17] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 20 - _spin_nvr.tmp:61 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM cc */
	case 28: // STATE 1 - _spin_nvr.tmp:41 - [(!((!(env??[tick])||env?[tick])))] (6:0:0 - 1)
		
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
		if (!( !(( !(Q_has(now.env, 1, 3, 0, 0))||(q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))))
			continue;
		/* merge: assert(!(!((!(env??[tick])||env?[tick]))))(0, 2, 6) */
		reached[6][2] = 1;
		spin_assert( !( !(( !(Q_has(now.env, 1, 3, 0, 0))||(q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))), " !( !(( !(Q_has(env, 1, 3, 0, 0))||(q_len(env) > 0 \
		&& qrecv(env, 0, 0, 0) == 3))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[6][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: // STATE 10 - _spin_nvr.tmp:46 - [-end-] (0:0:0 - 1)
		
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

		 /* CLAIM c1_3 */
	case 30: // STATE 1 - _spin_nvr.tmp:25 - [(!(env?[tock]))] (0:0:0 - 1)
		
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
		if (!( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 3 - _spin_nvr.tmp:26 - [(!(env?[tick]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][3] = 1;
		if (!( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 10 - _spin_nvr.tmp:31 - [(!(env?[tock]))] (0:0:0 - 1)
		
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
		if (!( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 15 - _spin_nvr.tmp:35 - [(!(env?[tick]))] (0:0:0 - 1)
		
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
		reached[5][15] = 1;
		if (!( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 20 - _spin_nvr.tmp:37 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c1_1 */
	case 35: // STATE 1 - _spin_nvr.tmp:14 - [((!(!(env?[tick]))&&!(rec?[ok,0])))] (0:0:0 - 1)
		
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
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 8 - _spin_nvr.tmp:19 - [(!(rec?[ok,0]))] (0:0:0 - 1)
		
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
		reached[4][8] = 1;
		if (!( !((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 13 - _spin_nvr.tmp:21 - [-end-] (0:0:0 - 1)
		
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
		reached[4][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c1 */
	case 38: // STATE 1 - _spin_nvr.tmp:3 - [((!(!(env?[tick]))&&!((rec?[ok,0]||rec?[ok,1]))))] (0:0:0 - 1)
		
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
		if (!(( !( !((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 3)))&& !(((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)||(q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 8 - _spin_nvr.tmp:8 - [(!((rec?[ok,0]||rec?[ok,1])))] (0:0:0 - 1)
		
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
		reached[3][8] = 1;
		if (!( !(((q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 0)||(q_len(now.rec) > 0 \
		&& qrecv(now.rec, 0, 0, 0) == 1 \
		&& qrecv(now.rec, 0, 1, 0) == 1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		reached[3][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC elTock */
	case 41: // STATE 1 - tiktok.pml:16 - [rec!ok,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.rec))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rec, 0, 1, 1, 2);
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 2 - tiktok.pml:17 - [env?tock] (0:0:0 - 1)
		reached[2][2] = 1;
		if (q_len(now.env) == 0) continue;

		XX=1;
		if (2 != qrecv(now.env, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.env-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.env, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.env);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 43: // STATE 3 - tiktok.pml:17 - [rec!ok,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.rec))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rec, 0, 1, 1, 2);
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 7 - tiktok.pml:18 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC elTick */
	case 45: // STATE 1 - tiktok.pml:12 - [rec!ok,0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.rec))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rec, 0, 1, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 46: // STATE 2 - tiktok.pml:13 - [env?tick] (0:0:0 - 1)
		reached[1][2] = 1;
		if (q_len(now.env) == 0) continue;

		XX=1;
		if (3 != qrecv(now.env, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.env-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.env, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.env);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 3 - tiktok.pml:13 - [rec!ok,0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.rec))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.rec, 0, 1, 0, 2);
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 7 - tiktok.pml:14 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC servidor */
	case 49: // STATE 1 - tiktok.pml:7 - [rec?ok,0] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_len(now.rec) == 0) continue;

		XX=1;
		if (1 != qrecv(now.rec, 0, 0, 0)) continue;
		if (0 != qrecv(now.rec, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.rec-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.rec, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 50: // STATE 2 - tiktok.pml:7 - [env!tick] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.env))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.env);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.env, 0, 3, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 3 - tiktok.pml:8 - [rec?ok,1] (0:0:0 - 1)
		reached[0][3] = 1;
		if (q_len(now.rec) == 0) continue;

		XX=1;
		if (1 != qrecv(now.rec, 0, 0, 0)) continue;
		if (1 != qrecv(now.rec, 0, 1, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.rec-1))->_t] != 2)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.rec, XX-1, 1, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.rec);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 4 - tiktok.pml:8 - [env!tock] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (q_full(now.env))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.env);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.env, 0, 2, 0, 1);
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 8 - tiktok.pml:10 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
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

