class Main { main() : SELF_TYPE { self }; };

class LT {
	a() : Bool {
		{
			1 < 2;
			"str" < 2;
			1 < "str";
			"str" < "str2";
			true;
		}
	};
};

class LEQ {
	a() : Bool {
		{
			1 <= 2;
			"str" <= 2;
			1 <= "str";
			"str" <= "str2";
			true;
		}
	};
};

class EQ_class {
	x : LT;
	y : LEQ;
	a() : Bool {
		{
			1 = 2;
			"a" = "b";
			true = false;

			1 = "a";
			"b" = true;
			true = 1;

			x = y;
			x = 1;
			y = "str";
			true = x;

			true;
		}
	};
};