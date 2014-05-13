(* SELF_TYPE may only be used in certain places. *)

class A {
	-- valid can be used as a return type of a method
	a() : SELF_TYPE {
		self
	};
};

class A2 {
	-- invalid, cannot be used as type of a formal.
	a(a: SELF_TYPE) : Int {
		42
	};
};

-- comment out as these stop compiler
(*class SELF_TYPE {
	--error, cannot use SELF_TYPE as a class name
};

class A3 inherits SELF_TYPE {
	-- cannot inherit from SELF_TYPE
};*)

class A4 {
	-- valid
	a: SELF_TYPE;
};

class A5 {
	a() : Int {
		{
			let x: SELF_TYPE in 42;
		}
	};
};

class A6 {
	a() : Int {
		case 42 of 
			x: SELF_TYPE => 42;
			y: Int => true;
		esac
	};
};

class A7 {
	a6 : A6;
	a() : Int {
		a6@SELF_TYPE.a()
	};
};







