class Main {
	b : B <- new B;
	main() : Object {
		b.test()
	};
};

class B {
	test() : Int {
		(new SELF_TYPE).get_int()
	};

	get_int() : Int { 4 };
};
