class Main {
	a : A <- new A;
	b : B <- new B;
	c : C <- new C;
	io : IO <- new IO;
	main() : SELF_TYPE { 
		{
			io.out_int(a.no_params());
			io.out_string("\n");
			io.out_int(a.single_param(5));
			io.out_string("\n");
			io.out_int(a.multiple_params(4, 6));
			io.out_string("\n");
			io.out_int(b.no_params());
			io.out_string("\n");
			io.out_int(b.single_param(5));
			io.out_string("\n");
			io.out_int(b.multiple_params(4, 6));
			io.out_string("\n");

			io.out_int(b@A.no_params());
			io.out_string("\n");
			io.out_int(b@A.single_param(5));
			io.out_string("\n");
			io.out_int(b@A.multiple_params(4, 6));
			io.out_string("\n");

			a.test_self_dispatch();
			b.test_self_dispatch();

			c.test();
			self;
		}
	};
};


-- TYPES OF DISPATCH
-- - dynamic w/o params
-- - dynamic w/ params
-- - self dynamic w/o params
-- - self dynamic w/ params
-- - no expr dynamic w/o params
-- - no expr dynamic w/ params
-- - static w/o params
-- - static w/ params
-- - self static w/o params
-- - self static w/ params


class A {
	io: IO <- new IO;
	no_params() : Int {
		1
	};

	single_param(a : Int) : Int {
		a
	};

	multiple_params(a : Int, b : Int) : Int {
		{
			io.out_int(a);
			io.out_string("\n");
			io.out_int(b);
			io.out_string("\n");
			a + b;
		}
	};

	test_self_dispatch() : Object {
		{
			io.out_int(no_params());
			io.out_string("\n");
			io.out_int(single_param(5));
			io.out_string("\n");
			io.out_int(multiple_params(4, 6));
			io.out_string("\n");
			io.out_int(self.no_params());
			io.out_string("\n");
			io.out_int(self.single_param(5));
			io.out_string("\n");
			io.out_int(self.multiple_params(4, 6));
			io.out_string("\n");
		}
	};
};

class B inherits A {
	no_params() : Int {
		2
	};

	single_param(a : Int) : Int {
		~a
	};

	multiple_params(a : Int, b : Int) : Int {
		{
			io.out_int(a);
			io.out_string("\n");
			io.out_int(b);
			io.out_string("\n");
			single_param(a) + single_param(b);
		}
	};

	test_self_dispatch() : Object {
		{
			io.out_int(no_params());
			io.out_string("\n");
			io.out_int(single_param(5));
			io.out_string("\n");
			io.out_int(multiple_params(4, 6));
			io.out_string("\n");
			io.out_int(self.no_params());
			io.out_string("\n");
			io.out_int(self.single_param(5));
			io.out_string("\n");
			io.out_int(self.multiple_params(4, 6));
			io.out_string("\n");

			io.out_int(self@A.no_params());
			io.out_string("\n");
			io.out_int(self@A.single_param(5));
			io.out_string("\n");
			io.out_int(self@A.multiple_params(4, 6));
			io.out_string("\n");


			self@A.test_self_dispatch();
		}
	};
};


class C {
	io: IO<- new IO;
	x : Int <- 5;
	test() : Int {
		test_param_order(x, x <- x + 5, x + 2, x <- x + 5, x + 2)
	};

	test_param_order(a : Int, b : Int, c : Int, d : Int, e : Int) : Int {
		{
			io.out_int(a);
			io.out_string("\n");
			io.out_int(b);
			io.out_string("\n");
			io.out_int(c);
			io.out_string("\n");
			io.out_int(d);
			io.out_string("\n");
			io.out_int(e);
			io.out_string("\n");
			a;
		}
	};
};