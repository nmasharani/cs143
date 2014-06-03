class Main {
	x: Bravo <- new Bravo;
	str1: String <- "1\n";
	str2: String <- "22\n";
	str3: String <- "333\n";
	str4: String <- "4444\n";
	str5: String <- "55555\n";
	str6: String <- "666666\n";
	str7: String <- "7777777\n";
	str8: String <- "88888888\n";
	str9: String <- "999999999\n";
	x1: Int <- 1;
	x2: Int <- 2;
	x3: Int <- 3;
	x4: Int <- 4;
	x5: Int <- 5;
	x6: Int <- 6;
	x7: Int <- 7;
	x8: Int <- 8;
	x9: Int <- 9;
	main() : Object {
		{
			x.print_order(str1, str2, str3, str4, str5, str6, str7, str8, str9);
			x.print_reverse(str1, str2, str3, str4, str5, str6, str7, str8, str9);
			x.print_nums(x1, x2, x3, x4, x5, x6, x7, x8, x9);
		}
		
	};
};

class Bravo {
	io : IO <- new IO;
	print_order(str1: String, str2: String, str3: String, str4: String, str5: String, str6: String, str7: String, str8: String, str9: String) : Object {
		{
			io.out_string(str1);
			io.out_string(str2);
			io.out_string(str3);
			io.out_string(str4);
			io.out_string(str5);
			io.out_string(str6);
			io.out_string(str7);
			io.out_string(str8);
			io.out_string(str9);
		}
	};
	print_reverse(str9: String, str8: String, str7: String, str6: String, str5: String, str4: String, str3: String, str2: String, str1: String) : Object {
		{
			io.out_string(str1);
			io.out_string(str2);
			io.out_string(str3);
			io.out_string(str4);
			io.out_string(str5);
			io.out_string(str6);
			io.out_string(str7);
			io.out_string(str8);
			io.out_string(str9);
		}
	};
	print_nums(str1: Int, str2: Int, str3: Int, str4: Int, str5: Int, str6: Int, str7: Int, str8: Int, str9: Int) : Object {
		{
			io.out_int(str1);
			io.out_int(str2);
			io.out_int(str3);
			io.out_int(str4);
			io.out_int(str5);
			io.out_int(str6);
			io.out_int(str7);
			io.out_int(str8);
			io.out_int(str9);
			let sum : Int <- 10 in 
			{
				sum <- sum + str1;
				sum <- sum + str2;
				sum <- sum + str3;
				sum <- sum + str4;
				sum <- sum + str5;
				sum <- sum + str6;
				sum <- sum + str7;
				sum <- sum + str8;
				sum <- sum + str9;
				io.out_string("\n");
				io.out_string("sum = ");
				io.out_int(sum);
			};
				
		}
	};
};