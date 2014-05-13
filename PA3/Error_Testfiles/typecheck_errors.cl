(* Check output of type errors. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	b : Object;
	a : Int <- b;
};