(* Check output of type errors. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	y : Object;
	a() : Int {
		y
	};
};