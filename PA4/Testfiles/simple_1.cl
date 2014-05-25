class Main {
	x: IO <- new IO;
	str1: String <- "Hello ";
	str2: String <- " Luke\n";
	za: Zig <- new Zig;
	main() : Object {
		{
			za.param(str1, str2);
			za.no_param();
		}
	};
};

class Zig {
	param(x: String, y: String) : Object {
		x
	};

	no_param() : Object {
		42
	};
};
