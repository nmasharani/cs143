class Main inherits IO {
	x: Int;
	--io: IO <- new IO;
	main() : Int {
		{
			x <- 5 + 1;
			out_int(x);
			4;
		}
		
	};
};