class Main { main() : SELF_TYPE { self }; };


class A {
	a : Int <- 3;
	b : Int;
	test1() : Bool {
		{
			b <- a + let a : Int <- 3 in a;
			a = b;

			"hi" = let a : String <- "hi" in a;

			2 = let a : String <- "hi" in
			case a of
			a : Int => b <- a;
			b : String => 2;
			c : Bool => 3;
			esac;

			true;

		}
	};
};