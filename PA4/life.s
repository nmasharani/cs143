# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	5
_bool_tag:
	.word	6
_string_tag:
	.word	7
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const71:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const10
	.byte	0	
	.align	2
	.word	-1
str_const70:
	.word	7
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const69:
	.word	7
	.word	9
	.word	String_dispTab
	.word	int_const21
	.ascii	"CellularAutomaton"
	.byte	0	
	.align	2
	.word	-1
str_const68:
	.word	7
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Board"
	.byte	0	
	.align	2
	.word	-1
str_const67:
	.word	7
	.word	6
	.word	String_dispTab
	.word	int_const13
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const66:
	.word	7
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const65:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const64:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const12
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const63:
	.word	7
	.word	6
	.word	String_dispTab
	.word	int_const13
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const62:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const16
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const61:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const15
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const60:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const15
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const59:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const19
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const58:
	.word	7
	.word	16
	.word	String_dispTab
	.word	int_const24
	.ascii	"There are many initial states to choose from. \n"
	.byte	0	
	.align	2
	.word	-1
str_const57:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const25
	.ascii	"Welcome to the Game of Life.\n"
	.byte	0	
	.align	2
	.word	-1
str_const56:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	"y"
	.byte	0	
	.align	2
	.word	-1
str_const55:
	.word	7
	.word	17
	.word	String_dispTab
	.word	int_const26
	.ascii	"Please use lowercase y or n for your answer [n]: "
	.byte	0	
	.align	2
	.word	-1
str_const54:
	.word	7
	.word	17
	.word	String_dispTab
	.word	int_const27
	.ascii	"Would you like to choose a background pattern? \n"
	.byte	0	
	.align	2
	.word	-1
str_const53:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const12
	.ascii	"\n\n"
	.byte	0	
	.align	2
	.word	-1
str_const52:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	"n"
	.byte	0	
	.align	2
	.word	-1
str_const51:
	.word	7
	.word	17
	.word	String_dispTab
	.word	int_const26
	.ascii	"Please use lowercase y or n for your answer [y]: "
	.byte	0	
	.align	2
	.word	-1
str_const50:
	.word	7
	.word	18
	.word	String_dispTab
	.word	int_const28
	.ascii	"Would you like to continue with the next generation? \n"
	.byte	0	
	.align	2
	.word	-1
str_const49:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"                         "
	.byte	0	
	.align	2
	.word	-1
str_const48:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const9
	.ascii	" XXXX   X    XX    X   XXXX "
	.byte	0	
	.align	2
	.word	-1
str_const47:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const9
	.ascii	" XX X  XX  X XX X  XX  X XX "
	.byte	0	
	.align	2
	.word	-1
str_const46:
	.word	7
	.word	9
	.word	String_dispTab
	.word	int_const3
	.ascii	" XX X  XX  X XX "
	.byte	0	
	.align	2
	.word	-1
str_const45:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const9
	.ascii	"XXX    X   X  X    X   XXXX "
	.byte	0	
	.align	2
	.word	-1
str_const44:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const9
	.ascii	"XXXXX   X   XXXXX   X   XXXX"
	.byte	0	
	.align	2
	.word	-1
str_const43:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const6
	.ascii	"  X X   X X X X     X"
	.byte	0	
	.align	2
	.word	-1
str_const42:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const6
	.ascii	"X     X X X X   X X  "
	.byte	0	
	.align	2
	.word	-1
str_const41:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"  X    X  XXXXX  X    X  "
	.byte	0	
	.align	2
	.word	-1
str_const40:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"XXXXX  X    X    X    X  "
	.byte	0	
	.align	2
	.word	-1
str_const39:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"XXXXXXXXXXXXXXXXXXXXXXXXX"
	.byte	0	
	.align	2
	.word	-1
str_const38:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const0
	.ascii	"X X X X X X X X"
	.byte	0	
	.align	2
	.word	-1
str_const37:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const0
	.ascii	"  X   X X X   X"
	.byte	0	
	.align	2
	.word	-1
str_const36:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const0
	.ascii	"X   X X X   X  "
	.byte	0	
	.align	2
	.word	-1
str_const35:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const5
	.ascii	" X  XX  X  X  X     "
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const5
	.ascii	"X  X  X  XX  X      "
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"    X   X   X     X     X"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"X     X     X   X   X    "
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"X   X X X   X   X X X   X"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"X     X     X     X     X"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"    X   X   X   X   X    "
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const5
	.ascii	" XX  XXXX XXXX  XX  "
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const0
	.ascii	"Your choice => "
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t21: An 'S'\n"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t20: An '8'\n"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t19: An 'O'\n"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const17
	.ascii	"\t18: A '3'\n"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t17: An 'E'\n"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t16: An 'M'\n"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const17
	.ascii	"\t15: A 'W'\n"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	7
	.word	9
	.word	String_dispTab
	.word	int_const3
	.ascii	"\t14: A plus '+'\n"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const17
	.ascii	"\t13: A 'T'\n"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	7
	.word	9
	.word	String_dispTab
	.word	int_const21
	.ascii	"\t12: A full grid\n"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	7
	.word	12
	.word	String_dispTab
	.word	int_const29
	.ascii	"\t11: Numbers 9 and 10 combined\n"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const5
	.ascii	"\t10: An inverse 'V'\n"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const16
	.ascii	"\t9: A 'V'\n"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const30
	.ascii	"\t8: Two less than signs\n"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const31
	.ascii	"\t7: Two greater than signs\n"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	7
	.word	10
	.word	String_dispTab
	.word	int_const6
	.ascii	"\t6: A less than sign\n"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const8
	.ascii	"\t5: A greater than sign \n"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	7
	.word	7
	.word	String_dispTab
	.word	int_const15
	.ascii	"\t4: An X\n"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	7
	.word	16
	.word	String_dispTab
	.word	int_const24
	.ascii	"\t3: A slash from the upper right to lower left\n"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	7
	.word	16
	.word	String_dispTab
	.word	int_const24
	.ascii	"\t2: A slash from the upper left to lower right\n"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	7
	.word	8
	.word	String_dispTab
	.word	int_const18
	.ascii	"\t1: A cross\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	7
	.word	11
	.word	String_dispTab
	.word	int_const30
	.ascii	"\nPlease chose a number:\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	"-"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	"X"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	" "
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const11
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	7
	.word	9
	.word	String_dispTab
	.word	int_const23
	.ascii	"./Testfiles/life.cl"
	.byte	0	
	.align	2
	.word	-1
int_const31:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	27
	.word	-1
int_const30:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	24
	.word	-1
int_const29:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	31
	.word	-1
int_const28:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	54
	.word	-1
int_const27:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	48
	.word	-1
int_const26:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	49
	.word	-1
int_const25:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const24:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	47
	.word	-1
int_const23:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const22:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	18
	.word	-1
int_const21:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	17
	.word	-1
int_const20:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	14
	.word	-1
int_const19:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const18:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const17:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const16:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const15:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const14:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const13:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const12:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const11:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const10:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const9:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	28
	.word	-1
int_const8:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	25
	.word	-1
int_const7:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const6:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	21
	.word	-1
int_const5:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const4:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	16
	.word	-1
int_const2:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const1:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const0:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
bool_const0:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Main_protObj:
	.word	4
	.word	8
	.word	Main_dispTab
	.word	int_const10
	.word	int_const10
	.word	int_const10
	.word	str_const71
	.word	0
	.word	-1
CellularAutomaton_protObj:
	.word	3
	.word	7
	.word	CellularAutomaton_dispTab
	.word	int_const10
	.word	int_const10
	.word	int_const10
	.word	str_const71
	.word	-1
Board_protObj:
	.word	2
	.word	6
	.word	Board_dispTab
	.word	int_const10
	.word	int_const10
	.word	int_const10
	.word	-1
String_protObj:
	.word	7
	.word	5
	.word	String_dispTab
	.word	int_const10
	.word	0
	.word	-1
Bool_protObj:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	5
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
class_nameTab:
	.word	str_const63
	.word	str_const64
	.word	str_const68
	.word	str_const69
	.word	str_const70
	.word	str_const65
	.word	str_const66
	.word	str_const67
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Board_protObj
	.word	Board_init
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
	.word	Main_protObj
	.word	Main_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Board_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Board.size_of_board
	.word	Board.board_init
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Board.size_of_board
	.word	Board.board_init
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.north
	.word	CellularAutomaton.south
	.word	CellularAutomaton.east
	.word	CellularAutomaton.west
	.word	CellularAutomaton.northwest
	.word	CellularAutomaton.northeast
	.word	CellularAutomaton.southeast
	.word	CellularAutomaton.southwest
	.word	CellularAutomaton.neighbors
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
	.word	CellularAutomaton.option
	.word	CellularAutomaton.prompt
	.word	CellularAutomaton.prompt2
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Board.size_of_board
	.word	Board.board_init
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.north
	.word	CellularAutomaton.south
	.word	CellularAutomaton.east
	.word	CellularAutomaton.west
	.word	CellularAutomaton.northwest
	.word	CellularAutomaton.northeast
	.word	CellularAutomaton.southeast
	.word	CellularAutomaton.southwest
	.word	CellularAutomaton.neighbors
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
	.word	CellularAutomaton.option
	.word	CellularAutomaton.prompt
	.word	CellularAutomaton.prompt2
	.word	Main.main
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
# Begin Emmitting code to generate initializer method for Main
Main_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	CellularAutomaton_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 28($s0)
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for CellularAutomaton
CellularAutomaton_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Board_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for CellularAutomaton
# Begin Emmitting code to generate initializer method for Board
Board_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -24
	move	$s0 $a0
	jal	IO_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 24
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Board
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 45
# End Code no_epression expression.
# Begin Code no_epression expression at line number 45
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for String
# Begin Emmitting code to generate initializer method for Bool
Bool_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 45
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Bool
# Begin Emmitting code to generate initializer method for Int
Int_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 45
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Int
# Begin Emmitting code to generate initializer method for IO
IO_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for IO
# Begin Emmitting code to generate initializer method for Object
Object_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Object
# Begin Emitting code for method main
	.globl	Main.main
Main.main:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -32
	move	$s0 $a0
# Begin Code block epression at line number 408
# Begin Code let expression at line number 409
	la	$a0 Bool_protObj
	jal	Object.copy
	sw	$a0 -12($fp)
# Begin Code let expression at line number 410
	la	$a0 String_protObj
	jal	Object.copy
	sw	$a0 -16($fp)
# Begin Code block epression at line number 411
# Begin Code disptach expression at line number 412
# Begin Code string const expression at line number 412
	la	$a0 str_const57
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 412
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 412
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 413
# Begin Code string const expression at line number 413
	la	$a0 str_const58
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 413
	move	$a0 $s0
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 413
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code loop expression at line number 414
label2:
# Begin Code disptach expression at line number 414
# Begin Code objectID expression at line number 414
	move	$a0 $s0
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 414
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 104($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label3
# Begin Code block epression at line number 415
# Begin Code assign expression at line number 416
# Begin Code bool expression at line number 416
	la	$a0 bool_const1
# End Code bool expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# Begin Code assign expression at line number 417
# Begin Code disptach expression at line number 417
# Begin Code objectID expression at line number 417
	move	$a0 $s0
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 417
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 96($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# End Code assign expression.
# Begin Code assign expression at line number 418
# Begin Code disptach expression at line number 418
# Begin Code objectID expression at line number 418
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 418
	la	$a0 CellularAutomaton_protObj
	jal	Object.copy
	jal	CellularAutomaton_init
# End Code new with type CellularAutomaton
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 418
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 28($s0)
	addiu	$a1 $s0 7
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code disptach expression at line number 419
# Begin Code objectID expression at line number 419
# Loading attribute object into ACC
	lw	$a0 28($s0)
# End Code objectID expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 419
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code loop expression at line number 420
label8:
# Begin Code objectID expression at line number 420
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label9
# Begin Code cond expression at line number 421
# Begin Code disptach expression at line number 421
# Begin Code objectID expression at line number 421
	move	$a0 $s0
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 421
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 100($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label10
# Begin Code block epression at line number 422
# Begin Code disptach expression at line number 423
# Begin Code objectID expression at line number 423
# Loading attribute object into ACC
	lw	$a0 28($s0)
# End Code objectID expression.
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 423
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 92($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 424
# Begin Code objectID expression at line number 424
# Loading attribute object into ACC
	lw	$a0 28($s0)
# End Code objectID expression.
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 424
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	b	label11
label10:
# Begin Code assign expression at line number 427
# Begin Code bool expression at line number 427
	la	$a0 bool_const0
# End Code bool expression.
	sw	$a0 -12($fp)
# End Code assign expression.
label11:
# End Code cond expression.
	b	label8
label9:
	li	$a0 0
# End Code loop expression.
# End Code block epression.
	b	label2
label3:
	li	$a0 0
# End Code loop expression.
# Begin Code objectID expression at line number 432
	move	$a0 $s0
# End Code block epression.
# End Code let expression.
# End Code let expression.
# End Code block epression.
	addiu	$sp $sp 32
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method init
	.globl	CellularAutomaton.init
CellularAutomaton.init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code block epression at line number 114
# Begin Code assign expression at line number 115
# Begin Code objectID expression at line number 115
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 24($s0)
	addiu	$a1 $s0 6
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code disptach expression at line number 116
# Begin Code objectID expression at line number 116
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 116
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 116
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 117
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
	.globl	CellularAutomaton.print
CellularAutomaton.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -52
	move	$s0 $a0
# Begin Code let expression at line number 126
# Begin Code int const expression at line number 126
	la	$a0 int_const10
# End Code int const expression.
	sw	$a0 -12($fp)
# Begin Code let expression at line number 127
# Begin Code objectID expression at line number 127
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code block epression at line number 128
# Begin Code disptach expression at line number 129
# Begin Code string const expression at line number 129
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 129
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code loop expression at line number 130
label17:
# Begin Code lt expression at line number 130
# Begin Code objectID expression at line number 130
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code objectID expression at line number 130
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	lw	$t1 -20($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label19
	la	$a0 bool_const0
	b	label20
label19:
	la	$a0 bool_const1
label20:
# End Code lt expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label18
# Begin Code block epression at line number 131
# Begin Code disptach expression at line number 132
# Begin Code disptach expression at line number 132
# Begin Code objectID expression at line number 132
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 132
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 132
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 132
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 132
	move	$a0 $s0
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 132
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 133
# Begin Code string const expression at line number 133
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 133
	move	$a0 $s0
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 133
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 134
# Begin Code plus expression at line number 134
# Begin Code objectID expression at line number 134
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code objectID expression at line number 134
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# End Code block epression.
	b	label17
label18:
	li	$a0 0
# End Code loop expression.
# Begin Code disptach expression at line number 137
# Begin Code string const expression at line number 137
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 137
	move	$a0 $s0
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 137
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 138
	move	$a0 $s0
# End Code block epression.
# End Code let expression.
# End Code let expression.
	addiu	$sp $sp 52
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method num_cells
	.globl	CellularAutomaton.num_cells
CellularAutomaton.num_cells:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code disptach expression at line number 144
# Begin Code objectID expression at line number 144
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 144
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method num_cells
# Begin Emitting code for method cell
	.globl	CellularAutomaton.cell
CellularAutomaton.cell:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -28
	move	$s0 $a0
# Begin Code cond expression at line number 148
# Begin Code lt expression at line number 148
# Begin Code sub expression at line number 148
# Begin Code objectID expression at line number 148
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 148
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 148
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label28
	la	$a0 bool_const0
	b	label29
label28:
	la	$a0 bool_const1
label29:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label26
# Begin Code string const expression at line number 149
	la	$a0 str_const2
# End Code string const expression.
	b	label27
label26:
# Begin Code disptach expression at line number 151
# Begin Code objectID expression at line number 151
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 151
	la	$a0 int_const11
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 151
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 151
	jal	_dispatch_abort
label30:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
label27:
# End Code cond expression.
	addiu	$sp $sp 28
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell
# Begin Emitting code for method north
	.globl	CellularAutomaton.north
CellularAutomaton.north:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -28
	move	$s0 $a0
# Begin Code cond expression at line number 156
# Begin Code lt expression at line number 156
# Begin Code sub expression at line number 156
# Begin Code objectID expression at line number 156
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 156
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 156
	la	$a0 int_const10
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label33
	la	$a0 bool_const0
	b	label34
label33:
	la	$a0 bool_const1
label34:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label31
# Begin Code string const expression at line number 157
	la	$a0 str_const2
# End Code string const expression.
	b	label32
label31:
# Begin Code disptach expression at line number 159
# Begin Code sub expression at line number 159
# Begin Code objectID expression at line number 159
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 159
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 159
	move	$a0 $s0
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 159
	jal	_dispatch_abort
label35:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
label32:
# End Code cond expression.
	addiu	$sp $sp 28
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method north
# Begin Emitting code for method south
	.globl	CellularAutomaton.south
CellularAutomaton.south:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -28
	move	$s0 $a0
# Begin Code cond expression at line number 164
# Begin Code lt expression at line number 164
# Begin Code objectID expression at line number 164
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 164
# Begin Code objectID expression at line number 164
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code objectID expression at line number 164
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label38
	la	$a0 bool_const0
	b	label39
label38:
	la	$a0 bool_const1
label39:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label36
# Begin Code string const expression at line number 165
	la	$a0 str_const2
# End Code string const expression.
	b	label37
label36:
# Begin Code disptach expression at line number 167
# Begin Code plus expression at line number 167
# Begin Code objectID expression at line number 167
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 167
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 167
	move	$a0 $s0
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 167
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
label37:
# End Code cond expression.
	addiu	$sp $sp 28
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method south
# Begin Emitting code for method east
	.globl	CellularAutomaton.east
CellularAutomaton.east:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code cond expression at line number 172
# Begin Code eq expression at line number 172
# Begin Code mul expression at line number 172
# Begin Code divide expression at line number 172
# Begin Code plus expression at line number 172
# Begin Code objectID expression at line number 172
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 172
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 172
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 172
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 172
# Begin Code objectID expression at line number 172
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 172
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label43
	la	$a1 bool_const0
	jal	equality_test
label43:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label41
# Begin Code string const expression at line number 173
	la	$a0 str_const2
# End Code string const expression.
	b	label42
label41:
# Begin Code disptach expression at line number 175
# Begin Code plus expression at line number 175
# Begin Code objectID expression at line number 175
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 175
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 175
	move	$a0 $s0
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 175
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
label42:
# End Code cond expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method east
# Begin Emitting code for method west
	.globl	CellularAutomaton.west
CellularAutomaton.west:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -36
	move	$s0 $a0
# Begin Code cond expression at line number 180
# Begin Code eq expression at line number 180
# Begin Code objectID expression at line number 180
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 180
	la	$a0 int_const10
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label47
	la	$a1 bool_const0
	jal	equality_test
label47:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label45
# Begin Code string const expression at line number 181
	la	$a0 str_const2
# End Code string const expression.
	b	label46
label45:
# Begin Code cond expression at line number 183
# Begin Code eq expression at line number 183
# Begin Code mul expression at line number 183
# Begin Code divide expression at line number 183
# Begin Code objectID expression at line number 183
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 183
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 183
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 183
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label50
	la	$a1 bool_const0
	jal	equality_test
label50:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label48
# Begin Code string const expression at line number 184
	la	$a0 str_const2
# End Code string const expression.
	b	label49
label48:
# Begin Code disptach expression at line number 186
# Begin Code sub expression at line number 186
# Begin Code objectID expression at line number 186
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 186
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 186
	move	$a0 $s0
	bne	$a0 $zero label51
	la	$a0 str_const0
	li	$t1 186
	jal	_dispatch_abort
label51:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
label49:
# End Code cond expression.
label46:
# End Code cond expression.
	addiu	$sp $sp 36
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method west
# Begin Emitting code for method northwest
	.globl	CellularAutomaton.northwest
CellularAutomaton.northwest:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code cond expression at line number 191
# Begin Code lt expression at line number 191
# Begin Code sub expression at line number 191
# Begin Code objectID expression at line number 191
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 191
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 191
	la	$a0 int_const10
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label54
	la	$a0 bool_const0
	b	label55
label54:
	la	$a0 bool_const1
label55:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label52
# Begin Code string const expression at line number 192
	la	$a0 str_const2
# End Code string const expression.
	b	label53
label52:
# Begin Code cond expression at line number 193
# Begin Code eq expression at line number 193
# Begin Code mul expression at line number 193
# Begin Code divide expression at line number 193
# Begin Code objectID expression at line number 193
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 193
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 193
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 193
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label58
	la	$a1 bool_const0
	jal	equality_test
label58:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label56
# Begin Code string const expression at line number 194
	la	$a0 str_const2
# End Code string const expression.
	b	label57
label56:
# Begin Code disptach expression at line number 196
# Begin Code sub expression at line number 196
# Begin Code objectID expression at line number 196
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 196
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 196
	move	$a0 $s0
	bne	$a0 $zero label59
	la	$a0 str_const0
	li	$t1 196
	jal	_dispatch_abort
label59:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
label57:
# End Code cond expression.
label53:
# End Code cond expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method northwest
# Begin Emitting code for method northeast
	.globl	CellularAutomaton.northeast
CellularAutomaton.northeast:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -48
	move	$s0 $a0
# Begin Code cond expression at line number 201
# Begin Code lt expression at line number 201
# Begin Code sub expression at line number 201
# Begin Code objectID expression at line number 201
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 201
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 201
	la	$a0 int_const10
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label62
	la	$a0 bool_const0
	b	label63
label62:
	la	$a0 bool_const1
label63:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label60
# Begin Code string const expression at line number 202
	la	$a0 str_const2
# End Code string const expression.
	b	label61
label60:
# Begin Code cond expression at line number 203
# Begin Code eq expression at line number 203
# Begin Code mul expression at line number 203
# Begin Code divide expression at line number 203
# Begin Code plus expression at line number 203
# Begin Code objectID expression at line number 203
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 203
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 203
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 203
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 203
# Begin Code objectID expression at line number 203
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 203
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label66
	la	$a1 bool_const0
	jal	equality_test
label66:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label64
# Begin Code string const expression at line number 204
	la	$a0 str_const2
# End Code string const expression.
	b	label65
label64:
# Begin Code disptach expression at line number 206
# Begin Code plus expression at line number 206
# Begin Code objectID expression at line number 206
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 206
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 206
	move	$a0 $s0
	bne	$a0 $zero label67
	la	$a0 str_const0
	li	$t1 206
	jal	_dispatch_abort
label67:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
label65:
# End Code cond expression.
label61:
# End Code cond expression.
	addiu	$sp $sp 48
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method northeast
# Begin Emitting code for method southeast
	.globl	CellularAutomaton.southeast
CellularAutomaton.southeast:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -48
	move	$s0 $a0
# Begin Code cond expression at line number 211
# Begin Code lt expression at line number 211
# Begin Code objectID expression at line number 211
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 211
# Begin Code objectID expression at line number 211
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code objectID expression at line number 211
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label70
	la	$a0 bool_const0
	b	label71
label70:
	la	$a0 bool_const1
label71:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label68
# Begin Code string const expression at line number 212
	la	$a0 str_const2
# End Code string const expression.
	b	label69
label68:
# Begin Code cond expression at line number 213
# Begin Code eq expression at line number 213
# Begin Code mul expression at line number 213
# Begin Code divide expression at line number 213
# Begin Code plus expression at line number 213
# Begin Code objectID expression at line number 213
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 213
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 213
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 213
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 213
# Begin Code objectID expression at line number 213
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 213
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label74
	la	$a1 bool_const0
	jal	equality_test
label74:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label72
# Begin Code string const expression at line number 214
	la	$a0 str_const2
# End Code string const expression.
	b	label73
label72:
# Begin Code disptach expression at line number 216
# Begin Code plus expression at line number 216
# Begin Code objectID expression at line number 216
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 216
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 216
	move	$a0 $s0
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 216
	jal	_dispatch_abort
label75:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
# End Code disptach expression.
label73:
# End Code cond expression.
label69:
# End Code cond expression.
	addiu	$sp $sp 48
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method southeast
# Begin Emitting code for method southwest
	.globl	CellularAutomaton.southwest
CellularAutomaton.southwest:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code cond expression at line number 221
# Begin Code lt expression at line number 221
# Begin Code objectID expression at line number 221
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code plus expression at line number 221
# Begin Code objectID expression at line number 221
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code objectID expression at line number 221
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	lw	$t1 -12($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label78
	la	$a0 bool_const0
	b	label79
label78:
	la	$a0 bool_const1
label79:
# End Code lt expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label76
# Begin Code string const expression at line number 222
	la	$a0 str_const2
# End Code string const expression.
	b	label77
label76:
# Begin Code cond expression at line number 223
# Begin Code eq expression at line number 223
# Begin Code mul expression at line number 223
# Begin Code divide expression at line number 223
# Begin Code objectID expression at line number 223
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 223
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 223
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 223
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label82
	la	$a1 bool_const0
	jal	equality_test
label82:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label80
# Begin Code string const expression at line number 224
	la	$a0 str_const2
# End Code string const expression.
	b	label81
label80:
# Begin Code disptach expression at line number 226
# Begin Code sub expression at line number 226
# Begin Code objectID expression at line number 226
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 226
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 226
	move	$a0 $s0
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 226
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
# End Code disptach expression.
label81:
# End Code cond expression.
label77:
# End Code cond expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method southwest
# Begin Emitting code for method neighbors
	.globl	CellularAutomaton.neighbors
CellularAutomaton.neighbors:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -104
	move	$s0 $a0
# Begin Code block epression at line number 231
# Begin Code plus expression at line number 239
# Begin Code plus expression at line number 238
# Begin Code plus expression at line number 237
# Begin Code plus expression at line number 236
# Begin Code plus expression at line number 235
# Begin Code plus expression at line number 234
# Begin Code plus expression at line number 233
# Begin Code cond expression at line number 232
# Begin Code eq expression at line number 232
# Begin Code disptach expression at line number 232
# Begin Code objectID expression at line number 232
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 232
	move	$a0 $s0
	bne	$a0 $zero label86
	la	$a0 str_const0
	li	$t1 232
	jal	_dispatch_abort
label86:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code string const expression at line number 232
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label87
	la	$a1 bool_const0
	jal	equality_test
label87:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label84
# Begin Code int const expression at line number 232
	la	$a0 int_const11
# End Code int const expression.
	b	label85
label84:
# Begin Code int const expression at line number 232
	la	$a0 int_const10
# End Code int const expression.
label85:
# End Code cond expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 233
# Begin Code eq expression at line number 233
# Begin Code disptach expression at line number 233
# Begin Code objectID expression at line number 233
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 233
	move	$a0 $s0
	bne	$a0 $zero label90
	la	$a0 str_const0
	li	$t1 233
	jal	_dispatch_abort
label90:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 233
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label91
	la	$a1 bool_const0
	jal	equality_test
label91:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label88
# Begin Code int const expression at line number 233
	la	$a0 int_const11
# End Code int const expression.
	b	label89
label88:
# Begin Code int const expression at line number 233
	la	$a0 int_const10
# End Code int const expression.
label89:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 234
# Begin Code eq expression at line number 234
# Begin Code disptach expression at line number 234
# Begin Code objectID expression at line number 234
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 234
	move	$a0 $s0
	bne	$a0 $zero label94
	la	$a0 str_const0
	li	$t1 234
	jal	_dispatch_abort
label94:
	lw	$t1 8($a0)
	lw	$t1 60($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 234
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label95
	la	$a1 bool_const0
	jal	equality_test
label95:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label92
# Begin Code int const expression at line number 234
	la	$a0 int_const11
# End Code int const expression.
	b	label93
label92:
# Begin Code int const expression at line number 234
	la	$a0 int_const10
# End Code int const expression.
label93:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 235
# Begin Code eq expression at line number 235
# Begin Code disptach expression at line number 235
# Begin Code objectID expression at line number 235
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 235
	move	$a0 $s0
	bne	$a0 $zero label98
	la	$a0 str_const0
	li	$t1 235
	jal	_dispatch_abort
label98:
	lw	$t1 8($a0)
	lw	$t1 64($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 235
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label99
	la	$a1 bool_const0
	jal	equality_test
label99:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label96
# Begin Code int const expression at line number 235
	la	$a0 int_const11
# End Code int const expression.
	b	label97
label96:
# Begin Code int const expression at line number 235
	la	$a0 int_const10
# End Code int const expression.
label97:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 236
# Begin Code eq expression at line number 236
# Begin Code disptach expression at line number 236
# Begin Code objectID expression at line number 236
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 236
	move	$a0 $s0
	bne	$a0 $zero label102
	la	$a0 str_const0
	li	$t1 236
	jal	_dispatch_abort
label102:
	lw	$t1 8($a0)
	lw	$t1 72($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 236
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label103
	la	$a1 bool_const0
	jal	equality_test
label103:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label100
# Begin Code int const expression at line number 236
	la	$a0 int_const11
# End Code int const expression.
	b	label101
label100:
# Begin Code int const expression at line number 236
	la	$a0 int_const10
# End Code int const expression.
label101:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 237
# Begin Code eq expression at line number 237
# Begin Code disptach expression at line number 237
# Begin Code objectID expression at line number 237
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 237
	move	$a0 $s0
	bne	$a0 $zero label106
	la	$a0 str_const0
	li	$t1 237
	jal	_dispatch_abort
label106:
	lw	$t1 8($a0)
	lw	$t1 68($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 237
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label107
	la	$a1 bool_const0
	jal	equality_test
label107:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label104
# Begin Code int const expression at line number 237
	la	$a0 int_const11
# End Code int const expression.
	b	label105
label104:
# Begin Code int const expression at line number 237
	la	$a0 int_const10
# End Code int const expression.
label105:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 238
# Begin Code eq expression at line number 238
# Begin Code disptach expression at line number 238
# Begin Code objectID expression at line number 238
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 238
	move	$a0 $s0
	bne	$a0 $zero label110
	la	$a0 str_const0
	li	$t1 238
	jal	_dispatch_abort
label110:
	lw	$t1 8($a0)
	lw	$t1 76($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 238
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label111
	la	$a1 bool_const0
	jal	equality_test
label111:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label108
# Begin Code int const expression at line number 238
	la	$a0 int_const11
# End Code int const expression.
	b	label109
label108:
# Begin Code int const expression at line number 238
	la	$a0 int_const10
# End Code int const expression.
label109:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 239
# Begin Code eq expression at line number 239
# Begin Code disptach expression at line number 239
# Begin Code objectID expression at line number 239
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 239
	move	$a0 $s0
	bne	$a0 $zero label114
	la	$a0 str_const0
	li	$t1 239
	jal	_dispatch_abort
label114:
	lw	$t1 8($a0)
	lw	$t1 80($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 239
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label115
	la	$a1 bool_const0
	jal	equality_test
label115:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label112
# Begin Code int const expression at line number 239
	la	$a0 int_const11
# End Code int const expression.
	b	label113
label112:
# Begin Code int const expression at line number 239
	la	$a0 int_const10
# End Code int const expression.
label113:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
# End Code block epression.
	addiu	$sp $sp 104
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method neighbors
# Begin Emitting code for method cell_at_next_evolution
	.globl	CellularAutomaton.cell_at_next_evolution
CellularAutomaton.cell_at_next_evolution:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -36
	move	$s0 $a0
# Begin Code cond expression at line number 249
# Begin Code eq expression at line number 249
# Begin Code disptach expression at line number 249
# Begin Code objectID expression at line number 249
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 249
	move	$a0 $s0
	bne	$a0 $zero label118
	la	$a0 str_const0
	li	$t1 249
	jal	_dispatch_abort
label118:
	lw	$t1 8($a0)
	lw	$t1 84($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 249
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label119
	la	$a1 bool_const0
	jal	equality_test
label119:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label116
# Begin Code string const expression at line number 250
	la	$a0 str_const3
# End Code string const expression.
	b	label117
label116:
# Begin Code cond expression at line number 252
# Begin Code eq expression at line number 252
# Begin Code disptach expression at line number 252
# Begin Code objectID expression at line number 252
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 252
	move	$a0 $s0
	bne	$a0 $zero label122
	la	$a0 str_const0
	li	$t1 252
	jal	_dispatch_abort
label122:
	lw	$t1 8($a0)
	lw	$t1 84($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 252
	la	$a0 int_const12
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label123
	la	$a1 bool_const0
	jal	equality_test
label123:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label120
# Begin Code cond expression at line number 253
# Begin Code eq expression at line number 253
# Begin Code disptach expression at line number 253
# Begin Code objectID expression at line number 253
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 253
	move	$a0 $s0
	bne	$a0 $zero label126
	la	$a0 str_const0
	li	$t1 253
	jal	_dispatch_abort
label126:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code string const expression at line number 253
	la	$a0 str_const3
# End Code string const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label127
	la	$a1 bool_const0
	jal	equality_test
label127:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label124
# Begin Code string const expression at line number 254
	la	$a0 str_const3
# End Code string const expression.
	b	label125
label124:
# Begin Code string const expression at line number 256
	la	$a0 str_const4
# End Code string const expression.
label125:
# End Code cond expression.
	b	label121
label120:
# Begin Code string const expression at line number 259
	la	$a0 str_const4
# End Code string const expression.
label121:
# End Code cond expression.
label117:
# End Code cond expression.
	addiu	$sp $sp 36
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell_at_next_evolution
# Begin Emitting code for method evolve
	.globl	CellularAutomaton.evolve
CellularAutomaton.evolve:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code let expression at line number 265
# Begin Code int const expression at line number 265
	la	$a0 int_const10
# End Code int const expression.
	sw	$a0 -12($fp)
# Begin Code let expression at line number 266
# Begin Code disptach expression at line number 266
# Begin Code objectID expression at line number 266
	move	$a0 $s0
	bne	$a0 $zero label128
	la	$a0 str_const0
	li	$t1 266
	jal	_dispatch_abort
label128:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code let expression at line number 267
	la	$a0 String_protObj
	jal	Object.copy
	sw	$a0 -20($fp)
# Begin Code block epression at line number 268
# Begin Code loop expression at line number 269
label129:
# Begin Code lt expression at line number 269
# Begin Code objectID expression at line number 269
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -24($fp)
# Begin Code objectID expression at line number 269
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	lw	$t1 -24($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label131
	la	$a0 bool_const0
	b	label132
label131:
	la	$a0 bool_const1
label132:
# End Code lt expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label130
# Begin Code block epression at line number 270
# Begin Code assign expression at line number 271
# Begin Code disptach expression at line number 271
# Begin Code disptach expression at line number 271
# Begin Code objectID expression at line number 271
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 271
	move	$a0 $s0
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 271
	jal	_dispatch_abort
label133:
	lw	$t1 8($a0)
	lw	$t1 88($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 271
# Loading local object into ACC
	lw	$a0 -20($fp)
# End Code objectID expression.
	bne	$a0 $zero label134
	la	$a0 str_const0
	li	$t1 271
	jal	_dispatch_abort
label134:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -20($fp)
# End Code assign expression.
# Begin Code assign expression at line number 272
# Begin Code plus expression at line number 272
# Begin Code objectID expression at line number 272
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -24($fp)
# Begin Code int const expression at line number 272
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -24($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# End Code block epression.
	b	label129
label130:
	li	$a0 0
# End Code loop expression.
# Begin Code assign expression at line number 275
# Begin Code objectID expression at line number 275
# Loading local object into ACC
	lw	$a0 -20($fp)
# End Code objectID expression.
	sw	$a0 24($s0)
	addiu	$a1 $s0 6
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code objectID expression at line number 276
	move	$a0 $s0
# End Code block epression.
# End Code let expression.
# End Code let expression.
# End Code let expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method evolve
# Begin Emitting code for method option
	.globl	CellularAutomaton.option
CellularAutomaton.option:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -196
	move	$s0 $a0
# Begin Code block epression at line number 285
# Begin Code let expression at line number 286
	la	$a0 Int_protObj
	jal	Object.copy
	sw	$a0 -12($fp)
# Begin Code block epression at line number 287
# Begin Code disptach expression at line number 288
# Begin Code string const expression at line number 288
	la	$a0 str_const5
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 288
	move	$a0 $s0
	bne	$a0 $zero label135
	la	$a0 str_const0
	li	$t1 288
	jal	_dispatch_abort
label135:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 289
# Begin Code string const expression at line number 289
	la	$a0 str_const6
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 289
	move	$a0 $s0
	bne	$a0 $zero label136
	la	$a0 str_const0
	li	$t1 289
	jal	_dispatch_abort
label136:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 290
# Begin Code string const expression at line number 290
	la	$a0 str_const7
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 290
	move	$a0 $s0
	bne	$a0 $zero label137
	la	$a0 str_const0
	li	$t1 290
	jal	_dispatch_abort
label137:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 291
# Begin Code string const expression at line number 291
	la	$a0 str_const8
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 291
	move	$a0 $s0
	bne	$a0 $zero label138
	la	$a0 str_const0
	li	$t1 291
	jal	_dispatch_abort
label138:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 292
# Begin Code string const expression at line number 292
	la	$a0 str_const9
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 292
	move	$a0 $s0
	bne	$a0 $zero label139
	la	$a0 str_const0
	li	$t1 292
	jal	_dispatch_abort
label139:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 293
# Begin Code string const expression at line number 293
	la	$a0 str_const10
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 293
	move	$a0 $s0
	bne	$a0 $zero label140
	la	$a0 str_const0
	li	$t1 293
	jal	_dispatch_abort
label140:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 294
# Begin Code string const expression at line number 294
	la	$a0 str_const11
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 294
	move	$a0 $s0
	bne	$a0 $zero label141
	la	$a0 str_const0
	li	$t1 294
	jal	_dispatch_abort
label141:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 295
# Begin Code string const expression at line number 295
	la	$a0 str_const12
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 295
	move	$a0 $s0
	bne	$a0 $zero label142
	la	$a0 str_const0
	li	$t1 295
	jal	_dispatch_abort
label142:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 296
# Begin Code string const expression at line number 296
	la	$a0 str_const13
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 296
	move	$a0 $s0
	bne	$a0 $zero label143
	la	$a0 str_const0
	li	$t1 296
	jal	_dispatch_abort
label143:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 297
# Begin Code string const expression at line number 297
	la	$a0 str_const14
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 297
	move	$a0 $s0
	bne	$a0 $zero label144
	la	$a0 str_const0
	li	$t1 297
	jal	_dispatch_abort
label144:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 298
# Begin Code string const expression at line number 298
	la	$a0 str_const15
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 298
	move	$a0 $s0
	bne	$a0 $zero label145
	la	$a0 str_const0
	li	$t1 298
	jal	_dispatch_abort
label145:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 299
# Begin Code string const expression at line number 299
	la	$a0 str_const16
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 299
	move	$a0 $s0
	bne	$a0 $zero label146
	la	$a0 str_const0
	li	$t1 299
	jal	_dispatch_abort
label146:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 300
# Begin Code string const expression at line number 300
	la	$a0 str_const17
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 300
	move	$a0 $s0
	bne	$a0 $zero label147
	la	$a0 str_const0
	li	$t1 300
	jal	_dispatch_abort
label147:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 301
# Begin Code string const expression at line number 301
	la	$a0 str_const18
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 301
	move	$a0 $s0
	bne	$a0 $zero label148
	la	$a0 str_const0
	li	$t1 301
	jal	_dispatch_abort
label148:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 302
# Begin Code string const expression at line number 302
	la	$a0 str_const19
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 302
	move	$a0 $s0
	bne	$a0 $zero label149
	la	$a0 str_const0
	li	$t1 302
	jal	_dispatch_abort
label149:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 303
# Begin Code string const expression at line number 303
	la	$a0 str_const20
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 303
	move	$a0 $s0
	bne	$a0 $zero label150
	la	$a0 str_const0
	li	$t1 303
	jal	_dispatch_abort
label150:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 304
# Begin Code string const expression at line number 304
	la	$a0 str_const21
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 304
	move	$a0 $s0
	bne	$a0 $zero label151
	la	$a0 str_const0
	li	$t1 304
	jal	_dispatch_abort
label151:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 305
# Begin Code string const expression at line number 305
	la	$a0 str_const22
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 305
	move	$a0 $s0
	bne	$a0 $zero label152
	la	$a0 str_const0
	li	$t1 305
	jal	_dispatch_abort
label152:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 306
# Begin Code string const expression at line number 306
	la	$a0 str_const23
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 306
	move	$a0 $s0
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 306
	jal	_dispatch_abort
label153:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 307
# Begin Code string const expression at line number 307
	la	$a0 str_const24
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 307
	move	$a0 $s0
	bne	$a0 $zero label154
	la	$a0 str_const0
	li	$t1 307
	jal	_dispatch_abort
label154:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 308
# Begin Code string const expression at line number 308
	la	$a0 str_const25
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 308
	move	$a0 $s0
	bne	$a0 $zero label155
	la	$a0 str_const0
	li	$t1 308
	jal	_dispatch_abort
label155:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 309
# Begin Code string const expression at line number 309
	la	$a0 str_const26
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 309
	move	$a0 $s0
	bne	$a0 $zero label156
	la	$a0 str_const0
	li	$t1 309
	jal	_dispatch_abort
label156:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 310
# Begin Code string const expression at line number 310
	la	$a0 str_const27
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 310
	move	$a0 $s0
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label157:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 311
# Begin Code disptach expression at line number 311
# Begin Code objectID expression at line number 311
	move	$a0 $s0
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 311
	jal	_dispatch_abort
label158:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# Begin Code disptach expression at line number 312
# Begin Code string const expression at line number 312
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 312
	move	$a0 $s0
	bne	$a0 $zero label159
	la	$a0 str_const0
	li	$t1 312
	jal	_dispatch_abort
label159:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code cond expression at line number 313
# Begin Code eq expression at line number 313
# Begin Code objectID expression at line number 313
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 313
	la	$a0 int_const11
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label162
	la	$a1 bool_const0
	jal	equality_test
label162:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label160
# Begin Code string const expression at line number 314
	la	$a0 str_const28
# End Code string const expression.
	b	label161
label160:
# Begin Code cond expression at line number 315
# Begin Code eq expression at line number 315
# Begin Code objectID expression at line number 315
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 315
	la	$a0 int_const12
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label165
	la	$a1 bool_const0
	jal	equality_test
label165:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label163
# Begin Code string const expression at line number 316
	la	$a0 str_const29
# End Code string const expression.
	b	label164
label163:
# Begin Code cond expression at line number 317
# Begin Code eq expression at line number 317
# Begin Code objectID expression at line number 317
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 317
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label168
	la	$a1 bool_const0
	jal	equality_test
label168:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label166
# Begin Code string const expression at line number 318
	la	$a0 str_const30
# End Code string const expression.
	b	label167
label166:
# Begin Code cond expression at line number 319
# Begin Code eq expression at line number 319
# Begin Code objectID expression at line number 319
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 319
	la	$a0 int_const4
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label171
	la	$a1 bool_const0
	jal	equality_test
label171:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label169
# Begin Code string const expression at line number 320
	la	$a0 str_const31
# End Code string const expression.
	b	label170
label169:
# Begin Code cond expression at line number 321
# Begin Code eq expression at line number 321
# Begin Code objectID expression at line number 321
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 321
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label174
	la	$a1 bool_const0
	jal	equality_test
label174:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label172
# Begin Code string const expression at line number 322
	la	$a0 str_const32
# End Code string const expression.
	b	label173
label172:
# Begin Code cond expression at line number 323
# Begin Code eq expression at line number 323
# Begin Code objectID expression at line number 323
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 323
	la	$a0 int_const13
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label177
	la	$a1 bool_const0
	jal	equality_test
label177:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label175
# Begin Code string const expression at line number 324
	la	$a0 str_const33
# End Code string const expression.
	b	label176
label175:
# Begin Code cond expression at line number 325
# Begin Code eq expression at line number 325
# Begin Code objectID expression at line number 325
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 325
	la	$a0 int_const7
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label180
	la	$a1 bool_const0
	jal	equality_test
label180:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label178
# Begin Code string const expression at line number 326
	la	$a0 str_const34
# End Code string const expression.
	b	label179
label178:
# Begin Code cond expression at line number 327
# Begin Code eq expression at line number 327
# Begin Code objectID expression at line number 327
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 327
	la	$a0 int_const14
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label183
	la	$a1 bool_const0
	jal	equality_test
label183:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label181
# Begin Code string const expression at line number 328
	la	$a0 str_const35
# End Code string const expression.
	b	label182
label181:
# Begin Code cond expression at line number 329
# Begin Code eq expression at line number 329
# Begin Code objectID expression at line number 329
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 329
	la	$a0 int_const15
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label186
	la	$a1 bool_const0
	jal	equality_test
label186:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label184
# Begin Code string const expression at line number 330
	la	$a0 str_const36
# End Code string const expression.
	b	label185
label184:
# Begin Code cond expression at line number 331
# Begin Code eq expression at line number 331
# Begin Code objectID expression at line number 331
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 331
	la	$a0 int_const16
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label189
	la	$a1 bool_const0
	jal	equality_test
label189:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label187
# Begin Code string const expression at line number 332
	la	$a0 str_const37
# End Code string const expression.
	b	label188
label187:
# Begin Code cond expression at line number 333
# Begin Code eq expression at line number 333
# Begin Code objectID expression at line number 333
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 333
	la	$a0 int_const17
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label192
	la	$a1 bool_const0
	jal	equality_test
label192:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label190
# Begin Code string const expression at line number 334
	la	$a0 str_const38
# End Code string const expression.
	b	label191
label190:
# Begin Code cond expression at line number 335
# Begin Code eq expression at line number 335
# Begin Code objectID expression at line number 335
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 335
	la	$a0 int_const18
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label195
	la	$a1 bool_const0
	jal	equality_test
label195:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label193
# Begin Code string const expression at line number 336
	la	$a0 str_const39
# End Code string const expression.
	b	label194
label193:
# Begin Code cond expression at line number 337
# Begin Code eq expression at line number 337
# Begin Code objectID expression at line number 337
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 337
	la	$a0 int_const19
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label198
	la	$a1 bool_const0
	jal	equality_test
label198:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label196
# Begin Code string const expression at line number 338
	la	$a0 str_const40
# End Code string const expression.
	b	label197
label196:
# Begin Code cond expression at line number 339
# Begin Code eq expression at line number 339
# Begin Code objectID expression at line number 339
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 339
	la	$a0 int_const20
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label201
	la	$a1 bool_const0
	jal	equality_test
label201:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label199
# Begin Code string const expression at line number 340
	la	$a0 str_const41
# End Code string const expression.
	b	label200
label199:
# Begin Code cond expression at line number 341
# Begin Code eq expression at line number 341
# Begin Code objectID expression at line number 341
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 341
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label204
	la	$a1 bool_const0
	jal	equality_test
label204:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label202
# Begin Code string const expression at line number 342
	la	$a0 str_const42
# End Code string const expression.
	b	label203
label202:
# Begin Code cond expression at line number 343
# Begin Code eq expression at line number 343
# Begin Code objectID expression at line number 343
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 343
	la	$a0 int_const3
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label207
	la	$a1 bool_const0
	jal	equality_test
label207:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label205
# Begin Code string const expression at line number 344
	la	$a0 str_const43
# End Code string const expression.
	b	label206
label205:
# Begin Code cond expression at line number 345
# Begin Code eq expression at line number 345
# Begin Code objectID expression at line number 345
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 345
	la	$a0 int_const21
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label210
	la	$a1 bool_const0
	jal	equality_test
label210:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label208
# Begin Code string const expression at line number 346
	la	$a0 str_const44
# End Code string const expression.
	b	label209
label208:
# Begin Code cond expression at line number 347
# Begin Code eq expression at line number 347
# Begin Code objectID expression at line number 347
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 347
	la	$a0 int_const22
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label213
	la	$a1 bool_const0
	jal	equality_test
label213:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label211
# Begin Code string const expression at line number 348
	la	$a0 str_const45
# End Code string const expression.
	b	label212
label211:
# Begin Code cond expression at line number 349
# Begin Code eq expression at line number 349
# Begin Code objectID expression at line number 349
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 349
	la	$a0 int_const23
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label216
	la	$a1 bool_const0
	jal	equality_test
label216:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label214
# Begin Code string const expression at line number 350
	la	$a0 str_const46
# End Code string const expression.
	b	label215
label214:
# Begin Code cond expression at line number 351
# Begin Code eq expression at line number 351
# Begin Code objectID expression at line number 351
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 351
	la	$a0 int_const5
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label219
	la	$a1 bool_const0
	jal	equality_test
label219:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label217
# Begin Code string const expression at line number 352
	la	$a0 str_const47
# End Code string const expression.
	b	label218
label217:
# Begin Code cond expression at line number 353
# Begin Code eq expression at line number 353
# Begin Code objectID expression at line number 353
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 353
	la	$a0 int_const6
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label222
	la	$a1 bool_const0
	jal	equality_test
label222:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label220
# Begin Code string const expression at line number 354
	la	$a0 str_const48
# End Code string const expression.
	b	label221
label220:
# Begin Code string const expression at line number 356
	la	$a0 str_const49
# End Code string const expression.
label221:
# End Code cond expression.
label218:
# End Code cond expression.
label215:
# End Code cond expression.
label212:
# End Code cond expression.
label209:
# End Code cond expression.
label206:
# End Code cond expression.
label203:
# End Code cond expression.
label200:
# End Code cond expression.
label197:
# End Code cond expression.
label194:
# End Code cond expression.
label191:
# End Code cond expression.
label188:
# End Code cond expression.
label185:
# End Code cond expression.
label182:
# End Code cond expression.
label179:
# End Code cond expression.
label176:
# End Code cond expression.
label173:
# End Code cond expression.
label170:
# End Code cond expression.
label167:
# End Code cond expression.
label164:
# End Code cond expression.
label161:
# End Code cond expression.
# End Code block epression.
# End Code let expression.
# End Code block epression.
	addiu	$sp $sp 196
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method option
# Begin Emitting code for method prompt
	.globl	CellularAutomaton.prompt
CellularAutomaton.prompt:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -32
	move	$s0 $a0
# Begin Code block epression at line number 367
# Begin Code let expression at line number 368
	la	$a0 String_protObj
	jal	Object.copy
	sw	$a0 -12($fp)
# Begin Code block epression at line number 369
# Begin Code disptach expression at line number 370
# Begin Code string const expression at line number 370
	la	$a0 str_const50
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 370
	move	$a0 $s0
	bne	$a0 $zero label223
	la	$a0 str_const0
	li	$t1 370
	jal	_dispatch_abort
label223:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 371
# Begin Code string const expression at line number 371
	la	$a0 str_const51
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 371
	move	$a0 $s0
	bne	$a0 $zero label224
	la	$a0 str_const0
	li	$t1 371
	jal	_dispatch_abort
label224:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 372
# Begin Code disptach expression at line number 372
# Begin Code objectID expression at line number 372
	move	$a0 $s0
	bne	$a0 $zero label225
	la	$a0 str_const0
	li	$t1 372
	jal	_dispatch_abort
label225:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# Begin Code disptach expression at line number 373
# Begin Code string const expression at line number 373
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 373
	move	$a0 $s0
	bne	$a0 $zero label226
	la	$a0 str_const0
	li	$t1 373
	jal	_dispatch_abort
label226:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code cond expression at line number 374
# Begin Code eq expression at line number 374
# Begin Code objectID expression at line number 374
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 374
	la	$a0 str_const52
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label229
	la	$a1 bool_const0
	jal	equality_test
label229:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label227
# Begin Code bool expression at line number 375
	la	$a0 bool_const0
# End Code bool expression.
	b	label228
label227:
# Begin Code bool expression at line number 377
	la	$a0 bool_const1
# End Code bool expression.
label228:
# End Code cond expression.
# End Code block epression.
# End Code let expression.
# End Code block epression.
	addiu	$sp $sp 32
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method prompt
# Begin Emitting code for method prompt2
	.globl	CellularAutomaton.prompt2
CellularAutomaton.prompt2:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -32
	move	$s0 $a0
# Begin Code let expression at line number 386
	la	$a0 String_protObj
	jal	Object.copy
	sw	$a0 -12($fp)
# Begin Code block epression at line number 387
# Begin Code disptach expression at line number 388
# Begin Code string const expression at line number 388
	la	$a0 str_const53
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 388
	move	$a0 $s0
	bne	$a0 $zero label230
	la	$a0 str_const0
	li	$t1 388
	jal	_dispatch_abort
label230:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 389
# Begin Code string const expression at line number 389
	la	$a0 str_const54
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 389
	move	$a0 $s0
	bne	$a0 $zero label231
	la	$a0 str_const0
	li	$t1 389
	jal	_dispatch_abort
label231:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 390
# Begin Code string const expression at line number 390
	la	$a0 str_const55
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 390
	move	$a0 $s0
	bne	$a0 $zero label232
	la	$a0 str_const0
	li	$t1 390
	jal	_dispatch_abort
label232:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 391
# Begin Code disptach expression at line number 391
# Begin Code objectID expression at line number 391
	move	$a0 $s0
	bne	$a0 $zero label233
	la	$a0 str_const0
	li	$t1 391
	jal	_dispatch_abort
label233:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# Begin Code cond expression at line number 392
# Begin Code eq expression at line number 392
# Begin Code objectID expression at line number 392
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 392
	la	$a0 str_const56
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label236
	la	$a1 bool_const0
	jal	equality_test
label236:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label234
# Begin Code bool expression at line number 393
	la	$a0 bool_const1
# End Code bool expression.
	b	label235
label234:
# Begin Code bool expression at line number 395
	la	$a0 bool_const0
# End Code bool expression.
label235:
# End Code cond expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 32
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method prompt2
# Begin Emitting code for method size_of_board
	.globl	Board.size_of_board
Board.size_of_board:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code disptach expression at line number 52
# Begin Code objectID expression at line number 52
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	bne	$a0 $zero label237
	la	$a0 str_const0
	li	$t1 52
	jal	_dispatch_abort
label237:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method size_of_board
# Begin Emitting code for method board_init
	.globl	Board.board_init
Board.board_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -44
	move	$s0 $a0
# Begin Code let expression at line number 56
# Begin Code disptach expression at line number 56
# Begin Code objectID expression at line number 56
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 56
	move	$a0 $s0
	bne	$a0 $zero label238
	la	$a0 str_const0
	li	$t1 56
	jal	_dispatch_abort
label238:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code block epression at line number 57
# Begin Code cond expression at line number 58
# Begin Code eq expression at line number 58
# Begin Code objectID expression at line number 58
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 58
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label241
	la	$a1 bool_const0
	jal	equality_test
label241:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label239
# Begin Code block epression at line number 59
# Begin Code assign expression at line number 60
# Begin Code int const expression at line number 60
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 61
# Begin Code int const expression at line number 61
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 62
# Begin Code objectID expression at line number 62
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label240
label239:
# Begin Code cond expression at line number 64
# Begin Code eq expression at line number 64
# Begin Code objectID expression at line number 64
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 64
	la	$a0 int_const3
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label244
	la	$a1 bool_const0
	jal	equality_test
label244:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label242
# Begin Code block epression at line number 65
# Begin Code assign expression at line number 66
# Begin Code int const expression at line number 66
	la	$a0 int_const4
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 67
# Begin Code int const expression at line number 67
	la	$a0 int_const4
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 68
# Begin Code objectID expression at line number 68
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label243
label242:
# Begin Code cond expression at line number 70
# Begin Code eq expression at line number 70
# Begin Code objectID expression at line number 70
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 70
	la	$a0 int_const5
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label247
	la	$a1 bool_const0
	jal	equality_test
label247:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label245
# Begin Code block epression at line number 71
# Begin Code assign expression at line number 72
# Begin Code int const expression at line number 72
	la	$a0 int_const4
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 73
# Begin Code int const expression at line number 73
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 74
# Begin Code objectID expression at line number 74
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label246
label245:
# Begin Code cond expression at line number 76
# Begin Code eq expression at line number 76
# Begin Code objectID expression at line number 76
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 76
	la	$a0 int_const6
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label250
	la	$a1 bool_const0
	jal	equality_test
label250:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label248
# Begin Code block epression at line number 77
# Begin Code assign expression at line number 78
# Begin Code int const expression at line number 78
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 79
# Begin Code int const expression at line number 79
	la	$a0 int_const7
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 80
# Begin Code objectID expression at line number 80
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label249
label248:
# Begin Code cond expression at line number 82
# Begin Code eq expression at line number 82
# Begin Code objectID expression at line number 82
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 82
	la	$a0 int_const8
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label253
	la	$a1 bool_const0
	jal	equality_test
label253:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label251
# Begin Code block epression at line number 83
# Begin Code assign expression at line number 84
# Begin Code int const expression at line number 84
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 85
# Begin Code int const expression at line number 85
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 86
# Begin Code objectID expression at line number 86
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label252
label251:
# Begin Code cond expression at line number 88
# Begin Code eq expression at line number 88
# Begin Code objectID expression at line number 88
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 88
	la	$a0 int_const9
# End Code int const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label256
	la	$a1 bool_const0
	jal	equality_test
label256:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label254
# Begin Code block epression at line number 89
# Begin Code assign expression at line number 90
# Begin Code int const expression at line number 90
	la	$a0 int_const7
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 91
# Begin Code int const expression at line number 91
	la	$a0 int_const4
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 92
# Begin Code objectID expression at line number 92
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	b	label255
label254:
# Begin Code block epression at line number 95
# Begin Code assign expression at line number 96
# Begin Code int const expression at line number 96
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 97
# Begin Code int const expression at line number 97
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 98
# Begin Code objectID expression at line number 98
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
label255:
# End Code cond expression.
label252:
# End Code cond expression.
label249:
# End Code cond expression.
label246:
# End Code cond expression.
label243:
# End Code cond expression.
label240:
# End Code cond expression.
# Begin Code objectID expression at line number 101
	move	$a0 $s0
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 44
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method board_init

# end of generated code
