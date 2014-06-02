class Main {
	x: Int <- 40;
	y: Int <- 2;
	sum: Int;
	io: IO <- new IO;
	main() : Object {
		{
			sum <- x + y;
			io.out_int(sum);
		}
	};
};