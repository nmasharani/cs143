(*it is valid to have methods and attributes with the same name.*)

class Main {
	main() : SELF_TYPE {
		self
	};

	a : Int; -- an attribute
	-- now a method with the same name.
	a() : Int { 
		5
	};
};