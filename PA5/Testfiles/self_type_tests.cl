class Main {
	a : A <- new A;
	b : B <- new B;
	main() : SELF_TYPE {
		{
			a.test();
			a.test2();
			b.test();
			b.test2();
			self;
		}
	};
};

class A {
	b : SELF_TYPE <- self;
	i : Int <- 6;

	test() : SELF_TYPE {
		b
	};

	test2() : A {
		b
	};

};

class B inherits A {
	k : Int <- (i <- 3);
};