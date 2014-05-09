(* This is a basic test file to test inherticance cycle catching. *)

class Main inherits Main_3 {
	-- empty
};

class Main_2 inherits Main {
	-- empty
};

class Main_3 inherits Main_2 {
	-- empty
};