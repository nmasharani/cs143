(*This file tests the recovery from multiple errors in a feature list. 

In this case, the error_type has an invalid ASSIGN error, it has a space in it. *)

class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	object : Error_type < - 15;
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};