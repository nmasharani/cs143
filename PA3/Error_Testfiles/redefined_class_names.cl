(* Class names may not be redefined in COOL, page 4 of manual. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};


class Main {
	-- error to redefine Main
};

class A {
	a: Int;
};

class A inherits Main {
	-- error to redefine A
};
