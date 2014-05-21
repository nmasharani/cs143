(* This file tests errors within block statements. *)

class Test {
	i : Int;

	no_first_semicolon() : Int {
		{
			i <- 3
			if i < 2 then true else false fi;
			i;
		}
	};
	no_last_semicolon() : Int {
		{
			i <- 3;
			if i < 2 then true else false fi;
			i
		}
	};
	no_middle_semicolon() : Int {
		{
			i <- 3;
			if i < 3 then true else false fi
			i;
		}
	};
	blank_block() : Int {
		{
		}
	};
};