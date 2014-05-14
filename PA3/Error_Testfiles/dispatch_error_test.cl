(* Based on section 7.4 of cool manual
 * 
 * Type checking a dispatch involves several steps. Assume e0 has static type A.
 * (Recall that this type is not necessarily the same as the type C above. A is 
 * the type inferred by the type checker; C is the class of the object computed 
 * at runtime, which is potentially any subclass of A.) Class A must have a 
 * method f, the dispatch and the deﬁnition of f must have the same number of 
 * arguments, and the static type of the ith actual parameter must conform to 
 * the declared type of the ith formal parameter. If f has return type B and B 
 * is a class name, then the static type of the dispatch is B. Otherwise, if f 
 * has return type SELF TYPE, then the static type of the dispatch is A. To see 
 * why this is sound, note that the self parameter of the method f conforms to 
 * type A. Therefore, because f returns SELF TYPE, we can infer that the result 
 * must also conform to A. 
 *
 * For example, e@B.f() invokes the method f in class B on the object that is 
 * the value of e. For this form of dispatch, the static type to the left of “@”
 * must conform to the type speciﬁed to the right of “@”.
 *)

class Main { main() : SELF_TYPE {self}; };

class A {
	no_args() : Bool { true };
	one_arg(x : Bool) : Bool { x };
	two_args(x : Bool, y : Int) : Bool { x };
};

class B inherits A { 
	self_return() : SELF_TYPE { self };
	other_return() : C { new C };
};

(* Poor redefinition of inherited methods *)
class C inherits A {
	no_args(x : Bool) : Bool { x };
	one_args(x : Bool) : Int { 1 };
	
	-- -------------------------------------------------------------------------
	-- -------------------------------------------------------------------------
	-- we give two errors here, the reference gives one. but since there are two
	-- errors I think it is okay. 
	-- -------------------------------------------------------------------------
	-- -------------------------------------------------------------------------
	two_args(x : Int, y : Bool) : Bool { y };
};

class Test {
	a : A;
	b : B;
	c : C;
	(* Class A must have a method f *)
	test1() : Bool {
		{
			a.three_args();
			true;
		}
	};

	(* 
	 * The dispatch and the deﬁnition of f must have the same number of 
	 * arguments 
	 *)
	test2() : Bool {
		{
			a.no_args(true);
			true;
		}
	};


	(*
	 * The static type of the ith actual parameter must conform to the declared 
	 * type of the ith formal parameter
	 *)
	test3() : Bool {
		{
			a.one_args(1);
			true;
		}
	};

	(*
	 * If f has return type B and B is a class name, then the static type of the 
	 * dispatch is B
	 *)
	test4() : Bool {
		{
			c <- b.other_return();
			true;
		}
	};

	(*
	 * Otherwise, if f has return type SELF TYPE, then the static type of the 
	 * dispatch is A.
     *)
	test5() : Bool {
		{
			b <- b.self_return();
			true;
		}
	};

    (*
	 * For example, e@B.f() invokes the method f in class B on the object that 
	 * is the value of e. For this form of dispatch, the static type to the left 
	 * of “@” must conform to the type speciﬁed to the right of “@”.
	 *) 
    test6() : Bool {
    	{
    		b@A.no_args();
    		c@B.no_args();
    		true;
    	}
    };
};