(*test invalid conformance.*)

class A {

};

class A2 inherits A {

};

class A3 {
	a: A2;
	b: A;
	a() : Int { 
		{
			a <- b;
			b <- a;
			42;
		}
	};
};