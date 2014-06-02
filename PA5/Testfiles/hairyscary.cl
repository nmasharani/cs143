(* hairy  . . .*)

class Foo inherits Bazz {
     a : Razz <- case self of
		      n : Razz => (new Bar);
		      n : Foo => (new Razz);
		      n : Bar => n;
   	         esac;

     b : Int <- a.doh() + g.doh() + doh() + self@Foo.printh();

     doh() : Int { (let i : Int <- h in { h <- h + 2; i; } ) };

     --printh() : Int { { out_string("Foo"); out_int(h); out_string("\n"); 0; } };

};

class Bar inherits Razz {

     c : Int <- doh();

     d : Object <- self@Bar.printh();

     --printh() : Int { { out_string("Bar"); out_int(h); out_string("\n"); 0; } };
};


class Razz inherits Foo {

     e : Bar <- case self of
		  n : Razz => (new Bar);
		  n : Bar => n;
		esac;

     f : Int <- a@Bazz.doh() + g.doh() + e.doh() + doh() + self@Razz.printh();

     --printh() : Int { { out_string("Razz"); out_int(h); out_string("\n"); 0; } };

};

class Bazz inherits IO {

     h : Int <- 1;

     g : Foo  <- case self of
		        n : Bazz => (new Foo);
  		     	n : Razz => (new Bar);
      			n : Foo  => (new Razz);
      			n : Bar  => n;
		  esac;

     i : Object <- self@Bazz.printh();

     printh() : Int { { out_int(h); 0; } };

     --printh() : Int { { out_string("Bazz"); out_int(h); out_string("\n"); 0; } };

     doh() : Int { (let i: Int <- h in { h <- h + 1; i; } ) };
};

(* scary . . . *)
class Main {
  a : Bazz <- new Bazz;
  b : Foo <- new Foo;
  c : Razz <- new Razz;
  d : Bar <- new Bar;

  main(): String { "do nothing" };

};





