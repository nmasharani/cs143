class Main {
	x: IO <- new IO;
	s: String;
	bravo: Bool <- true;
	main() : Object {
		{
			while bravo loop {
				s <- x.in_string();
				x.out_string(s);
				x.out_string("\n");
			} pool;
		}
	};
};