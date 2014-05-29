class Main {
	a : A <- new A;
	main() : SELF_TYPE {
		{
			a.test();
			self;
		}
	};
};

class A {
	b : B;
	io : IO <- new IO;

	test() : SELF_TYPE {
		{
			b <- new B;
			io.out_int(c);
			self;
		}
	};
};


class B {
	c : Int <- 4;
};