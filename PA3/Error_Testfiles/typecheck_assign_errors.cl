(* check possible errors in assignment *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	z : String;
	y() : Int {
		{
			x <- 3;
			z <- 3;
		}
	};
};