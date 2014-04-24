(* Our first cool program! *) *)

class Foo {
	-- We have three fields: an int, a string, and a boolean.
	myInt : Int;
	myString : String;
	myBool : Bool;

	(* "The init method initializes the fields of the Foo class." *)
	init(i : Int, s : String, b : Bool) : Cons {
		myInt <- i;
		myString <- s;
		myBool <- b;
		self; -- we want to return the object created
	};

	set_int(i : Int) {
		myInt <- i;
	};

	get_int() : Int {
		myInt;
	}

	-- Look at that loop!
	increment_int(i : Int) : Int {
		while myInt < i
		LOOP
			myInt = myInt +- 1
		pool

		myInt;
	}
	-- It's fairly loopy, I'd say. 

	set_bool() {
		if myBool then 
			myBool = fALse; 
		else 
			myBool = True; 
		fi
	};

	get_bool() : Bool {
		myBool;
	}

	set_string(s : String) {
		myString <- "here's a little string\nit's a 
		problematic string";
	}

	get_string() : String {
		myString;
	}
};

-- Fin. 
(*(* yay broken things *)
