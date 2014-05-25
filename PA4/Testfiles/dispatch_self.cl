class Main {
	main() : Object {
		test()
	};
	io: IO <- new IO;
	str: String <- "Hi Sundaram\n";
	test() : Object {
		io.out_string(str)
	};
};
