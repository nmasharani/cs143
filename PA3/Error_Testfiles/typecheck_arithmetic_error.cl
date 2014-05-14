class Main {
	main() : SELF_TYPE { self };
};

class A {
	x : Int;
	a() : Int {
		{
			-- this should be fine
			x <- 1 + 1;
			x <- 1 - 1;
			x <- 1 / 1;
			x <- 1 * 1;

			-- these should all be errors
			x <- 1 + "hi";
			"hi" + "hi";
			"hi" + 1;

			"hi" - "hi";
			1 - "hi";
			"hi" - 1;

			"hi" * "hi";
			"hi" * 1;
			1 * "hi";

			"hi" / 1;
			1 / "hi";
			"hi" / "hi";
			1;
		}
	};
};