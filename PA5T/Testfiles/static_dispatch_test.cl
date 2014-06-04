class Main {
	a : A <- new A;
	b : B <- new B;
	c : C <- new C;
	d : D <- new D;
	main() : Object {
		{
			a.test();
			b.test();
			c.test();
			d.test();
			b@A.test();
			c@B.test();
			c@A.test();
			d@C.test();
			d@B.test();
			d@A.test();
		}	
	};
};


class A {
	io : IO <- new IO;

	test() : Object {
		io.out_string("1\n")
	};
};

class B inherits A {
	test() : Object {
		io.out_string("2\n")
	};
};

class C inherits B {
	test() : Object {
		io.out_string("3\n")
	};
};

class D inherits C {
	test() : Object {
		io.out_string("4\n")
	};
};