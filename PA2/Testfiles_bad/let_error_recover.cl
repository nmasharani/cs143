(*Tests recovery within let statement*)

class Main {
	a : Int <- 42;
	let x : Rivers, y : error, z : Recover in (x+y+z);
};

(*This one has a let error at the end.*)
class Main {
	a : Int <- 42;
	let x : Rivers, y : Normal, z : error in (x+y+z);
};

(*This one has a let error at the beginning.*)
class Main {
	a : Int <- 42;
	let x : error, y : Normal, z : Reg in (x+y+z);
};

(*This one has a let error at the beginning.*)
class Main {
	a : Int <- 42;
	let x : Normal, y : Normal, z : Reg in (x+y+z);
	string : String <- "COOL";
};

(*This one has a single let error.*)
class Main {
	a : Int <- 42;
	let x : error in (x+y+z);
	string : String <- "COOL";
};

(*This one has a single let error of capital identifier.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error in (x+y+z);
	string : String <- "COOL";
};

(*This one has a multiple errors in let statement.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error, y : Normal, z : error, z1 : Normal, in (x+y+z);
	string : String <- "COOL";
};

(*This one has a multiple errors in a row at end in let statement.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error, y : Normal, z : error, z1 : error, in (x+y+z);
	string : String <- "COOL";
};

(*This one has a multiple errors in a row at beginning in let statement.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error, y : error, z : Normal, z1 : Normal, in (x+y+z);
	string : String <- "COOL";
};

(*This one has all errors in let statement.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error, y : error, z : error, z1 : error in (x+y+z);
	string : String <- "COOL";
};

(*This one has all errors and trialing comma in let statement.*)
class Main {
	a : Int <- 42;
	let CAPITAL : error, y : error, z : error, z1 : error, in (x+y+z);
	string : String <- "COOL";
};




