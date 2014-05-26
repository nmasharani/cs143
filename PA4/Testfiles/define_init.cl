class Main {
	panky : Hanky <- new Hanky;
	main() : Object {
		{
			panky.init(4, 8);
			panky.print_values();
			panky.do_sum();
		}
	};
};

class Hanky {
	x: Int;
	y: Int;
	io: IO <- new IO;

	init(a: Int, b: Int) : Object {
		{
			x<- a;
			y<- b;
		}
	};

	print_values(): Object {
		{
			io.out_string("Value of x is = ");
			io.out_int(x);
			io.out_string("\n");
			io.out_string("Value of y is = ");
			io.out_int(y);
			io.out_string("\n");
		}
	};

	do_sum() : Object {
		let sum: Int in 
		{
			sum <- x + y;
			io.out_string("Value of sum is = ");
			io.out_int(sum);
			io.out_string("\n");
		}
	};
};