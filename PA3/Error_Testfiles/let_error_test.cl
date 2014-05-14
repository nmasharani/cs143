(*
 * From the cool manual section 7.8
 *
 * The type of an initialization expression must conform to the declared type of 
 * the identiﬁer. The type of let is the type of the body.
 *)

class Main { main() : SELF_TYPE { self }; };

class A {
	correct() : Bool {
		{
			let a : String <- "hi", b : Int, c : Bool <- true in {
				a = "hi";
				b <- 3;
				c = true;
			};
			true;
		}
	};

	bad_init() : Bool {
		{
			let a : String <- 1 in true;
			true;
		}
	};

	body_type() : Bool {
		{
			1 = let a : Int <- 1 in a;
			"hi" = let a : Int <- 1 in a;
			true;
		}
	};
};