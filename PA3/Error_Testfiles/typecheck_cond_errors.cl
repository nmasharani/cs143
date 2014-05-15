class Main {
	main() : SELF_TYPE {
		self
	};
};


class A {
	x() : Int {
		if true then 1 else 2 fi
	};

	y() : Int {
		if "hi" then 1 else 2 fi
	};

	z() : String {
		if true then 1 else 2 fi
	};

	alpha() : String {
		if "true" then "z" else "y" fi
	};
};

class A2 inherits A {
	
};

class A3 inherits A2 {
	id1: A;
	id2: A2;
	id3: A3;
	a() : A2 {
		{
			-- this is an error because the least common parent of id1 and id2 is A, but A does not conform to return type A2. 
			if true then id1 else id3 fi;
		}
	};
};