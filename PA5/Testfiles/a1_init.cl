class Main {
	q: A <- new A;
	q1: A <- (new A).init("Changed\n");
	main() : Object {
		{
			q.print();
			q1.print();
		}
	};
};

class A {
	a: String <- "Hello\n";
	io: IO <- new IO;
	init(s: String) : SELF_TYPE {
		{
			a <- s;
			self;
		}
	};
	print() : Object {
		io.out_string(a)
	};
};