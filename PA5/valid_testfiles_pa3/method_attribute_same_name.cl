class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	a: Int;
	a2: String;
	a() : Int {
		42
	};
};

class Bravo inherits A {
	a2() : String {
		"this is not an error! Yippeee!"
	};
};