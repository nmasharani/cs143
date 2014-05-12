(* Test errors in methods. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A_plus {
	a() : Stevens {
			self
	};
};

class Inter inherits A_plus {
	a() : Int {
		self
	};
};

class A inherits Inter {
	a(two : Some, one : Other) : Bob {
		self
	};
};

