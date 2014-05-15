class Main {
	main() : SELF_TYPE { self };
};

class A {
	a() : Bool {
		{
			while true loop 1 pool;
			while "hi" loop 1 pool;
			true;
		}
	};
};

class Bravo {
	a() : Bool {
		{
			-- this correct as the loop has static type bool. 
			while true loop 1 pool;
			true; 
		}
	};

	a() : Bool {
		{
			-- this incorrect as the loop has static type bool. 
			-- not in other programming languages, this is ok, and is an infite loop, but not in COOL. 
			while 1 loop 1 pool;
			-- return Bool to satisfy return condition
			true;
		}
	};
};