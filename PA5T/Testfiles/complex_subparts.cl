

class Main inherits IO {
	c : Complex <- new Complex;
	main() : SELF_TYPE {
		{
			--let c : Complex <- new Complex in c.test(1, 1);
			c.test(1, 2);
			self;
		}
	};
};



class Complex inherits IO {
	y : Int;
	x : Int;
	test(a : Int, b : Int) : Complex {
		{
			out_int(a);
			out_string("\n");
			out_int(b);
			out_string("\n");
			self;
		}
	};
};


(*
class Main {
	a : Int <- 3;
	b : String <- "hello";
	c : Int <- 342;
	io : IO <- new IO;
	main() : SELF_TYPE {
		{
			io.out_int(a);
			io.out_string("\n");
			io.out_string(b);
			io.out_string("\n");
			io.out_int(c);
			io.out_string("\n");
			c <- 2;
			io.out_int(c);
			io.out_string("\n");
			self;
		}
	};
};

*)