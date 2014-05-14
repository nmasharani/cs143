class Main {
	main() : SELF_TYPE { self };
};


class A {};

class B inherits A {};
class C inherits A {};

class D inherits A {};


-- This should all be valid.
class Test {
	a : A;
	b : B;
	test_method() : Bool {
		{
			case "hi" of
			x : String => "bye";
			y : Int => "what";
			z : Bool => 1;
			esac;

			a <- case b of
			x : B => new B;
			y : Bool => new C;
			z : Int => new D;
			esac;

			true;
		}
	};
};

-- Not valid.
class Test2 {
	a : A;
	b : B;
	test_method() : Bool {
		{
			case "hi" of
			-- undefined type err
			x : E => "bye";
			-- SELF_TYPE
			y : SELF_TYPE => "what";
			esac;

			true;
		}
	};
};