class Main {
	thomas: Bool <- true;
	frank: Bool <- false;
	io: IO <- new IO;
	str1: String <- "15 miles SE Coyote Hills.\n";
	str2: String <- "Mid-span, Dumbarton Bridge.\n";
	main() : Object {
		{
			if frank then io.out_string(str1) else io.out_string(str2) fi;
		}
	};
};