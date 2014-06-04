class Main {
	io : IO <- new IO;
	a : Int;
	main() : SELF_TYPE {
		{
			io.out_int(square(5));
			io.out_string("\n");
			io.out_string("Hello, world\n");
			self;
		}
	};

	square(num : Int) : Int { -- square
		{
			io.out_int(num);
			io.out_string("\n");
			(*
			(let x : Int in {
				x <- num * num;
				x;
			});
			*)
			a <- num * num;
			io.out_int(a);
			io.out_string("\n");
			a;

		}
	};
};



