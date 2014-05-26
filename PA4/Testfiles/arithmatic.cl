class Main {
	a : Int <- 3;
	b : Int <- 5;
	c : Int <- 7;
	d : Int <- 9;

	io : IO <- new IO;
	main() : SELF_TYPE {
		{
			test_arithmatic();
			test_loop_arithmatic();
			test_parameters(1, 2, 3, 4);
			test_tests();
			bool_test();
			self;
		}
	};

	test_arithmatic() : Int {
		{
			io.out_int((a + b));
			io.out_string("\n");
			io.out_int((b-a));
			io.out_string("\n");
			io.out_int((a * b));
			io.out_string("\n");
			io.out_int((d/a));
			io.out_string("\n");
			io.out_int((b/a));
			io.out_string("\n");
			io.out_int((~a));
			io.out_string("\n");
			io.out_int((a + b * c / d));
			io.out_string("\n");
			a;
		}
	};

	test_loop_arithmatic() : Int {
		{
			while a < 20 loop {
				a <- a + 1;
				b <- b * c;
				} pool;
			io.out_int(a);
			io.out_string("\n");
			io.out_int(b);
			io.out_string("\n");
			1;
		}
	};

	test_parameters(x : Int, y : Int, z : Int, a : Int) : Int {
		{
			io.out_int(x);
			io.out_string("\n");
			io.out_int(y);
			io.out_string("\n");
			io.out_int(z);
			io.out_string("\n");

			io.out_int(a);
			io.out_string("\n");
			1;
		}
	};

	test_tests() : Bool {
		{
			if a = b then io.out_string("a = b") else io.out_string("a != b") fi;
			io.out_string("\n");
			if a < b then io.out_string("a < b") else io.out_string("a >= b") fi;
			io.out_string("\n");
			if a <= b then io.out_string("a <= b") else io.out_string("a > b") fi;
			io.out_string("\n");
			if a = ~a then io.out_string("a = ~a") else io.out_string("a != ~a") fi;
			io.out_string("\n");
			true;
		}
	};

	bool_test() : Object {
		if false then io.out_int(1) else io.out_int(2) fi
	};
};