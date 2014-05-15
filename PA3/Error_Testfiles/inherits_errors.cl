(*this file tests invalid inheritances*)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class Z inherits Main {

};

class Bravo {

};

class Charlie inherits Bravo {

};





class A inherits Z{
	(*undefined class inheriting from *)
};

class Two inherits IO {
	-- valid
};

class A_2 inherits Object {
	-- valid
};

class SELF_TYPE {

};

class Object {

};

class Test inherits Test {
	-- can we inherit ourself?
};

class Three inherits Int {
	-- error
};

class Mack inherits SELF_TYPE {
	-- error
};

class Onedog inherits Bool {
	-- error
};

class Tnedog inherits String {
	-- error
};

class Onedog inherits Str {
	-- double error
};


class A1 inherits A2 {};
class A2 inherits A3 {};
class A3 inherits A1 {};


