class Main {
	x: Int <- 1;
	y: Int <- 2;
	io: IO <- new IO;
	main() : Object {
		io.out_int(x / y)
	};
};