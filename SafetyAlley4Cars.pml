#define N 4

bool enter[N]; /* Flag if car wants to enter alley*/
bool inAlley[N]; /* Flag marking if a car is in the alley */
bool exit[N]; /* Flag if car wants to exit alley */
int co = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

int mutex = 1;
int mutexCC = 1;
int coCC = 0;


active [N] proctype SafetyAlley()
{
	do
	::
		skip; /*Dummy*/
entry:
	enter[_pid] = true;
	assert(co > (-3) && co < 3);
	inAlley[_pid] ->
alley:
	if
	::	_pid >= 2 -> 	assert(!inAlley[1] && !inAlley[0]);
						assert(co > (-3) && co < 3);
						exit[_pid] = true;

	::	_pid < 2 -> assert(!inAlley[2] && !inAlley[3]);
					assert(co > (-3) && co < 3);
					exit[_pid] = true;
	fi;
	(!inAlley[_pid]) ->
	od;
}

active proctype Alley() {
	int i = 0;
	do
	::
		if
		:: enter[i] ->  if
					   	:: (i < 2 && co < 0 && mutex == 0)   -> 	enter[i] = false;
																	coCC--;
																	co--;
																	inAlley[i] = true;
																	goto L1;

						:: (i >= 2 && co > 0 && mutex == 0)  ->		enter[i] = false;
																	co++;
																	inAlley[i] = true;
																	goto L1;

						:: (i >= 2 && mutex == 1 && co == 0)	->	enter[i] = false;
																	mutex = 0;
																	co++;
																	inAlley[i] = true;
																	goto L1;
				   	
						:: (i < 2 && mutexCC == 1)	->				mutexCC = 0;
																	if
																	:: (coCC == 0 && mutex == 1)	->	enter[i] = false;						
																										coCC--;
																										mutex = 0;
																										co--;
																										inAlley[i] = true;

																	:: (coCC < 0 && co < 0) ->			enter[i] = false;
																										coCC--;
																										co--;
																										inAlley[i] = true;
																	:: else -> skip;
																	fi;
																	mutexCC = 1;
																	goto L1;
						:: else -> skip;
						fi;
		:: exit[i] -> 	if
						:: i < 2 ->		co++;
										coCC++;
						:: i >= 2 ->	co--;
						fi;
						if
						:: (mutex == 0 && co == 0) -> 	mutex = 1;
														exit[i] = false;
						:: !(mutex == 0 && co == 0) -> 	exit[i] = false;
						fi;
						!exit[i] -> inAlley[i] = false;
		:: else -> skip;
		fi;
L1:
		assert(co > (-3) && co < 3);
		i = (i+1) % N;
	od;
}
//ltl fair {([] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley)) }
ltl complete {([] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley))) && ([] ((co == -2) -> <> (co == 2))) }
//ltl counter_liveness {[] ((co == -2) -> <> (co == 2)) }