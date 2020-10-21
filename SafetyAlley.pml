#define N 8

bool enter[N]; /* Flag if car wants to enter alley*/
bool inAlley[N]; /* Flag marking if a car is in the alley */
bool exit[N]; /* Flag if car wants to exit alley */
int counter = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

int mutex = 1;
int mutexCC = 1;
int counterCC = 0;


active [N] proctype SafetyAlley()
{
	do
	::
		skip; /*Dummy*/
entry:
	enter[_pid] = true;
	assert(counter > -5 && counter < 5);
	inAlley[_pid] ->
alley:
	if
	::	_pid >= 4 -> 	assert(!inAlley[3] && !inAlley[2] && !inAlley[1] && !inAlley[0]);
						assert(counter > (-5) && counter < 5);
						exit[_pid] = true;

	::	_pid < 4 -> assert(!inAlley[4] && !inAlley[5] && !inAlley[6] && !inAlley[7]);
					assert(counter > (-5) && counter < 5);
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
					   	:: (i < 4 && counter < 0)   -> 	enter[i] = false;
														counterCC--;
														counter--;
														inAlley[i] = true;
														goto L1; //Early out, to end current iteration of the loop

						:: (i >= 4 && counter > 0)  ->	enter[i] = false;
														counter++;
														inAlley[i] = true;
														goto L1;

						:: (i >= 4 && mutex == 1 && counter == 0)	->	enter[i] = false;
																		mutex = 0;
																		counter++;
																		inAlley[i] = true;
																		goto L1;
				   	
						:: (i < 4 && mutexCC == 1)	->	mutexCC = 0;
														if
														:: (counterCC == 0 && mutex == 1)	->	enter[i] = false;
																								counterCC--;
																								mutex = 0;
																								counter--;
																								inAlley[i] = true;

														:: (counterCC < 0 && counter < 0) ->	enter[i] = false;
																								counterCC--;
																								counter--;
																								inAlley[i] = true;
														:: else -> skip;
														fi;
														mutexCC = 1;
														goto L1;
						fi;
		:: exit[i] -> 	if
						:: i < 4 ->		counter++;
										counterCC++;
						:: i >= 4 ->		counter--;
						fi;
						inAlley[i] = false;
						if
						:: counter == 0 -> mutex = 1;
						fi;
						exit[i] = false;
		:: else -> skip;
		fi;
L1:
	assert(counter > (-5) && counter < 5);
	i = (i+1) % N;
	od;
}
//ltl fair {([] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley)) }
//ltl complete {([] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley))) && ([] ((counter == -5) -> <> (counter == 5))) }
//ltl counter_liveness {[] ((counter == -5) -> <> (counter == 5)) }
ltl nocrash {[] (inAlley[0] -> !inAlley[5])}