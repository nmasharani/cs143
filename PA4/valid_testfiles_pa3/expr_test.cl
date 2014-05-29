(* A fairly comprehensive test file containing many different expressions. 
 * Excludes dispatch, case, and let statements. *)

class Main {
	t: Test3 <- new Test3;
	main() : Object {
		{
			t.expr1();
			
			t.expr4();
			t.expr5();
			
			t.expr9();
			t.expr10();
			t.expr11();
			t.expr12();
			t.expr13();
			t.expr14();
			t.expr15();
			t.expr16();
			t.expr17();
			t.expr18();
			t.expr19();
			t.expr20();
			t.expr21();
			t.expr22();
			t.expr23();
			t.expr24();
			t.expr25();
		}
		
	};
};

class Test3 {
	x : Int;
	y : Int <- 0;

	expr1() : Bool {
		{
			x <- 2;
			true;
		}
	};

	expr4() : Bool {
		{
			if x < 1 then true else false fi;
		}
	};

	expr5() : Bool {
		{
			x <- 0;
			while x < 5 loop x = x + 1 pool;
			true;
		}
	};

	expr9() : Bool { 
		{
			new Int;
			true;
		}
	};

	expr10() : Bool {
		isvoid x
	};

	expr11() : Int {
		4 + 3
	};

	expr12() : Int {
		4 - 3
	};

	expr13() : Int {
		4 * 3
	};

	expr14() : Int {
		12 / 3
	};

	expr15() : Int {
		~ 1
	};

	expr16() : Bool {
		3 < 4
	};

	expr17() : Bool {
		3 <= 4
	};

	expr18() : Bool {
		3 = 4
	};

	expr19() : Bool {
		not true
	};

	expr20() : Bool {
		(y = 1)
	};

	expr21() : Int {
		y
	};

	expr22() : Int {
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
	};
};
