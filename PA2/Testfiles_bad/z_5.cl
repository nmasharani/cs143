(*Note, in this example, the reference fails to recover.*)

class Main {
	x : Int <- {
		5 + 7
	};
	y : Int <- {
		another bad syntax 4 + 3
	};
	z : Int <- {
		3 + 4;
		expr > expr;
		4 + 2; 
	};
};