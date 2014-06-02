class Main {
	io: IO; 
	z: IO <- new IO;
	main() : Object {
		{
			--z.out_string("this is ok\n");
			--z.out_string("this is ok\n");
			--z.out_string("this is ok\n");
			io.out_string("io is void!\n");
		}
	};
};