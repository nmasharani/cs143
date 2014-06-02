class Main {
	a: A <- new A;
	sub: Alpha <- new Alpha;
	main() : Object {
		{
			a.print();
			sub.print();
		}
	};
};

class A inherits Alpha {
	print() : Object {
		{
			io.out_string("In A\n");
			x<- 5;
			z<- "MARY";
			io.out_int(x);
			io.out_string(z);
		}
	};
};

class Alpha {
	x: Int <- 4;
	z: String <- "bob";
	io: IO <- new IO;
	print() : Object {
		{
			io.out_string("In Alpha\n");
			io.out_int(x);
			io.out_string(z);
		}
	};
};