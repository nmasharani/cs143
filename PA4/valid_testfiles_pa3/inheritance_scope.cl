(*attributes defined in inherited classes visible in subclass.*)

class Main {
	main() : SELF_TYPE {
		self
	};

	a: Int;
};

class Two inherits Main {
	a() : Int { 
		a <- 5
	};
};

class Three inherits Main {
	ab: Int;
	a() : Int { 
		ab <- 5
	};
};