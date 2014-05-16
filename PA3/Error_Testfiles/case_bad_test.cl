(*
class Test {
	case_test() : Int {
		case 1 + 1 of
			x : Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test2() : Int {
		case 1 + 1 of
			x : Bool => 0;
			y : Int => 1
			z : String => 2;
		esac
	};
	case_test3() : Int {
		case 1 + 1 of
			x  Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test4() : Int {
		case 1 + 1 of
			Int : Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
	case_test5() : Int {
		case 1 + 1 of
			x : Bool => 0;
			y : Int => 1;
			z : String => 2;
		esac
	};
};

*)

class A {
	a() : Int {
		case 1+2 of 
			x: Int => 42;
			z: Int => 0;
		esac
	};
};