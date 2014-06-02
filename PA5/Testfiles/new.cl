class Main {
	base: Bravo <- new Bravo;
	elem: Bravo;

	alpacka: Alpha <- new Alpha;
	alfa: Alpha;
	main() : Object {
		{
			base.test(elem);
			alpacka.test(alfa);
		}
	};
};

class Bravo {
	io: IO <- new IO;
	test(x: Bravo) : Object {
		{
			x <- new SELF_TYPE;
			x.print();
		}
	};

	print() : Object {
		io.out_string("hello Bravo\n")
	};
};

class Alpha {
	io: IO <- new IO;
	test(x: Alpha) : Object {
		{
			x <- new SELF_TYPE;
			x.print();
		}
	};

	print() : Object {
		io.out_string("hello Alpha\n")
	};
};