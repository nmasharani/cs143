(* Check output of type errors. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};
(*
class A {
	y(z : Int) : E {
		z
	};
};
 
class B inherits A{
	y() : Int {
		2
	};
};
 
class C {
	a : B;
	i : Bool;
	x() : Bool {
		if a@A.y(i) = 1 then true else false fi
	};
};
 
class D {
	y : Bool <- true;
	d() : Object {
		1
	};
};
*)

class A {
	y : Int;
	a() : Bool {
		"hi" = 3
	};
};

class C {
	y : Int;
};

class B {
	y : A;
	z : C;
	a() : Bool {
		~z
	};
};