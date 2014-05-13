(* all attributes have scope local to the class, and all methods have global scope. *)

class Main {
	main() : Int {
		42
	};
};

class A {
	a: Int;
	method() : Int {
		a
		-- no error
	};
};

class Bravo inherits A {
	method2() : Int {
		a
		-- no error, a is an ingerited attribute
	};
};

class A2 {
	method() : Int {
		a
		-- error, a not defined in class A2
	};
};
