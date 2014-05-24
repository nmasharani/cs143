class Main {
	a: IO <- new IO;
	s: String <- "Hello Luke\n";
	main() : IO {
		{	
			a.out_string(s);
		}
	};
};