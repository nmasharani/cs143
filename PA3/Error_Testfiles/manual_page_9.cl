-- invalid override from manual page 9

class P {
	f() : Int {1};
};

class C inherits P {
	f() : String {"1"};
};

class Area_41 {
	p : P;
	a() : Int {
		p.f() + 1
	};
};