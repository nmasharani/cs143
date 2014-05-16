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

};
class C {
	c : Int;
};
class D {
	d : Int;
};


class Test {
	a : A;
	b : B;
	c : C;
	d : D;
	s : String;
	i : IO;
	init() : Int {
		{
			s <- "hello\n";
			i <- new IO;
			a <- new A;
			i.out_string(s);
			i.out_string(a.get_string());
			1;
		}
	};
};