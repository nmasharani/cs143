(*taken from piazza.*)

class G { --line 1
; -- error1 missing 
x : Int;

class F {
   x : Int;
};

class G {
};
 
class U inherits b { -- error2 b is not a type identifier
};