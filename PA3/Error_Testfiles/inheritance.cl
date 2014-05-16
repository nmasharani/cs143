class A inherits IO {
	-- no error
};

class IO {
	-- error to redefine IO
};

class Int {
	-- error
};

class Alpha inherits Int {
	-- error
};

class String {
	-- error
};

class Str inherits String {
	-- error
};

class Bool {
	-- error
};

class Boooool inherits Bool {
	-- error
};