(* No method name may be defined muliple times in a class, and no attribute name may be defined mulitple times in a class, but a method and an attribute may have the same name. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class Aclass1 {
	a: Int; 
	a: Int;
	-- error, mulitple a attributes of same type.
};

class Aclass2 {
	a: Int;
	a: String;
	-- error, multiple a attributes of different valid types.
};

class Aclass3 {
	a: Xyz;
	a: Omaha;
	-- error, multiple a attributed of diferent types that are invalid.
};

class Aclass4 {
	a: Int;
	a: Omaha; 
	-- error, multiple a attributes, one type valid, other is not.
};

class Aclass5 {
	a() : Int {
		5
	};
	a: Int;
	-- no error, mthods and attributes can have same name.
};

class Bravo inherits Aclass5 {
	a() : Int {
		42
		-- no error, redefined method.
	};
};

class Aclass6 {
	a() : Int {
		42
	};

	a() : String {
		"hello"
	};
	-- error, cannot have mutltiple methods of same name in a class. 
};

class Aclass7 {
	a: Int;
};

class Aclass8 inherits Aclass7 {
	a: Int;
	-- error to define a twice as it is inherited from parent.
};

class Aclass9 inherits Aclass7 {
	a: String;
	-- error to define a twice as it is inherited from parent with different type but same name
};








