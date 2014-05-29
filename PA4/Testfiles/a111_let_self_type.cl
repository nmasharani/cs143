class Main {
	io: IO <- new IO;
	a: A <- new A;
	s: String <- "first\n";
	a1: A1 <- new A1;
	main() : Object {
		{
			let z: SELF_TYPE <- new SELF_TYPE in
				io.out_string(z.type_name());
			a.print();
			a1.print();
			let s: String <- "second\n" in 
				io.out_string(s);
			io.out_string(s);
		}
	};
};

class A {
	a: SELF_TYPE;
	io: IO <- new IO;
	print() : Object {
		io.out_string(a.type_name())
	};
};

class A1 inherits A {
	print() : Object {
		io.out_string(a.type_name())
	};
};