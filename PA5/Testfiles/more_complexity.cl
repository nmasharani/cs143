class Main inherits IO {
	c : Complex <- new Complex;
	main() : SELF_TYPE {
		{
			--let c : Complex <- new Complex in c.init(1, 1);
			c.init(1, 1);
			self;
		}
	};
};

class Complex inherits IO {
	y : Int;
	x : Int;
	init(a : Int, b : Int) : Complex {
		{
			x = a;
			y = b;
			self;
		}
	};
};