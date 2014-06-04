class A {
	main() : Int {
		42
	};
};

class Main inherits A {
	-- this is not an error because we override main. 
	main() : Int {
		42
	};
};