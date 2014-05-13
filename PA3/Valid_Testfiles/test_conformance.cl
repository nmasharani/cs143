(* test valid conformance *)

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
	bravo : Bravo; 
	alpha : Alpha <- bravo;
};

