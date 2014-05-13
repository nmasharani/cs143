-- tests the usage of self

class A {
	-- self cannot be an attribute.
	self: Int <- 42;
};

class A2 { 
	-- it is an error to assign to self
	a() : A2 {
		self <- 42
	};
};

class A3 { 
	-- it is an error to bind self in a let
	a() : A2 {
		let self : SELF_TYPE <- 5 in 2 + 42
	};
};

class A4 { 
	-- it is an error to bind self in a case
	a() : Int {
		case 42 of 
			self: SELF_TYPE => 42;
			self: Int => true;
		esac
	};
};

class A5 { 
	-- it is an error to use self as a formal parameter
	a(self: Y) : Int {
		42
	};
	a2(self: SELF_TYPE) : Int {
		42
	};
	a3(self: Y, self : SELF_TYPE) : Int {
		42
	};
	a4(self: Y, self : Y) : Int {
		42
	};
	a4(self: SELF_TYPE, self : SELF_TYPE) : Int {
		42
	};
};