(*test invalid naming*)

class Main {
	main() : SELF_TYPE {
		self
	};

	a: Int;
	a: Int;
};

class A inherits Main {
	a: Int;
};