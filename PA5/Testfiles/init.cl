class Main {
	a: A;
	main() : Int {
		a.boom()
	};

	a(x: Int) : Int {
		x <- 42
	};

	b(x: Int, y: Int) : Int {
		{
			x <- y + 4 + 5 + 6;
		}
	};
};

class A {
	boom() : Int {
		42
	};
};