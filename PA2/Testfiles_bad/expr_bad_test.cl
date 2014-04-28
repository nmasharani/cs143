(* A fairly comprehensive test file containing many different expressions. 
 * Excludes dispatch, case, and let statements. *)

class Test3 {
	x : Int;
	y : Int < 0;

	expr1() : Bool {
		{
			x <- 2;
			true
		}
	};

	expr4() : Bool {
		{
			if x < 1 thn true else false fi;
		}
	};

	expr5() : Bool {
		{
			x <- Bool;
			while x < 5 lop x = x + 1 pool;
			true;
		}
	};

	expr9 : Bool { 
		{
			new Int;
			true;
		}
	};

	expr10() : Bool {
		isvoid 
	};

	expr11() : Int {
		4 +
	};

	expr12() : Int {
	(* should be error here *)
		( - )3
	};

	expr13() : Int {
		4 * 3
	};

	expr14) : Int {
		12 / 3
	};

	expr15() : Int {
		~ 1
	};

	expr16() : Bool {
		3 < 4
	};

	expr17()  Bool {
		3 <= 4
	};

	expr18() : Bool {
		3 => 4
	};

	(* should be error here *)
	expr19() : ool {
		not true
	};

	expr20() : Bool {
		(y = 1)
	};

	expr21() : Int {
		y
	}

	Bool() : Int {
		1
	};

	expr23() : String {
		"hello, world!"
	};

	expr24() : Bool {
		true
	};

	expr25() : Bool {
		false
	}
};
