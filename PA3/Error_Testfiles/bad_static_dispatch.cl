class A {
	a() : String {
		"hello"
	};
};

class A1 inherits A {
	a1() : Int {
		42
	};
};

class A2 {
	a: A;
	a1: A1;
	s: String;

	a() : Int {
		{
			s <- a@A1.a1();
			42;
		}
	};
};