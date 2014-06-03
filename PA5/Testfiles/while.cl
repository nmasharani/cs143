class Main {
	x: Int <- 10;
	io : IO <- new IO;
	main() : Object {
		while 0 < x loop
		{
			io.out_int(x);
			x <- x - 1;
		}
		pool
			
	};
};