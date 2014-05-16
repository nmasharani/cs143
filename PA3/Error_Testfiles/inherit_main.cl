class A {
	main() : Int {
		42
	};
};

class Main inherits A {
	-- this is an error. Cannot inherit main
};