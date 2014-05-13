class Main {
	main() : SELF_TYPE {
		self
	};
};

class A {
	y(z : Int) : Int {
		z
	};

	b(z : Int) : E {
		z
	};
};
 
class B inherits A {
	y() : Int {
		2
	};
};
 
class C {
	a : B;
	i : Bool;
	x() : Bool {
		{
			5.y(1);
			a.c();
			a.y();
			a.y("hi");
			a.b(1);
			true;

		}
	};
};