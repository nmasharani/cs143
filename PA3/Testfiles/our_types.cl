class Main { 
	test : Test;
	main() : Int { 
		{
			test <- new Test;
			test.init();
		}
	}; 
};


class A {
	a : String;
	get_string() : String {
		"hello, world!\n"
	};
};
class B inherits A {
	get_second_string(): String {
		"how is your life?\n"
	};
};
class C inherits B {
	c : Int;

	spawn() : SELF_TYPE {
		new SELF_TYPE
	};
};
class D inherits C {
	d : Int;
};


class Test {
	a : A;
	b : B;
	c : C;
	d : D;
	e : C;
	s : String;
	i : IO;
	init() : Int {
		{
			s <- "hello\n";
			i <- new IO;
			a <- new A;
			b <- new B;
			c <- new C;
			i.out_string(s);
			i.out_string(a.get_string());
			i.out_string(b.get_second_string());
			d <- c.spawn();

			1;
		}
	};


};