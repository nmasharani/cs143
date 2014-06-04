class Main {
	a: A1;
	main() : Object {
		a@A.print()
	};
};

class A1 inherits A {
	print() : Object {
		io.out_string("printed\n")
	};
};

class A {
	io: IO <- new IO;
	print() : Object {
		io.out_string("printed from Parent\n")
	};
};