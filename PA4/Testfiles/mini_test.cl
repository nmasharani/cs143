class Main inherits IO {
	x : Int <- 4;
	main() : SELF_TYPE {
		{
			x <- ~1 + 1;
			out_int(x);
			self;
		}
	};
};