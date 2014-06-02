class Main {
	a: IO <- new IO;
	x: Int <- 42;
	str1: String <- "Marry\n";
	str2: String <- "Lamb\n";
	z: Bravo <- new Bravo;
	main() : Int {
		{	
			str1 <- "Alpha Pappa Sierra\n";
			z.test(str1, str2);
			--a.out_string("hello Luke \n");
			--a.out_string("hello Luke \n");
			--a.out_string("hello Luke \n");
			--a.out_int(x);
			--a.in_string();
			42;
		}
	};
};

class Bravo {
	x: IO <- new IO;
	test(s1: String, s2: String) : Object {
		{
			s1 <- x.in_string();
			x.out_string(s1);
		}
	};
};