class Main inherits IO { 
x : Int <- y;
y : Int <- z;
z : Int <- 6;
main() : SELF_TYPE { out_int(x + y) };
};