class Main {
	c : C <- new C;
	d : D <- new D;
	main() : Object {
		1
	};
};


class C {
	io : IO <- new IO;
	i : Int <- 1;
	j : Int <- 2;
	

	foo() : Int { 
		{
			io.out_int(i + j);
			io.out_string("\n");
			i <- i + j;
		}
	
	};
};

class D inherits C {
	k : Int <- foo();
	--e : E <- new E;

	bar() : Int { 
		{
			io.out_int(k + 1);
			io.out_string("\n");
			k <- k + 1;
		}
	};
};