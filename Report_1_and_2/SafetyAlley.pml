#define N 8

int counter = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

int mutex = 1;
int wait = 1;
int edit = 1;

bool inAlley[N];


inline P(mutex) { 
	atomic { 
		mutex > 0 -> mutex--;
		}
	}

inline V(mutex) { mutex++ }

active [N] proctype SafetyAlley()
{
	do
	::
		skip;
enter:
		if
		:: _pid < 4 ->		P(wait);
							P(edit);
							if
							:: counter < 0 -> 	counter--;
												V(wait);

							:: else ->			V(edit);
												P(mutex);
												V(wait);
												P(edit);
												counter--;
							fi;
		:: else ->			P(edit);
							if
							:: counter > 0 -> 	counter++;

							:: else -> 			V(edit);
												P(mutex);
												P(edit);
												counter++;
							fi;
		fi;
		inAlley[_pid] = true;
		V(edit);
		//The car has now entered the alley

leave:
		P(edit);
		if
		:: _pid < 4 -> counter++;
		:: else -> counter--;
		fi;
		inAlley[_pid] = false;
		counter == 0 -> V(mutex);
		V(edit);
	od;
}

ltl fair {[] (SafetyAlley[0]@enter -> <> (SafetyAlley[0]@leave)) }
//ltl complete {([] (SafetyAlley[0]@entry -> <> (SafetyAlley[0]@alley))) && ([] ((counter == -5) -> <> (counter == 5))) }
//ltl counter_liveness {[] ((counter == -5) -> <> (counter == 5)) }
//ltl down {[] (inAlley[0] -> counter < 0)}