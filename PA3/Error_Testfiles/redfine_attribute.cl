* cannot redefine inherited attributes. *)

class Main {
	main() : Int {
		42
	};
};

class Bravo {
	a: Int;
}

class A inherits Bravo {
	a: String;
};

class A2 inherits Bravo {
	a: Int;
};

class A3 inherits Bravo {
	a: Sasquatch;
};