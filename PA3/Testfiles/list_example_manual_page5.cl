(* Test list example given in manual on page 5. *)

class Main {
	main() : Int {
		42
	};
};

class List {

};

class Cons inherits List {
	xcar: Int;
	xcdr : List;

	isNil() : Bool { false };

	init(hd : Int, tl : List) : Cons {
		{
			xcar <- hd;
			xcdr <- tl;
			self;
		}
	};

};

class A {
	c : Cons;
	l : List;
	a() : Cons {
		{
			 c.init(1, l);
		}
	};
};