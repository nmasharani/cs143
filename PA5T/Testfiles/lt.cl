class Main {
	x: Int <- 4;
	y: Int <- 5;
	str1: String <- "Works";
	str2: String <- "Does not work";
	io: IO <- new IO;
	main() : Object {

		if x <= y then io.out_string(str1) else io.out_string(str2) fi
	};
};