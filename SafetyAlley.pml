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
	inAlley[_pid] ->
alley:
	if
	::	_pid >= 4 -> counter++;
	::	_pid < 4 -> counter--;
					counterCC--;
	fi;
	exit[_pid] = true;
	od;
}

active proctype EnterExit() {
	int i = 0;
	do
	::
		if
		:: enter[i] ->  if
					   	:: (i < 4 && counter < 0)   -> 	counterCC--;
														counter--;
														inAlley[i] = true;
														enter[i] = false;
						:: (i >= 4 && counter > 0)  ->	counter++;
														inAlley[i] = true;
														enter[i] = false;
						:: (i >= 4 && mutex == 1)	->	mutex = 0;
														counter++;
														inAlley[i] = true;
														enter[i] = false;				   	
						:: (i < 4 && mutexCC == 1)	->	mutexCC = 0;
														if
														:: (counterCC == 0 && mutex == 1)	->						counterCC--;
																	mutex = 0;
														:: else ->	counterCC--;
														fi;
														mutexCC = 1;
														counter--;
														inAlley[i] = true;
														enter[i] = false;
						fi;

		:: exit[i] -> 	inAlley[i] = false;
						exit[i] = false;
						if
						:: i < 4 ->		counter++;
										counterCC++;
						:: i >= 4 ->		counter--;
						fi;

						if
						:: counter == 0 -> mutex = 1;
						fi;
		:: else -> skip;
		fi;
	i = (i+1) % N;
	od;
}

ltl fair {[] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley) ) }