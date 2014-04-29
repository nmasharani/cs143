class Test {
	case_test() : Int {
		case 1 + 1 of
			x : ool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test() : Int {
		case 1 + 1 of
			x : => 0;
			y : Int => 1
			z : String => 2;
		esac
	};
	case_test() : Int {
		case 1 + 1 of
			x  Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test() : Int {
		case 1 + 1 of
			Int : Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test() : Int {
		case 1 + 1 of
			x : Bool => 0;
			y : Int => 1;
			z : String => 2;
	};
};