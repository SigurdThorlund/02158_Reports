#define N 8

short counter = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

bool mutex = 1;
bool wait = 1;
bool edit = 1;

bool inAlley[N];


inline P(mutex) { 
	atomic { 
		mutex -> mutex--;
		}
	}

inline V(mutex) { atomic { assert(!mutex); mutex++; } }

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
							:: counter < 0 -> 	atomic { counter--; inAlley[_pid] = true; }
 												V(wait);

							:: else ->			V(edit);
												P(mutex);
												V(wait);
												P(edit);
												atomic {
													counter--;
													inAlley[_pid] = true;
												}
							fi;
		:: else ->			P(edit);
							if
							:: counter > 0 -> 	atomic { counter++; inAlley[_pid] = true; }

							:: else -> 			V(edit);
												P(mutex);
												P(edit);
												atomic {
													counter++;
													inAlley[_pid] = true;
												}
							fi;
		fi;
		V(edit);
		//The car has now entered the alley

leave:
		P(edit);
		if
		:: _pid < 4 -> atomic { counter++; inAlley[_pid] = false; }
		:: else -> atomic { counter--; inAlley[_pid] = false; }
		fi;
		counter == 0 -> V(mutex);
		V(edit);
	od;
}

active proctype SafetyCheck() {
    do ::     
		assert(
			!((inAlley[0] || inAlley[1] || inAlley[2] || inAlley[3]) 
			&& (inAlley[4] || inAlley[5] || inAlley[6] || inAlley[7]))
		);
	od;
} 
//A given car will eventually have passed through the alley
//ltl fair {[] (SafetyAlley[0]@enter -> <> (SafetyAlley[0]@leave)) }

//When the counter is greater 0 a car with number 4 or greater is in the alley (or multiple cars)
//ltl up {[] (counter > 0 -> (inAlley[4] || inAlley[5] || inAlley[6] || inAlley[7]))}

//When the counter is less than 0 a car with number 3 or less is in the alley (or multiple cars)
//ltl down {[] (counter < 0 -> (inAlley[0] || inAlley[1] || inAlley[2] || inAlley[3]))}

//The counter never exeeds its bounds
//ltl counterBounds {[] (counter < 5) && (counter > -5) }

//If no cars are driving in the alley, eventually there will be cars driving in the alley
//and vice versa
//ltl driveOrNot {[] ((counter == 0) -> <>(counter != 0)) && ((counter != 0) -> <>(counter == 0))}

