class Main {
	attribute : Int;

	init() : Main { {
		attribute <- 100;
		self;
	}
	};

	main() : Int {
		test()
	};

	test() : Int {
		robinson()
	};

	robinson() : Int {
		42
	};

	test_str() : String {
		"NishaMasharani"
	};
};




class A {};


class B inherits Main {
	a : A;
};