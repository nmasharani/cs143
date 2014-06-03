class Main {
	x: Alpha <- new Alpha;
	z: Alpha;
	io : IO <- new IO;
	main () : Object {
		{
			x <- z;
			if isvoid x then io.out_string("good\n") else io.out_string("bad\n") fi;
			if x = z then io.out_string("good\n") else io.out_string("bad\n") fi;
			x.void_error(z);
		}
	};
};

class Alpha {
	void_error(z: Alpha) : Object {
		5
	};
};