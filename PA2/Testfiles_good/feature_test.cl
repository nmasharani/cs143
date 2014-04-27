class Test3 {
	x : Int;
	y : Int <- 0;

	get_x() : Int {
		x;
	}

	set_x(a : Int) : Bool {
		{
			x <- a;
			true;
		}
	};

	set_x_y(a : Int, b : Int) : Bool {
		{
			x <- a;
			y <- b;
			true;
		}
	};
};