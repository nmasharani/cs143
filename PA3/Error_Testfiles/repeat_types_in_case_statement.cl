(*tests the error of repeat types in a case statement.*)

class Main {
	main() : SELF_TYPE {
		self
	};

	a(b : Int, b : Int) : Int {
		case b of
			y: Int => 5;
			x: Int => 6;
		esac
	};
};