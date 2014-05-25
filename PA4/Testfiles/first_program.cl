class Main {
	a: IO <- new IO;
	--s: String <- "Hello Luke\n";
	main() : Object {
		{	
			a.in_int();
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