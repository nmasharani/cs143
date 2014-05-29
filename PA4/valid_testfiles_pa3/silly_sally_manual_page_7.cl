(* Tests the silly sally example from the manual page 7. *)

class Silly {
	copy() : SELF_TYPE { self};
};

class Sally inherits Silly {};

class Main {
	x : Sally <- (new Sally).copy();

	main() : Sally { x };
};