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
			!((SafetyAlley[0]@crit || SafetyAlley[1]@crit || SafetyAlley[2]@crit || SafetyAlley[3]@crit) 
			&& (SafetyAlley[4]@crit || SafetyAlley[5]@crit || SafetyAlley[6]@crit || SafetyAlley[7]@crit))
		);
	od;
} 


//Obligingness
/*ltl obl1 { [] ( ((SafetyAlley[0]@entry) && [] !(SafetyAlley[1]@entry || SafetyAlley[2]@entry ||
												SafetyAlley[3]@entry || SafetyAlley[4]@entry ||
												SafetyAlley[5]@entry || SafetyAlley[6]@entry ||
												SafetyAlley[7]@entry) ) -> <> (SafetyAlley[0]@crit))}
*/

//Resolution
ltl res { [] ( (SafetyAlley[0]@entry || SafetyAlley[1]@entry || SafetyAlley[2]@entry || SafetyAlley[3]@entry ||
	  			  SafetyAlley[4]@entry || SafetyAlley[5]@entry || SafetyAlley[6]@entry || SafetyAlley[7]@entry) 
				  -> <> (SafetyAlley[0]@crit || SafetyAlley[1]@crit || SafetyAlley[2]@crit || SafetyAlley[3]@crit ||
	  				     SafetyAlley[4]@crit || SafetyAlley[5]@crit || SafetyAlley[6]@crit || SafetyAlley[7]@crit) )}


//Fairness:
//ltl fair1 { []( (SafetyAlley[1]@entry) -> <> (SafetyAlley[1]@crit) ) }



//A given car will eventually have passed through the alley
/*ltl live {[] ((SafetyAlley[0]@enter -> <> (SafetyAlley[0]@leave)) && 
			   (SafetyAlley[1]@enter -> <> (SafetyAlley[1]@leave)) && 
			   (SafetyAlley[2]@enter -> <> (SafetyAlley[2]@leave)) &&
			   (SafetyAlley[3]@enter -> <> (SafetyAlley[3]@leave)) &&
			   (SafetyAlley[4]@enter -> <> (SafetyAlley[4]@leave)) &&
			   (SafetyAlley[5]@enter -> <> (SafetyAlley[5]@leave)) &&
			   (SafetyAlley[6]@enter -> <> (SafetyAlley[6]@leave)) &&
			   (SafetyAlley[7]@enter -> <> (SafetyAlley[7]@leave))) }
*/

//ltl bibbitibob {[] (SafetyAlley[0]@enter -> <> (SafetyAlley[0]@crit)) }

/* It is always the case that if the counter is larger than zero, then some cars no > 4 
   Will be in the alley, and that we then at some point the counter will become smaller
   zero, and we will have cars no < 5 in the alley.*/
//ltl fair {[] ((inAlley[4] || inAlley[5] || inAlley[6] || inAlley[7]) -> 
//
//			 <> (inAlley[0] || inAlley[1] || inAlley[2] || inAlley[3]))}


//If there is no traffic in the alley, at some point there will be
//ltl live2 {[] ((counter == 0) -> <>(counter != 0))}


//When the counter is greater 0 a car with number 4 or greater is in the alley (or multiple cars)
//ltl up {[] (counter > 0 -> (inAlley[4] || inAlley[5] || inAlley[6] || inAlley[7]))}

//When the counter is less than 0 a car with number 3 or less is in the alley (or multiple cars)
//ltl down {[] (counter < 0 -> (inAlley[0] || inAlley[1] || inAlley[2] || inAlley[3]))}

//The counter never exeeds its bounds
//ltl counterBounds {[] (counter < 5) && (counter > -5) }

//If no cars are driving in the alley, eventually there will be cars driving in the alley
//and vice versa
//ltl driveOrNot {[] ((counter == 0) -> <>(counter != 0)) && ((counter != 0) -> <>(counter == 0))}



