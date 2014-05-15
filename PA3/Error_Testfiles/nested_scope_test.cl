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

class A2 {
	a(y: Int ) : Int {
		42
	};
	b() : Int {
		y
	};
};

class A3 {
	a() : Int {
		a
	};
};


class A4 {
	a(x: String) : String {
		{
			case x of 
				y: Int => 42;
				a: String => "hello";
			esac;
		}
	};
};

class A5 {
	a() : Int {
		let x: String <- "hello" in a
	};
};


