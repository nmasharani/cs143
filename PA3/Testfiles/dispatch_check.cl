class A {
	a() : Int {
		42
	};
};

class A2 inherits A {
	x: A;
	a2() : Int {
		{
			x.a();
			self.a();
			a3();
		}
	};
	a3() : Int {
		42
	};
};