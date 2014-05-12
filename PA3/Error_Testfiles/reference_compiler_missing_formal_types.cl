(* Test errors in methods. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A_plus {
	a(z: String, y: Bool) : Int {
			self
	};
};

class Inter inherits A_plus {
	a(x: Int, some: String) : Int {
		self
	};
};





(*class A inherits Inter {
	a(two : Some, one : Other) : Int {
		self
	};

	checkwa(a: Int, a: String) : Int {
		5
	};
};*)

