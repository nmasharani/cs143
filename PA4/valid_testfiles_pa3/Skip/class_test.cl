class Test1 {};

class Test2 inherits Test1 {};

class Test3 {
	x : Int <- 0;
	set_x(a : Int) : Bool {
		{
			x <- a;
			true;
		}
	};
};

class Test4 inherits Test3 {
	y : Int <- 0;
	z : Int <- 0;

	set_y_z(a : Int, b : Int) : Bool {
		{
			y <- a;
			z <- b;
			true;
		}
	};
};