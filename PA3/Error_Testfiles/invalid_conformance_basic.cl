(* test invalid basic conformance *)

class Main {
	main() : Int {
		42
	};
};

class Alpha {

};

class Bravo inherits Alpha {

};

class Charlie {
	alpha : Alpha;
	bravo : Bravo <- alpha;
};