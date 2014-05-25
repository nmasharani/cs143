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

(*
class Main {
	a: IO <- new IO;
	s: String <- "Hello Luke\n";
	main() : Object {
		{	
			a.out_string(s);
		}
	};

	test(i : Int) : Object { self };
};

*)

class Bravo {
	test(x: IO) : Object {
		x.in_string()
	};
};
