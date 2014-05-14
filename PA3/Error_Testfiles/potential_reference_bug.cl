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