class Main inherits IO {
	x: Int;
	--io: IO <- new IO;
	main() : Int {
		{
			out_string("hello");
			x <- x * 3;
			x <- x + 1;
			--io.out_int(x);
		}
		
	};
};