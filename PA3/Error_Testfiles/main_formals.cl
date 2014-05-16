class Main inherits A {
	-- error, main cannot have formals. 
	main(s: Int) : Int {
		42
	};
};

class A {
	main() : Int {
		42
	};
};