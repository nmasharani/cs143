class Main {
	x: Int;
	b: Bool;
	s: String;
	alpha: Alpha;
	io: IO <- new IO;
	main () : Object {
		{
			if isvoid x then io.out_string("x should not be void\n") else x fi;
			if isvoid b then io.out_string("b should not be void\n") else x fi;
			if isvoid s then io.out_string("s should not be void\n") else x fi;
			if isvoid alpha then x else io.out_string("alpha should be void\n") fi;
			io.out_int(x);
			io.out_string("\n");
			io.out_string(s);
		}
	};
};

class Alpha {

};