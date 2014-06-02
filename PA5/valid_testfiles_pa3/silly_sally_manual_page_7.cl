(* Tests the silly sally example from the manual page 7. *)

class Silly {
	io: IO <- new IO;
	copy() : SELF_TYPE { self};
	print() : Object {
		io.out_string("in Silly\n")
	};
};

class Sally inherits Silly {
	print() : Object {
		io.out_string("in Sally\n")
	};
};

class Main {
	x : Sally <- (new Sally).copy();

	main() : Sally { 
		{
			x .print();
			x@Silly.print();
			x@Sally.print();
			x;
		}
	};
};