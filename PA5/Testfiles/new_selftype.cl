class Main {
	x: Bravo <- new Bravo;
	main() : Object {
		{
			x.new_();
		}
	};
};

class Bravo inherits Alpha {
	x1: String <- "hello there \n";
	io: IO <- new IO;
	new_(): Object {
		{
			let z: Alpha <- new Alpha in {
				z.print();
			};
		}
		
	};

	print() : Object {
		io.out_string(x1)
	};
};

class Alpha {
	x: String <- "Omaha\n";
	io_1 : IO <- new IO;
	print() : Object {
		io_1.out_string(x)
	};
};