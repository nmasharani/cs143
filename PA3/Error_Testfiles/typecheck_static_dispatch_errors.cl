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
			5@A.y(1);
			a@A.c();
			a@A.y();
			a@A.y("hi");
			-- this produces 2 identical errors
			a@A.b(1);
			-- we are missing an error msg to handle following err
			a@E.b();
			true;

		}
	};
};