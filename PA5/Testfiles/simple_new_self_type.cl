class Main {
	io: IO <- new IO;
	z: Main;

	main() : Object {
		{
			z <- new SELF_TYPE;
			z.print_hello();
		}
		
	};

	print_hello(): Object {
		io.out_string("hello\n")
	};
};