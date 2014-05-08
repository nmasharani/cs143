(* This is a basic test file to see how things are called with inhertance. *)

class Main {
	a(b : Int) : Int {
		a
	};
	a : Int;

	main() : SELF_TYPE {
		self
	};
};

class Test {
	a(b : Int) : Int {
		a
	};
	a : Int;

	main() : SELF_TYPE {
		self
	};
};