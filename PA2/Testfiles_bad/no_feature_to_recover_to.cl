(*This test has an error in the last feature.  *)

class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	object : One <- 15;
	recover : Recover;
	recover2 : error_type <- "Garko";
};

(*This test has an error in the first feature.  *)

class Main {
	a : Int <- 5
	b : Bool <- true;
	omaha : Alien;
	object : One <- 15;
	recover : Recover;
	recover2 : Recover2 <- "Garko"
};

(*This test has an error in the first feature.  *)

class Main {
	a : Int <- 5
	b : Bool <- true;
	omaha : Alien;
	object : One <- 15;
	recover : Recover;
	recover2 : Recover2 < - "Garko";
};