class Main {
	x: Int <- 5;
	y: Int <- 9;
	io : IO <- new IO;
	main() : Object {
		{
			let z: Int in {
				z <- y * ~x;
				io.out_int(z);
				io.out_string("\n");
			};
			
		}
		
	};
};