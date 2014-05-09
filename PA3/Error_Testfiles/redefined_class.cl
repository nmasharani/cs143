(* Classes may not be rdefined, page 4 of manual. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {

};

class A {
	(*this is an error.*)
};

class A_2 {
	(*this is not an error.*)
};

class SELF_TYPE {

};

class Object {

};