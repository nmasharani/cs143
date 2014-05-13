-- override methods must have matching number of args, same types in order, same return types. 

class A {
	a(x: Int, y: String, z: Bool) : Int {
		42
	};
};

class A2 inherits A {
	-- args dont match
	a() : Int {
		42
	};
};

class A3 inherits A {
	-- args dont match
	a(x: Int) : Int {
		42
	};
};

class A4 inherits A {
	-- args dont match and return type doesn match
	a() : Bool {
		true
	};
};

class A5 inherits A {
	-- types dont match
	a(x: Bool, y: String, w: IO) : Int {
		42
	};
};

class A6 inherits A {
	-- args dont match
	a() : Int {
		42
	};
};