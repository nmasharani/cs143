class Main {
	a : A <- new A;
	main() : Object {
		a.test()
	};
};

class A {
	x : String <- "car";
	io : IO <- new IO;
	test() : Object {
		{
			x <- x.substr(0, 3);
			io.out_string(x);
			io.out_string("\n");
		}
	};
};