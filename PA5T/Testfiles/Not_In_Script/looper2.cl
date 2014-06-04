class Main {
	x: String;
	z: Int;
	io: IO <- new IO;
	main() : Object {
		{
			io.out_string("enter a string and this program will echo it.\n");
			io.out_string("enter a 'quit' to end the program.\n");
			while not (x = "quit") loop {
				x <- io.in_string();
				io.out_string("you entered the string:    ");
				io.out_string(x);
				io.out_string("\n");
			} pool;

			io.out_string("enter a number and this program will echo it.\n");
			io.out_string("enter a '5' to end the program.\n");
			while not (z = 5) loop {
				z <- io.in_int();
				io.out_string("you entered the int:    ");
				io.out_int(z);
				io.out_string("\n");
			} pool;

			io.out_string("enter a string and this program will tell you its length.\n");
			io.out_string("enter a 'end' to end the program.\n");
			while not (x = "end") loop {
				x <- io.in_string();
				io.out_string("The length of the string ");
				io.out_string(x);
				io.out_string(" is ");
				z <- x.length();
				io.out_int(z);
				io.out_string("\n");
			} pool;

			io.out_string("enter a string and an index and this program will tell you its substring.\n");
			io.out_string("enter a '-1' to end the program.\n");
			while not (z = ~1) loop {
				x <- io.in_string();
				z <- io.in_int();
				x <- x.substr(z, 2);
				io.out_string("The substring is:   ");
				io.out_string(x);
				io.out_string("\n");
			} pool;

		}
	};
};