class Main {
	a: First <- new Second;
	main() : Bool {
		a.static_typecheck_error()
	};
};

class First {
	-- empty 
};

class Second inherits First {
	static_typecheck_error() : Bool {
		true
	};
};