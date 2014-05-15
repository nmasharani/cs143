(*Tests recovery from a class missing an open brace, followed by a good class. *)

class Good {
	a: Bool <- true;
};

class bad inherits Main 
	dummy : Int <- 5;
};

class Good1 {
	zebra : String <- "spider two y bananana";
};

class Good {
	a: Bool <- true;
};

class Bad inherits Main 
	dummy : Int <- 5;
};

class Good1 {
	zebra : String <- "spider two y bananana";
};

class Good {
	a: Bool <- true;
};

class bad inherits Main {
	dummy : Int <- 5;
;

class Good1 {
	zebra : String <- "spider two y bananana";
};

(*Note, the reference does not catch this, demonstrating our parser is more robust than reference. *)
class bad Inherits Main {
	dummy : Int <- 5;
{;

class Good1 {
	zebra : String <- "spider two y bananana";
};


class Good {
	a: Bool <- true;
};

class bad INHerits Main {
	dummy : Int <- 5;
};

class Good1 {
	zebra : String <- "spider two y bananana";
};



