class Main {
	a1 : A;
	a2 : A;
	b : B;
	int : Int;
	bool : Bool;
	str : String;
	io : IO <- new IO;
	main() : Object {
		{
			if isvoid a1 then io.out_string("a1 is void\n") else io.out_string("a1 is not void\n") fi;
			if isvoid a2 then io.out_string("a2 is void\n") else io.out_string("a2 is not void\n") fi;
			if isvoid b then io.out_string("b is void\n") else io.out_string("b is not void\n") fi;
			if isvoid int then io.out_string("int is void\n") else io.out_string("int is not void\n") fi;
			if isvoid bool then io.out_string("bool is void\n") else io.out_string("bool is not void\n") fi;
			if isvoid str then io.out_string("str is void\n") else io.out_string("str is not void\n") fi;
			if isvoid io then io.out_string("io is void\n") else io.out_string("io is not void\n") fi;
			if a1 = a2 then io.out_string("a1 = a2\n") else io.out_string("a1 != a2\n") fi;
			if a1 = b then io.out_string("a1 = b\n") else io.out_string("a1 != b\n") fi;
		}
	};
};

class A {
	i : Int <- 2;
	method() : Int {
		i
	};
};

class B {
	b : Int <- 5;
	foo() : Int {
		b
	};
};