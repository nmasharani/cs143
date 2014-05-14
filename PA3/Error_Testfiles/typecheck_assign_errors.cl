(* check possible errors in assignment *)
(* This file works as of 5/13 2:20pm *)

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

class B { };

class C inherits B { };

class D {
	x : C;
	y : C;
	z : B;
	test() : B {
		{
			-- z <- y has return type C so this is fine
			x <- (z <- y);
			-- z has type B so this is not fine
			x <- z;
		}
		
	};
};