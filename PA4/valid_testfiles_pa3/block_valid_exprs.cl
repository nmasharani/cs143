(*Fix the errors from the block error test case to verfy correct output*)
class Main {
	main() : Int {
		(42)
	};
};

class Empty {

};

class Test {
	i : Int;
	num : Int;
	west : Int; 
	south : Int;

	no_first_semicolon() : Int {
		{
			i <- 3;
			if i < 2 then true else false fi;
			i <- 2;
		}
	};
	no_last_semicolon() : Int {
		{
			i <- 3;
			if i < 2 then true else false fi;
			i <- 2;
		}
	};
	no_middle_semicolon() : Int {
		{
			i <- 3;
			if i < 3 then true else false fi;
			i <- 2;
		}
	};
	blank_block() : Int {
		{
			while true loop if num = 42 then (num + west) else (num + south) fi pool;
			num <- 42;
		}
	};
};