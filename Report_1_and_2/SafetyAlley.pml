#define N 8

short counter = 0; /* Counts the number of cars
					in the alley, and indicates
their direction (sign) 
clockwise (positive), counterclockwise (negative)*/

bool mutex = 1;
bool wait = 1;
bool edit = 1;

inline P(mutex) { 
	atomic { 
		mutex -> mutex--;
		}
	}

inline V(mutex) { atomic { assert(!mutex); mutex++; } }

active [N] proctype SafetyAlley()
{
	do
	:: break;
	:: skip;
entry:
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
		V(edit);
		//The car has now entered the alley

crit:
		P(edit);
		if
		:: _pid < 4 -> counter++;
		:: else -> counter--; 
		fi;

		if
		:: counter == 0 -> V(mutex);
		:: else -> skip;
		fi;

		V(edit);

	od;
}


active proctype SafetyCheck() {
    do ::     
		assert(
			(!((SafetyAlley[0]@crit || SafetyAlley[1]@crit || SafetyAlley[2]@crit || SafetyAlley[3]@crit) 
			&& (SafetyAlley[4]@crit || SafetyAlley[5]@crit || SafetyAlley[6]@crit || SafetyAlley[7]@crit))) 
			&& ((counter < 5) && (counter > -5))
		);

	od;
} 


//Obligingness
/*ltl obl { [] ( ((SafetyAlley[0]@entry) && [] !(SafetyAlley[1]@entry || SafetyAlley[2]@entry ||
												SafetyAlley[3]@entry || SafetyAlley[4]@entry ||
												SafetyAlley[5]@entry || SafetyAlley[6]@entry ||
												SafetyAlley[7]@entry) ) -> <> (SafetyAlley[0]@crit))}
*/

//Resolution
/*ltl res { [] ( (SafetyAlley[0]@entry || SafetyAlley[1]@entry || SafetyAlley[2]@entry || SafetyAlley[3]@entry ||
	  			  SafetyAlley[4]@entry || SafetyAlley[5]@entry || SafetyAlley[6]@entry || SafetyAlley[7]@entry) 
				  -> <> (SafetyAlley[0]@crit || SafetyAlley[1]@crit || SafetyAlley[2]@crit || SafetyAlley[3]@crit ||
	  				     SafetyAlley[4]@crit || SafetyAlley[5]@crit || SafetyAlley[6]@crit || SafetyAlley[7]@crit) )}
*/

//Fairness
ltl fair { []( (SafetyAlley[1]@entry) -> <> (SafetyAlley[1]@crit) ) }




