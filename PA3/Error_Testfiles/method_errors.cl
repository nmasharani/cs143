(* Test errors in methods. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A_plus {
	a(z: Int, y: String) : Int {
		"hello"
	};
};

class Inter inherits A_plus {
	a(x: Int, some: Int) : Int {
		z + 5
	};
};





class A inherits Inter {
	a(two : Some, one : Other) : Int {
		z + 5
	};

	checkwa(a: Int, a: String) : Int {
		5
	};
};

