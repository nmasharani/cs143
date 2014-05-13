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

class B {
	y : Bool;
	b() : Object {
		z <- 5
	};
};

class C {
	y : Bool;
	b() : Object {
		y <- 5
	};
};