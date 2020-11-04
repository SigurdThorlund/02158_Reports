#define N 8

bool enter[N]; /* Flag if car wants to enter alley*/
bool inAlley[N]; /* Flag marking if a car is in the alley */
bool exit[N]; /* Flag if car wants to exit alley */
int counter = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

int mutex = 1;


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
	::	_pid > 3 -> counter++;
				assert(!inAlley[3]);
				assert(!inAlley[2]);
				assert(!inAlley[1]);
				assert(!inAlley[0]);
	::	_pid < 4 -> counter--;
				assert(!inAlley[4]);
				assert(!inAlley[5]);
				assert(!inAlley[6]);
				assert(!inAlley[7]);
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
					   	::	(mutex == 1 && counter == 0) -> mutex = 0;
															inAlley[i] = true;
						::	(i > 3 && counter > 0 && mutex == 0) -> inAlley[i] = true;
						::	(i < 4 && counter < 0 && mutex == 0) -> inAlley[i] = true;
						fi;
						enter[i] = false;
		:: exit[i] -> 	inAlley[i] = false;
						exit[i] = false;
						if
						:: i > 3 -> counter--;
						:: i < 4 -> counter++;
						fi;
						if
						:: counter == 0 -> mutex = 1;
						:: skip;
						fi;
		:: else -> skip;
		fi;
	i = (i+1) % N;
	od;
}

ltl fair {[] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley) ) }