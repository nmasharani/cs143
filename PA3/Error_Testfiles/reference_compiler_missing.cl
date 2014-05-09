(*this test file demonstrates a bug in the reference. ie the reference is incomplete in its error reporting. *)

class Main {
	main() : SELF_TYPE {
		self
	};
};

class Onedog inherits Bool {
	-- error
};

class Onedog inherits Str {
	-- double error
};
