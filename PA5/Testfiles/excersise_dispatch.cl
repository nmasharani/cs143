class Main {
	x: Alpha <- new Alpha;
	z: Bravo <- new Bravo;

	main () : Object {
		{
			x.print();
			z.print();
		}
		
	};
};

class Alpha {
	io: IO <- new IO;
	print() : Object {
		io.out_string("called from Alpha\n")
	};
};

class Bravo inherits Alpha {
	print() : Object {
		io.out_string("called from Bravo\n")
	};
};