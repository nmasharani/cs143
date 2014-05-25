class Main {
	a: IO <- new IO;
	x: Int <- 42;
	z: Bravo <- new Bravo;
	main() : Object {
		{	
			z.test(a);
		}
	};
};

class Bravo {
	test(x: IO) : Object {
		x.in_string()
	};
};