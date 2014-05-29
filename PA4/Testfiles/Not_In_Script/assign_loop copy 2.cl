class Main {
	z: SELF_TYPE;
	x: Int <- 1;
	main() : Object {
		{
			z <- {
				while x < 0 loop
					x
				pool;
			};
			
		}
	};
};