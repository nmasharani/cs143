(*This file tests the recovery from multiple errors in a feature list at beginning and end. 

In this case, the error_type has an invalid ASSIGN error, it has a space in it. *)

(*Invalid method at end.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	recover : Recover;
	recover2 : Recover2 <- "Garko";
	method() : Return {
		error : Error_type < - 12;
	}
};

(*Invalid method at beginning*)
class Main {
	method() : Return {
		error : Error_type < - 12;
	}
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

(*This one has an invalid method decleration, ie a lower case type on the method return val.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
	}
	method() : return {
		reg : Reg <- 12;
	}
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
		a : Error (*no close semicolon*)
		x : Reg;
	}
	method() : return {
		reg : Reg <- 12;
	}
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

(* This one has an error in the formal list.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
		a : Error; 
		x : Reg;
	}
	method_error(s : Seven, lowercase : lowercase) : return {
		reg : Reg <- 12;
	}
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

(* This one has an error in the formal list.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
		a : Error; 
		x : Reg;
	}
	method_error(s : Seven two : Two) : return {
		reg : Reg <- 12;
	}
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

(* This one has an error in the formal list.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
		a : Error; 
		x : Reg;
	}
	method_error(s : seven, two : Two) : return {
		reg : Reg <- 12;
	}
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

(* This one has an error in the formal list.*)
class Main {
	a : Int <- 5;
	b : Bool <- true;
	omaha : Alien;
	method() : Return {
		reg : Reg <- 12;
		a : Error; 
		x : Reg;
	};
	method_error(s : Seven, two : two) : return {
		reg : Reg <- 12;
	};
	recover : Recover;
	recover2 : Recover2 <- "Garko";
};

