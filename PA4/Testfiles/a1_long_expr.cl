class Main {
	x: Int <- 2;
	y: Int <- 9;
	z: Int <- (x + y / x / x / y * 1 + 45 / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y));
	io: IO <- new IO;
	main() : Object {
		{
			io.out_int(z);
			let w : Int <- (x + y / x / x / y * 1 + z / 2 - 56 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y) + x + y / x / z / y * 1 + 45 / 2 - 563 + 1 - (~1) * 43 * 6 / (~2) + x + y - (~y)) in 
				io.out_int(w);
		}
	};
};