(*tests errors in formals. *)

class Main {
	main() : SELF_TYPE {
		self
	};

	a: Int;

	omar(a: XYz, a: Int) : SELF_TYPE {
		self
	};
};