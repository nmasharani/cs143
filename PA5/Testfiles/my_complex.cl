class Main inherits IO {
    main() : Object {
	let c : Complex <- (new Complex).init(1, 1) in 
	{
		c.reflect_X();
		--out_string("=)\n");
		(*if c.reflect_X().reflect_Y() = c.reflect_0()
	    	
	    	then out_string("=)\n")
	    	else out_string("=(\n")
	    
	    fi; *)
	}
		

		(*if 5 = 5
			then {
					c.reflect_X();
					out_string("=)\n");
				}
			else out_string("=(\n")
		fi*)
	    
	    (*if c.reflect_X().reflect_Y() = c.reflect_0()
	    	
	    	then out_string("=)\n")
	    	else out_string("=(\n")
	    
	    fi*)
    };
};


class Complex inherits IO {
    x : Int;
    y : Int;

    init(a : Int, b : Int) : Complex {
	{
	    x <- a;
	    self;
	}
    };

    (*print() : Object {
	if y = 0
	then out_int(x)
	else out_int(x).out_string("+").out_int(y).out_string("I")
	fi
    }; *)

    reflect_0() : Complex {
	{
	    x = ~x;
	    y = ~y;
	    self;
	}
    };

    reflect_X() : Complex {
	{
		out_string("hello there \n");
	    y = ~y;
	    self;
	}
    };

    reflect_Y() : Complex {
	{
	    x = ~x;
	    self;
	}
    };
};