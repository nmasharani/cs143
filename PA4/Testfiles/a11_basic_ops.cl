class Main {
	io : IO <- new IO;
	z: Int;
	z2: Int <- 2;
	s: String <- "hello\n";
	b: Bool;
	s1: String;
	s2: String <- s.concat("world\n");
	s3: String <- s.substr(1, z2);
	z1: Int <- s.length();
	main() : Object {
		{
			io.out_string(self.type_name());
			io.out_string(z.type_name());
			io.out_string(s.type_name());
			if b = false then io.out_string(b.type_name()) else io.out_string(io.type_name()) fi;
			if z = 0 then io.out_string(b.type_name()) else io.out_string(io.type_name()) fi;
			if s1 = "" then io.out_string(b.type_name()) else io.out_string(io.type_name()) fi;
			io.out_int(z1);
			io.out_string(s2);
			io.out_string(s3);
		}
	};
};