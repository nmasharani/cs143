-- it is valid to have a function named self. 

class A {
	self() : Int {
		42
	};
};

class Main {
	main() : Main {
		self
	};
};
