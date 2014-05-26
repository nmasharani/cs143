class Main {
	io: IO <- new IO;
	x: Int <- 44;
	main() : Object {
		{
			let x: Int <- new Int in {
				io.out_int(x);
				io.out_string("\n");
			};
		}
	};
};