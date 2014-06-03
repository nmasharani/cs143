class Main {
	main() : Object {
		42
	};
};

class Test1 {
	x : Int <- 0;
	y : Int <- 0;

	get_x() : Int {
		x
	};

	get_y() : Int {
		y
	};
};

class Test2 inherits Test1 {

	get_x_plus_y() : Int {
		self@Test1.get_x() + self@Test1.get_y()
	};

};

class Test3 {
	a : Test1 <- new Test1;
	b : Test2 <- new Test2;

	do_something() : Bool {
		a.get_x() = b@Test1.get_x()
	};

	do_something_else(q : String) : Bool {
		if do_something() then true else false fi
	};

	do_something_even_more() : Bool {
		do_something_else("hello, world!")
	};
};