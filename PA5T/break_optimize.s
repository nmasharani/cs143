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
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
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
str_const26:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const11
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A3"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A2"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A1"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"Letter"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const16
	.ascii	"Billy"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const19
	.ascii	"Comp"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const19
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const19
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const8
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const27
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Yo"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const16
	.ascii	"good\n"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"hi"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const19
	.ascii	"jume"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const16
	.ascii	"hello"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	12
	.word	String_dispTab
	.word	int_const28
	.ascii	"This should be 6 and it is: \n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	12
	.word	String_dispTab
	.word	int_const26
	.ascii	"This should be 42 but it is: \n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	12
	.word	String_dispTab
	.word	int_const26
	.ascii	"This should be 48 but it is: \n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const29
	.ascii	"this is a string"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const30
	.ascii	"./break_optimize.cl"
	.byte	0	
	.align	2
	.word	-1
int_const30:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const29:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	16
	.word	-1
int_const28:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const27:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const26:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	30
	.word	-1
int_const25:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const24:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	50
	.word	-1
int_const23:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const22:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	563
	.word	-1
int_const21:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	55
	.word	-1
int_const20:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	89
	.word	-1
int_const19:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const18:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const17:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const16:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const15:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	102
	.word	-1
int_const14:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	77
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	49
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	47
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	111111111111111111111
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	100
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	43
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	56
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	45
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	72
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	42
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const14
	.word	str_const15
	.word	str_const16
	.word	str_const17
	.word	str_const18
	.word	str_const19
	.word	str_const20
	.word	str_const21
	.word	str_const22
	.word	str_const23
	.word	str_const24
	.word	str_const25
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
	.word	Comp_protObj
	.word	Comp_init
	.word	Billy_protObj
	.word	Billy_init
	.word	Letter_protObj
	.word	Letter_init
	.word	A1_protObj
	.word	A1_init
	.word	A2_protObj
	.word	A2_init
	.word	A3_protObj
	.word	A3_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A1_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A2_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A3_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Letter_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Letter.letter
Billy_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Billy.billy
Comp_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Comp.excersise
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
	.word	Main.caser
	.word	Main.args
	.word	Main.a
	.word	Main.make_int
	.word	Main.long
	.word	Main.nest_case
	.word	Main.long_int
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
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
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
A1_protObj:
	.word	9
	.word	3
	.word	A1_dispTab
	.word	-1
A2_protObj:
	.word	10
	.word	3
	.word	A2_dispTab
	.word	-1
A3_protObj:
	.word	11
	.word	3
	.word	A3_dispTab
	.word	-1
Letter_protObj:
	.word	8
	.word	6
	.word	Letter_dispTab
	.word	0
	.word	int_const11
	.word	int_const11
	.word	-1
Billy_protObj:
	.word	7
	.word	7
	.word	Billy_dispTab
	.word	int_const11
	.word	int_const11
	.word	int_const11
	.word	0
	.word	-1
Comp_protObj:
	.word	6
	.word	20
	.word	Comp_dispTab
	.word	int_const11
	.word	int_const11
	.word	int_const11
	.word	int_const11
	.word	str_const26
	.word	str_const26
	.word	str_const26
	.word	bool_const0
	.word	bool_const0
	.word	bool_const0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
Main_protObj:
	.word	5
	.word	16
	.word	Main_dispTab
	.word	int_const11
	.word	0
	.word	0
	.word	0
	.word	int_const11
	.word	str_const26
	.word	int_const11
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const11
	.word	0
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A1_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A2_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	A1_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A3_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	A2_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Letter_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 12($s0)
	la	$a0 int_const24
	sw	$a0 16($s0)
	la	$a0 int_const25
	sw	$a0 20($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Billy_init:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	jal	Object_init
	la	$a0 int_const4
	sw	$a0 12($s0)
	la	$a0 int_const23
	sw	$a0 16($s0)
	lw	$s2 12($s0)
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$s1 int_const3
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const5
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 20($s0)
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 24($s0)
	move	$a0 $s0
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
Comp_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const8
	sw	$a0 20($s0)
	la	$a0 int_const16
	sw	$a0 24($s0)
	la	$a0 str_const6
	sw	$a0 28($s0)
	la	$a0 str_const10
	sw	$a0 36($s0)
	la	$a0 bool_const0
	sw	$a0 40($s0)
	la	$a0 bool_const1
	sw	$a0 44($s0)
	la	$a0 A1_protObj
	jal	Object.copy
	jal	A1_init
	sw	$a0 52($s0)
	la	$a0 A2_protObj
	jal	Object.copy
	jal	A2_init
	sw	$a0 60($s0)
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 76($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main_init:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	jal	Object_init
	la	$a0 int_const0
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 16($s0)
	lw	$a0 16($s0)
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	sw	$a0 20($s0)
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 24($s0)
	la	$a0 int_const1
	sw	$a0 28($s0)
	la	$a0 str_const1
	sw	$a0 32($s0)
	lw	$s2 12($s0)
	lw	$s1 28($s0)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 28($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$s1 int_const3
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const5
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 28($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 28($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 36($s0)
	la	$a0 A1_protObj
	jal	Object.copy
	jal	A1_init
	sw	$a0 40($s0)
	la	$a0 A2_protObj
	jal	Object.copy
	jal	A2_init
	sw	$a0 44($s0)
	la	$a0 A3_protObj
	jal	Object.copy
	jal	A3_init
	sw	$a0 48($s0)
	la	$a0 Comp_protObj
	jal	Object.copy
	jal	Comp_init
	sw	$a0 52($s0)
	la	$a0 Billy_protObj
	jal	Object.copy
	jal	Billy_init
	sw	$a0 56($s0)
	la	$a0 Letter_protObj
	jal	Object.copy
	jal	Letter_init
	sw	$a0 60($s0)
	move	$a0 $s0
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Letter.letter:
	addiu	$sp $sp -100
	sw	$fp 100($sp)
	sw	$s0 96($sp)
	sw	$ra 92($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 84($fp)
	sw	$s2 80($fp)
	sw	$s3 76($fp)
	sw	$s4 72($fp)
	sw	$s5 68($fp)
	sw	$s6 64($fp)
	la	$s6 int_const11
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	move	$s6 $a0
	sw	$s6 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 272
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 273
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s6 20($s0)
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 276
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 277
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s6 int_const26
	la	$s5 int_const17
	la	$s4 int_const16
	move	$a0 $s5
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s4)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s6 $a0
	sw	$s6 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 280
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 281
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 283
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 284
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($s0)
	la	$s6 int_const4
	sw	$s6 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 289
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 290
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s5 int_const16
	sw	$s5 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 292
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 293
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s4 int_const8
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 295
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 296
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s3 int_const19
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 298
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 299
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s3 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 300
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 301
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s2 int_const8
	la	$a0 int_const19
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$s2 int_const19
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 304
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 305
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 306
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 307
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$s1 int_const8
	la	$a0 int_const19
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$s1 int_const19
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 311
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 312
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 313
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 0($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 0($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 0($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 316
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 317
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 318
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 319
	jal	_dispatch_abort
label30:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 4($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 4($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 4($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 322
	jal	_dispatch_abort
label31:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 323
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 4($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 324
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 325
	jal	_dispatch_abort
label34:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 8($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 8($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 8($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 328
	jal	_dispatch_abort
label35:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 329
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 330
	jal	_dispatch_abort
label37:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 331
	jal	_dispatch_abort
label38:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 12($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 12($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 12($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 334
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 335
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 336
	jal	_dispatch_abort
label41:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 337
	jal	_dispatch_abort
label42:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 16($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 16($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 16($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 340
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 341
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 342
	jal	_dispatch_abort
label45:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label46
	la	$a0 str_const0
	li	$t1 343
	jal	_dispatch_abort
label46:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 20($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 20($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 20($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label47
	la	$a0 str_const0
	li	$t1 346
	jal	_dispatch_abort
label47:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 347
	jal	_dispatch_abort
label48:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 348
	jal	_dispatch_abort
label49:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 349
	jal	_dispatch_abort
label50:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 24($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 24($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 24($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label51
	la	$a0 str_const0
	li	$t1 352
	jal	_dispatch_abort
label51:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label52
	la	$a0 str_const0
	li	$t1 353
	jal	_dispatch_abort
label52:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 24($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label53
	la	$a0 str_const0
	li	$t1 354
	jal	_dispatch_abort
label53:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 355
	jal	_dispatch_abort
label54:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 28($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 28($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 28($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label55
	la	$a0 str_const0
	li	$t1 358
	jal	_dispatch_abort
label55:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label56
	la	$a0 str_const0
	li	$t1 359
	jal	_dispatch_abort
label56:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 28($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 360
	jal	_dispatch_abort
label57:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 361
	jal	_dispatch_abort
label58:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 32($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 32($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 32($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label59
	la	$a0 str_const0
	li	$t1 364
	jal	_dispatch_abort
label59:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label60
	la	$a0 str_const0
	li	$t1 365
	jal	_dispatch_abort
label60:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 32($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label61
	la	$a0 str_const0
	li	$t1 366
	jal	_dispatch_abort
label61:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 367
	jal	_dispatch_abort
label62:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 36($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 36($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 36($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 370
	jal	_dispatch_abort
label63:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label64
	la	$a0 str_const0
	li	$t1 371
	jal	_dispatch_abort
label64:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 36($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label65
	la	$a0 str_const0
	li	$t1 372
	jal	_dispatch_abort
label65:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 373
	jal	_dispatch_abort
label66:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 40($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 40($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 40($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label67
	la	$a0 str_const0
	li	$t1 376
	jal	_dispatch_abort
label67:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label68
	la	$a0 str_const0
	li	$t1 377
	jal	_dispatch_abort
label68:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 40($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 378
	jal	_dispatch_abort
label69:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 379
	jal	_dispatch_abort
label70:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 44($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 44($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 44($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label71
	la	$a0 str_const0
	li	$t1 382
	jal	_dispatch_abort
label71:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label72
	la	$a0 str_const0
	li	$t1 383
	jal	_dispatch_abort
label72:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 44($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label73
	la	$a0 str_const0
	li	$t1 384
	jal	_dispatch_abort
label73:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 385
	jal	_dispatch_abort
label74:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 48($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 48($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 48($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 388
	jal	_dispatch_abort
label75:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label76
	la	$a0 str_const0
	li	$t1 389
	jal	_dispatch_abort
label76:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 48($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 390
	jal	_dispatch_abort
label77:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 391
	jal	_dispatch_abort
label78:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 52($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 52($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 52($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 394
	jal	_dispatch_abort
label79:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label80
	la	$a0 str_const0
	li	$t1 395
	jal	_dispatch_abort
label80:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 52($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label81
	la	$a0 str_const0
	li	$t1 396
	jal	_dispatch_abort
label81:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label82
	la	$a0 str_const0
	li	$t1 397
	jal	_dispatch_abort
label82:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 56($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 56($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	la	$a0 int_const19
	sw	$a0 56($fp)
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 400
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label84
	la	$a0 str_const0
	li	$t1 401
	jal	_dispatch_abort
label84:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 56($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label85
	la	$a0 str_const0
	li	$t1 402
	jal	_dispatch_abort
label85:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	bne	$a0 $zero label86
	la	$a0 str_const0
	li	$t1 403
	jal	_dispatch_abort
label86:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	sw	$a0 60($fp)
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 60($fp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	lw	$s1 84($fp)
	lw	$s2 80($fp)
	lw	$s3 76($fp)
	lw	$s4 72($fp)
	lw	$s5 68($fp)
	lw	$s6 64($fp)
	lw	$fp 100($sp)
	lw	$s0 96($sp)
	lw	$ra 92($sp)
	addiu	$sp $sp 100
	jr	$ra	
Billy.billy:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	lw	$a0 20($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label87
	la	$a0 str_const0
	li	$t1 256
	jal	_dispatch_abort
label87:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s2 12($s0)
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$s1 20($s0)
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const5
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$s1 int_const3
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const22
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 16($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label88
	la	$a0 str_const0
	li	$t1 258
	jal	_dispatch_abort
label88:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
Comp.excersise:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$s1 12($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label91
	la	$a0 bool_const0
label91:
	lw	$t1 12($a0)
	beqz	$t1 label89
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label92
	la	$a0 str_const0
	li	$t1 202
	jal	_dispatch_abort
label92:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label90
label89:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label93
	la	$a0 str_const0
	li	$t1 202
	jal	_dispatch_abort
label93:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label90:
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label96
	la	$a0 bool_const0
label96:
	lw	$t1 12($a0)
	beqz	$t1 label94
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label97
	la	$a0 str_const0
	li	$t1 203
	jal	_dispatch_abort
label97:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label95
label94:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label98
	la	$a0 str_const0
	li	$t1 203
	jal	_dispatch_abort
label98:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label95:
	lw	$s1 12($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label101
	la	$a0 bool_const0
label101:
	lw	$t1 12($a0)
	beqz	$t1 label99
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label102
	la	$a0 str_const0
	li	$t1 204
	jal	_dispatch_abort
label102:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label100
label99:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label103
	la	$a0 str_const0
	li	$t1 204
	jal	_dispatch_abort
label103:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label100:
	lw	$s1 16($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label106
	la	$a0 bool_const0
label106:
	lw	$t1 12($a0)
	beqz	$t1 label104
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label107
	la	$a0 str_const0
	li	$t1 205
	jal	_dispatch_abort
label107:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label105
label104:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label108
	la	$a0 str_const0
	li	$t1 205
	jal	_dispatch_abort
label108:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label105:
	lw	$s1 20($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label111
	la	$a0 bool_const0
label111:
	lw	$t1 12($a0)
	beqz	$t1 label109
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label112
	la	$a0 str_const0
	li	$t1 206
	jal	_dispatch_abort
label112:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label110
label109:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label113
	la	$a0 str_const0
	li	$t1 206
	jal	_dispatch_abort
label113:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label110:
	lw	$s1 12($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label116
	la	$a0 bool_const0
label116:
	lw	$t1 12($a0)
	beqz	$t1 label114
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label117
	la	$a0 str_const0
	li	$t1 207
	jal	_dispatch_abort
label117:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label115
label114:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label118
	la	$a0 str_const0
	li	$t1 207
	jal	_dispatch_abort
label118:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label115:
	lw	$s1 20($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label121
	la	$a0 bool_const0
label121:
	lw	$t1 12($a0)
	beqz	$t1 label119
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label122
	la	$a0 str_const0
	li	$t1 208
	jal	_dispatch_abort
label122:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label120
label119:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label123
	la	$a0 str_const0
	li	$t1 208
	jal	_dispatch_abort
label123:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label120:
	lw	$s1 12($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label126
	la	$a0 bool_const0
label126:
	lw	$t1 12($a0)
	beqz	$t1 label124
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label127
	la	$a0 str_const0
	li	$t1 209
	jal	_dispatch_abort
label127:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label125
label124:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label128
	la	$a0 str_const0
	li	$t1 209
	jal	_dispatch_abort
label128:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label125:
	lw	$s1 12($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label131
	la	$a0 bool_const0
label131:
	lw	$t1 12($a0)
	beqz	$t1 label129
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label132
	la	$a0 str_const0
	li	$t1 210
	jal	_dispatch_abort
label132:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label130
label129:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 210
	jal	_dispatch_abort
label133:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label130:
	lw	$s1 20($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label136
	la	$a0 bool_const0
label136:
	lw	$t1 12($a0)
	beqz	$t1 label134
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label137
	la	$a0 str_const0
	li	$t1 211
	jal	_dispatch_abort
label137:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label135
label134:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label138
	la	$a0 str_const0
	li	$t1 211
	jal	_dispatch_abort
label138:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label135:
	lw	$s1 12($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label141
	la	$a0 bool_const0
label141:
	lw	$t1 12($a0)
	beqz	$t1 label139
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label142
	la	$a0 str_const0
	li	$t1 212
	jal	_dispatch_abort
label142:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label140
label139:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label143
	la	$a0 str_const0
	li	$t1 212
	jal	_dispatch_abort
label143:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label140:
	lw	$s1 20($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label146
	la	$a0 bool_const0
label146:
	lw	$t1 12($a0)
	beqz	$t1 label144
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label147
	la	$a0 str_const0
	li	$t1 213
	jal	_dispatch_abort
label147:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label145
label144:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label148
	la	$a0 str_const0
	li	$t1 213
	jal	_dispatch_abort
label148:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label145:
	lw	$s1 12($s0)
	lw	$t2 16($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label151
	la	$a1 bool_const0
	jal	equality_test
label151:
	lw	$t1 12($a0)
	beqz	$t1 label149
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label152
	la	$a0 str_const0
	li	$t1 214
	jal	_dispatch_abort
label152:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label150
label149:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 214
	jal	_dispatch_abort
label153:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label150:
	lw	$s1 20($s0)
	lw	$t2 16($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label156
	la	$a1 bool_const0
	jal	equality_test
label156:
	lw	$t1 12($a0)
	beqz	$t1 label154
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 215
	jal	_dispatch_abort
label157:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label155
label154:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 215
	jal	_dispatch_abort
label158:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label155:
	lw	$s1 12($s0)
	lw	$t2 20($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label161
	la	$a1 bool_const0
	jal	equality_test
label161:
	lw	$t1 12($a0)
	beqz	$t1 label159
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label162
	la	$a0 str_const0
	li	$t1 216
	jal	_dispatch_abort
label162:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label160
label159:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label163
	la	$a0 str_const0
	li	$t1 216
	jal	_dispatch_abort
label163:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label160:
	lw	$s1 12($s0)
	lw	$t2 12($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label166
	la	$a1 bool_const0
	jal	equality_test
label166:
	lw	$t1 12($a0)
	beqz	$t1 label164
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label167
	la	$a0 str_const0
	li	$t1 217
	jal	_dispatch_abort
label167:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label165
label164:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label168
	la	$a0 str_const0
	li	$t1 217
	jal	_dispatch_abort
label168:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label165:
	lw	$s1 20($s0)
	lw	$t2 20($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label171
	la	$a1 bool_const0
	jal	equality_test
label171:
	lw	$t1 12($a0)
	beqz	$t1 label169
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label172
	la	$a0 str_const0
	li	$t1 218
	jal	_dispatch_abort
label172:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label170
label169:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label173
	la	$a0 str_const0
	li	$t1 218
	jal	_dispatch_abort
label173:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label170:
	lw	$s1 36($s0)
	lw	$t2 28($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label176
	la	$a1 bool_const0
	jal	equality_test
label176:
	lw	$t1 12($a0)
	beqz	$t1 label174
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label177
	la	$a0 str_const0
	li	$t1 219
	jal	_dispatch_abort
label177:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label175
label174:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label178
	la	$a0 str_const0
	li	$t1 219
	jal	_dispatch_abort
label178:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label175:
	lw	$s1 36($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label181
	la	$a1 bool_const0
	jal	equality_test
label181:
	lw	$t1 12($a0)
	beqz	$t1 label179
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label182
	la	$a0 str_const0
	li	$t1 220
	jal	_dispatch_abort
label182:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label180
label179:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label183
	la	$a0 str_const0
	li	$t1 220
	jal	_dispatch_abort
label183:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label180:
	lw	$s1 36($s0)
	lw	$t2 36($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label186
	la	$a1 bool_const0
	jal	equality_test
label186:
	lw	$t1 12($a0)
	beqz	$t1 label184
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label187
	la	$a0 str_const0
	li	$t1 221
	jal	_dispatch_abort
label187:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label185
label184:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label188
	la	$a0 str_const0
	li	$t1 221
	jal	_dispatch_abort
label188:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label185:
	lw	$s1 28($s0)
	lw	$t2 28($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label191
	la	$a1 bool_const0
	jal	equality_test
label191:
	lw	$t1 12($a0)
	beqz	$t1 label189
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label192
	la	$a0 str_const0
	li	$t1 222
	jal	_dispatch_abort
label192:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label190
label189:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label193
	la	$a0 str_const0
	li	$t1 222
	jal	_dispatch_abort
label193:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label190:
	lw	$s1 32($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label196
	la	$a1 bool_const0
	jal	equality_test
label196:
	lw	$t1 12($a0)
	beqz	$t1 label194
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label197
	la	$a0 str_const0
	li	$t1 223
	jal	_dispatch_abort
label197:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label195
label194:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label198
	la	$a0 str_const0
	li	$t1 223
	jal	_dispatch_abort
label198:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label195:
	lw	$s1 28($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label201
	la	$a1 bool_const0
	jal	equality_test
label201:
	lw	$t1 12($a0)
	beqz	$t1 label199
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label202
	la	$a0 str_const0
	li	$t1 224
	jal	_dispatch_abort
label202:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label200
label199:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label203
	la	$a0 str_const0
	li	$t1 224
	jal	_dispatch_abort
label203:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label200:
	lw	$s1 32($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label206
	la	$a1 bool_const0
	jal	equality_test
label206:
	lw	$t1 12($a0)
	beqz	$t1 label204
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label207
	la	$a0 str_const0
	li	$t1 225
	jal	_dispatch_abort
label207:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label205
label204:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label208
	la	$a0 str_const0
	li	$t1 225
	jal	_dispatch_abort
label208:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label205:
	lw	$s1 44($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label211
	la	$a1 bool_const0
	jal	equality_test
label211:
	lw	$t1 12($a0)
	beqz	$t1 label209
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label212
	la	$a0 str_const0
	li	$t1 226
	jal	_dispatch_abort
label212:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label210
label209:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label213
	la	$a0 str_const0
	li	$t1 226
	jal	_dispatch_abort
label213:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label210:
	lw	$s1 48($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label216
	la	$a1 bool_const0
	jal	equality_test
label216:
	lw	$t1 12($a0)
	beqz	$t1 label214
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label217
	la	$a0 str_const0
	li	$t1 227
	jal	_dispatch_abort
label217:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label215
label214:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label218
	la	$a0 str_const0
	li	$t1 227
	jal	_dispatch_abort
label218:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label215:
	lw	$s1 44($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label221
	la	$a1 bool_const0
	jal	equality_test
label221:
	lw	$t1 12($a0)
	beqz	$t1 label219
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label222
	la	$a0 str_const0
	li	$t1 228
	jal	_dispatch_abort
label222:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label220
label219:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label223
	la	$a0 str_const0
	li	$t1 228
	jal	_dispatch_abort
label223:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label220:
	lw	$s1 48($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label226
	la	$a1 bool_const0
	jal	equality_test
label226:
	lw	$t1 12($a0)
	beqz	$t1 label224
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label227
	la	$a0 str_const0
	li	$t1 229
	jal	_dispatch_abort
label227:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label225
label224:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label228
	la	$a0 str_const0
	li	$t1 229
	jal	_dispatch_abort
label228:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label225:
	lw	$s1 40($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label231
	la	$a1 bool_const0
	jal	equality_test
label231:
	lw	$t1 12($a0)
	beqz	$t1 label229
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label232
	la	$a0 str_const0
	li	$t1 230
	jal	_dispatch_abort
label232:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label230
label229:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label233
	la	$a0 str_const0
	li	$t1 230
	jal	_dispatch_abort
label233:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label230:
	lw	$s1 44($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label236
	la	$a1 bool_const0
	jal	equality_test
label236:
	lw	$t1 12($a0)
	beqz	$t1 label234
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label237
	la	$a0 str_const0
	li	$t1 231
	jal	_dispatch_abort
label237:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label235
label234:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label238
	la	$a0 str_const0
	li	$t1 231
	jal	_dispatch_abort
label238:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label235:
	lw	$s1 48($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label241
	la	$a1 bool_const0
	jal	equality_test
label241:
	lw	$t1 12($a0)
	beqz	$t1 label239
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label242
	la	$a0 str_const0
	li	$t1 232
	jal	_dispatch_abort
label242:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label240
label239:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label243
	la	$a0 str_const0
	li	$t1 232
	jal	_dispatch_abort
label243:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label240:
	lw	$s1 40($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label246
	la	$a1 bool_const0
	jal	equality_test
label246:
	lw	$t1 12($a0)
	beqz	$t1 label244
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label247
	la	$a0 str_const0
	li	$t1 233
	jal	_dispatch_abort
label247:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label245
label244:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label248
	la	$a0 str_const0
	li	$t1 233
	jal	_dispatch_abort
label248:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label245:
	lw	$s1 40($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label251
	la	$a1 bool_const0
	jal	equality_test
label251:
	lw	$t1 12($a0)
	beqz	$t1 label249
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label252
	la	$a0 str_const0
	li	$t1 234
	jal	_dispatch_abort
label252:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label250
label249:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label253
	la	$a0 str_const0
	li	$t1 234
	jal	_dispatch_abort
label253:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label250:
	lw	$s1 52($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label256
	la	$a1 bool_const0
	jal	equality_test
label256:
	lw	$t1 12($a0)
	beqz	$t1 label254
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label257
	la	$a0 str_const0
	li	$t1 235
	jal	_dispatch_abort
label257:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label255
label254:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label258
	la	$a0 str_const0
	li	$t1 235
	jal	_dispatch_abort
label258:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label255:
	lw	$s1 56($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label261
	la	$a1 bool_const0
	jal	equality_test
label261:
	lw	$t1 12($a0)
	beqz	$t1 label259
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label262
	la	$a0 str_const0
	li	$t1 236
	jal	_dispatch_abort
label262:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label260
label259:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label263
	la	$a0 str_const0
	li	$t1 236
	jal	_dispatch_abort
label263:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label260:
	lw	$s1 60($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label266
	la	$a1 bool_const0
	jal	equality_test
label266:
	lw	$t1 12($a0)
	beqz	$t1 label264
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label267
	la	$a0 str_const0
	li	$t1 237
	jal	_dispatch_abort
label267:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label265
label264:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label268
	la	$a0 str_const0
	li	$t1 237
	jal	_dispatch_abort
label268:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label265:
	lw	$s1 56($s0)
	lw	$t2 60($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label271
	la	$a1 bool_const0
	jal	equality_test
label271:
	lw	$t1 12($a0)
	beqz	$t1 label269
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label272
	la	$a0 str_const0
	li	$t1 238
	jal	_dispatch_abort
label272:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label270
label269:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label273
	la	$a0 str_const0
	li	$t1 238
	jal	_dispatch_abort
label273:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label270:
	lw	$s1 60($s0)
	lw	$t2 60($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label276
	la	$a1 bool_const0
	jal	equality_test
label276:
	lw	$t1 12($a0)
	beqz	$t1 label274
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label277
	la	$a0 str_const0
	li	$t1 239
	jal	_dispatch_abort
label277:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label275
label274:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label278
	la	$a0 str_const0
	li	$t1 239
	jal	_dispatch_abort
label278:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label275:
	lw	$s1 60($s0)
	lw	$t2 68($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label281
	la	$a1 bool_const0
	jal	equality_test
label281:
	lw	$t1 12($a0)
	beqz	$t1 label279
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label282
	la	$a0 str_const0
	li	$t1 240
	jal	_dispatch_abort
label282:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label280
label279:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label283
	la	$a0 str_const0
	li	$t1 240
	jal	_dispatch_abort
label283:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label280:
	lw	$s1 72($s0)
	lw	$t2 68($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label286
	la	$a1 bool_const0
	jal	equality_test
label286:
	lw	$t1 12($a0)
	beqz	$t1 label284
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label287
	la	$a0 str_const0
	li	$t1 241
	jal	_dispatch_abort
label287:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label285
label284:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label288
	la	$a0 str_const0
	li	$t1 241
	jal	_dispatch_abort
label288:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label285:
	lw	$s1 72($s0)
	lw	$t2 72($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label291
	la	$a1 bool_const0
	jal	equality_test
label291:
	lw	$t1 12($a0)
	beqz	$t1 label289
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label292
	la	$a0 str_const0
	li	$t1 242
	jal	_dispatch_abort
label292:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label290
label289:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label293
	la	$a0 str_const0
	li	$t1 242
	jal	_dispatch_abort
label293:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label290:
	lw	$s1 68($s0)
	lw	$t2 72($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label296
	la	$a1 bool_const0
	jal	equality_test
label296:
	lw	$t1 12($a0)
	beqz	$t1 label294
	la	$a0 str_const11
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label297
	la	$a0 str_const0
	li	$t1 243
	jal	_dispatch_abort
label297:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label295
label294:
	la	$a0 str_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label298
	la	$a0 str_const0
	li	$t1 243
	jal	_dispatch_abort
label298:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label295:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Main.main:
	addiu	$sp $sp -28
	sw	$fp 28($sp)
	sw	$s0 24($sp)
	sw	$ra 20($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 12($fp)
	sw	$s2 8($fp)
	sw	$s3 4($fp)
	sw	$s4 0($fp)
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label299
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
label299:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 36($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label300
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label300:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$s4 int_const0
	la	$a0 Object_protObj
	jal	Object.copy
	jal	Object_init
	move	$s3 $a0
	move	$s3 $s4
	move	$a0 $s3
	bne	$a0 $zero label301
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
label301:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	move	$a0 $s4
	bne	$a0 $zero label302
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
label302:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	sw	$s4 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label303
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label303:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 int_const0
	bne	$a0 $zero label305
	la	$a0 str_const0
	li	$t1 40
	jal	_case_abort2
label305:
	lw	$t2 0($a0)
	blt	$t2 2 label306
	bgt	$t2 2 label306
	move	$s2 $a0
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label307
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
label307:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	b	label304
label306:
	blt	$t2 0 label308
	bgt	$t2 11 label308
	move	$s2 $a0
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label309
	la	$a0 str_const0
	li	$t1 41
	jal	_dispatch_abort
label309:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	b	label304
label308:
	jal	_case_abort
label304:
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label310
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label310:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 32($s0)
	bne	$a0 $zero label311
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label311:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label312
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label312:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label313
	la	$a0 str_const0
	li	$t1 47
	jal	_dispatch_abort
label313:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label314
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label314:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const8
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 32($s0)
	bne	$a0 $zero label315
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label315:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	bne	$a0 $zero label316
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label316:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label317
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label317:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label318
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label318:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label319
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label319:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label320
	la	$a0 str_const0
	li	$t1 54
	jal	_dispatch_abort
label320:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const8
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label321
	la	$a0 str_const0
	li	$t1 56
	jal	_dispatch_abort
label321:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label322
	la	$a0 str_const0
	li	$t1 57
	jal	_dispatch_abort
label322:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label323
	la	$a0 str_const0
	li	$t1 58
	jal	_dispatch_abort
label323:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const0
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label324
	la	$a0 str_const0
	li	$t1 59
	jal	_dispatch_abort
label324:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label325
	la	$a0 str_const0
	li	$t1 60
	jal	_dispatch_abort
label325:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 str_const5
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label326
	la	$a0 str_const0
	li	$t1 61
	jal	_dispatch_abort
label326:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const8
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label327
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label327:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 str_const2
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label328
	la	$a0 str_const0
	li	$t1 63
	jal	_dispatch_abort
label328:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Object_protObj
	jal	Object.copy
	jal	Object_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label329
	la	$a0 str_const0
	li	$t1 64
	jal	_dispatch_abort
label329:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label330
	la	$a0 str_const0
	li	$t1 65
	jal	_dispatch_abort
label330:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
	sw	$a0 12($s0)
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label331
	la	$a0 str_const0
	li	$t1 66
	jal	_dispatch_abort
label331:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 32($s0)
	bne	$a0 $zero label332
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label332:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label333
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label333:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label334
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
label334:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
	move	$a0 $s0
	bne	$a0 $zero label335
	la	$a0 str_const0
	li	$t1 69
	jal	_dispatch_abort
label335:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label336
	la	$a0 str_const0
	li	$t1 70
	jal	_dispatch_abort
label336:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	la	$a0 int_const9
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label337
	la	$a0 str_const0
	li	$t1 71
	jal	_dispatch_abort
label337:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	la	$a0 int_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label338
	la	$a0 str_const0
	li	$t1 72
	jal	_dispatch_abort
label338:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
	lw	$a0 52($s0)
	bne	$a0 $zero label339
	la	$a0 str_const0
	li	$t1 73
	jal	_dispatch_abort
label339:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 56($s0)
	bne	$a0 $zero label340
	la	$a0 str_const0
	li	$t1 74
	jal	_dispatch_abort
label340:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 36($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Object_protObj
	jal	Object.copy
	jal	Object_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label341
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
label341:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	la	$a0 int_const12
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Object_protObj
	jal	Object.copy
	jal	Object_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label342
	la	$a0 str_const0
	li	$t1 76
	jal	_dispatch_abort
label342:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	la	$a0 int_const13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label343
	la	$a0 str_const0
	li	$t1 77
	jal	_dispatch_abort
label343:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	la	$a0 int_const13
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Bool_protObj
	jal	Object.copy
	jal	Bool_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label344
	la	$a0 str_const0
	li	$t1 78
	jal	_dispatch_abort
label344:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Bool_protObj
	jal	Object.copy
	jal	Bool_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Bool_protObj
	jal	Object.copy
	jal	Bool_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label345
	la	$a0 str_const0
	li	$t1 79
	jal	_dispatch_abort
label345:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
	la	$a0 Int_protObj
	jal	Object.copy
	jal	Int_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 Bool_protObj
	jal	Object.copy
	jal	Bool_init
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label346
	la	$a0 str_const0
	li	$t1 80
	jal	_dispatch_abort
label346:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label347
	la	$a0 str_const0
	li	$t1 81
	jal	_dispatch_abort
label347:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 int_const14
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 bool_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$a0 $s0
	bne	$a0 $zero label348
	la	$a0 str_const0
	li	$t1 82
	jal	_dispatch_abort
label348:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 60($s0)
	bne	$a0 $zero label349
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
label349:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$s1 12($fp)
	lw	$s2 8($fp)
	lw	$s3 4($fp)
	lw	$s4 0($fp)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 28
	jr	$ra	
Main.caser:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$a0 20($fp)
	bne	$a0 $zero label351
	la	$a0 str_const0
	li	$t1 90
	jal	_case_abort2
label351:
	lw	$t2 0($a0)
	blt	$t2 3 label352
	bgt	$t2 3 label352
	move	$s1 $a0
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label353
	la	$a0 str_const0
	li	$t1 92
	jal	_dispatch_abort
label353:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label350
label352:
	blt	$t2 2 label354
	bgt	$t2 2 label354
	move	$s1 $a0
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label355
	la	$a0 str_const0
	li	$t1 91
	jal	_dispatch_abort
label355:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label350
label354:
	jal	_case_abort
label350:
	la	$a0 int_const15
	bne	$a0 $zero label357
	la	$a0 str_const0
	li	$t1 94
	jal	_case_abort2
label357:
	lw	$t2 0($a0)
	blt	$t2 3 label358
	bgt	$t2 3 label358
	move	$s1 $a0
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label359
	la	$a0 str_const0
	li	$t1 96
	jal	_dispatch_abort
label359:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label356
label358:
	blt	$t2 2 label360
	bgt	$t2 2 label360
	move	$s1 $a0
	la	$a0 str_const6
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label361
	la	$a0 str_const0
	li	$t1 95
	jal	_dispatch_abort
label361:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label356
label360:
	jal	_case_abort
label356:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 24
	jr	$ra	
Main.args:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label362
	la	$a0 str_const0
	li	$t1 103
	jal	_dispatch_abort
label362:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 20($fp)
	bne	$a0 $zero label363
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label363:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label364
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label364:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 20($fp)
	sw	$a0 12($fp)
	lw	$a0 12($fp)
	bne	$a0 $zero label365
	la	$a0 str_const0
	li	$t1 106
	jal	_dispatch_abort
label365:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label366
	la	$a0 str_const0
	li	$t1 106
	jal	_dispatch_abort
label366:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 20($fp)
	bne	$a0 $zero label367
	la	$a0 str_const0
	li	$t1 107
	jal	_dispatch_abort
label367:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	sw	$a0 12($fp)
	lw	$a0 12($fp)
	bne	$a0 $zero label368
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label368:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label369
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label369:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($fp)
	bne	$a0 $zero label370
	la	$a0 str_const0
	li	$t1 109
	jal	_dispatch_abort
label370:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label371
	la	$a0 str_const0
	li	$t1 109
	jal	_dispatch_abort
label371:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($fp)
	bne	$a0 $zero label372
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label372:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	sw	$a0 16($fp)
	lw	$a0 16($fp)
	bne	$a0 $zero label373
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label373:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label374
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label374:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 24
	jr	$ra	
Main.a:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$a0 24($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label375
	la	$a0 str_const0
	li	$t1 117
	jal	_dispatch_abort
label375:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 20($fp)
	bne	$a0 $zero label376
	la	$a0 str_const0
	li	$t1 118
	jal	_dispatch_abort
label376:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label377
	la	$a0 str_const0
	li	$t1 118
	jal	_dispatch_abort
label377:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($fp)
	bne	$a0 $zero label378
	la	$a0 str_const0
	li	$t1 119
	jal	_dispatch_abort
label378:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label379
	la	$a0 str_const0
	li	$t1 119
	jal	_dispatch_abort
label379:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 16($fp)
	lw	$t1 12($a0)
	beqz	$t1 label380
	lw	$s1 24($fp)
	la	$a0 int_const16
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label382
	la	$a0 str_const0
	li	$t1 120
	jal	_dispatch_abort
label382:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	b	label381
label380:
	lw	$s1 24($fp)
	la	$a0 int_const17
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label383
	la	$a0 str_const0
	li	$t1 120
	jal	_dispatch_abort
label383:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
label381:
	lw	$a0 16($fp)
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label386
	la	$a0 bool_const0
label386:
	lw	$t1 12($a0)
	beqz	$t1 label384
	lw	$s1 24($fp)
	la	$a0 int_const16
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label387
	la	$a0 str_const0
	li	$t1 121
	jal	_dispatch_abort
label387:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	b	label385
label384:
	lw	$s1 24($fp)
	la	$a0 int_const17
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label388
	la	$a0 str_const0
	li	$t1 121
	jal	_dispatch_abort
label388:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
label385:
	lw	$a0 24($fp)
	bne	$a0 $zero label389
	la	$a0 str_const0
	li	$t1 122
	jal	_dispatch_abort
label389:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	sw	$a0 24($fp)
	lw	$a0 24($fp)
	bne	$a0 $zero label390
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label390:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label391
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label391:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 28
	jr	$ra	
Main.make_int:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	lw	$a0 20($fp)
	bne	$a0 $zero label392
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label392:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label393
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label393:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label394
	la	$a0 str_const0
	li	$t1 130
	jal	_dispatch_abort
label394:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const17
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$s1 int_const18
	la	$a0 int_const19
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$s1 20($fp)
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const20
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	sw	$a0 20($fp)
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label395
	la	$a0 str_const0
	li	$t1 132
	jal	_dispatch_abort
label395:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$a0 int_const2
	sw	$a0 20($fp)
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 24
	jr	$ra	
Main.long:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$a0 36($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label396
	la	$a0 str_const0
	li	$t1 139
	jal	_dispatch_abort
label396:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	la	$s1 int_const19
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label397
	la	$a0 str_const0
	li	$t1 141
	jal	_dispatch_abort
label397:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Main.nest_case:
	addiu	$sp $sp -36
	sw	$fp 36($sp)
	sw	$s0 32($sp)
	sw	$ra 28($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 20($fp)
	sw	$s2 16($fp)
	sw	$s3 12($fp)
	sw	$s4 8($fp)
	sw	$s5 4($fp)
	sw	$s6 0($fp)
	la	$a0 int_const2
	bne	$a0 $zero label399
	la	$a0 str_const0
	li	$t1 147
	jal	_case_abort2
label399:
	lw	$t2 0($a0)
	blt	$t2 2 label400
	bgt	$t2 2 label400
	move	$s6 $a0
	la	$a0 str_const8
	bne	$a0 $zero label402
	la	$a0 str_const0
	li	$t1 148
	jal	_case_abort2
label402:
	lw	$t2 0($a0)
	blt	$t2 4 label403
	bgt	$t2 4 label403
	move	$s5 $a0
	la	$a0 bool_const0
	bne	$a0 $zero label405
	la	$a0 str_const0
	li	$t1 149
	jal	_case_abort2
label405:
	lw	$t2 0($a0)
	blt	$t2 3 label406
	bgt	$t2 3 label406
	move	$s4 $a0
	bne	$s4 $zero label408
	la	$a0 str_const0
	li	$t1 150
	jal	_case_abort2
label408:
	lw	$t2 0($s4)
	blt	$t2 3 label409
	bgt	$t2 3 label409
	move	$s3 $s4
	la	$s2 str_const9
	bne	$s2 $zero label411
	la	$a0 str_const0
	li	$t1 152
	jal	_case_abort2
label411:
	lw	$t2 0($s2)
	blt	$t2 4 label412
	bgt	$t2 4 label412
	move	$s1 $s2
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label413
	la	$a0 str_const0
	li	$t1 153
	jal	_dispatch_abort
label413:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label410
label412:
	jal	_case_abort
label410:
	b	label407
label409:
	jal	_case_abort
label407:
	b	label404
label406:
	jal	_case_abort
label404:
	b	label401
label403:
	jal	_case_abort
label401:
	b	label398
label400:
	jal	_case_abort
label398:
	lw	$s1 20($fp)
	lw	$s2 16($fp)
	lw	$s3 12($fp)
	lw	$s4 8($fp)
	lw	$s5 4($fp)
	lw	$s6 0($fp)
	lw	$fp 36($sp)
	lw	$s0 32($sp)
	lw	$ra 28($sp)
	addiu	$sp $sp 36
	jr	$ra	
Main.long_int:
	addiu	$sp $sp -20
	sw	$fp 20($sp)
	sw	$s0 16($sp)
	sw	$ra 12($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 4($fp)
	sw	$s2 0($fp)
	la	$a0 int_const21
	sw	$a0 20($fp)
	lw	$a0 20($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label414
	la	$a0 str_const0
	li	$t1 166
	jal	_dispatch_abort
label414:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s2 12($s0)
	lw	$s1 20($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$s1 36($s0)
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const5
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$s1 20($fp)
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$s1 int_const3
	la	$a0 int_const4
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const22
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	la	$a0 int_const2
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const6
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const7
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s1 $a0
	la	$a0 int_const4
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s1)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 12($s0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	lw	$a0 20($fp)
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 12($a0)
	lw	$t1 12($s2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	move	$s2 $a0
	sw	$s2 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label415
	la	$a0 str_const0
	li	$t1 168
	jal	_dispatch_abort
label415:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s2 28($s0)
	la	$s1 int_const11
	move	$a0 $s2
	bne	$a0 $zero label416
	la	$a0 str_const0
	li	$t1 170
	jal	_dispatch_abort
label416:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label417
	la	$a0 str_const0
	li	$t1 170
	jal	_dispatch_abort
label417:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	lw	$a0 28($s0)
	bne	$a0 $zero label418
	la	$a0 str_const0
	li	$t1 171
	jal	_dispatch_abort
label418:
	lw	$t1 8($a0)
	lw	$t1 8($t1)
	jalr		$t1
	move	$s1 $a0
	move	$a0 $s1
	bne	$a0 $zero label419
	la	$a0 str_const0
	li	$t1 172
	jal	_dispatch_abort
label419:
	lw	$t1 8($a0)
	lw	$t1 4($t1)
	jalr		$t1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label420
	la	$a0 str_const0
	li	$t1 172
	jal	_dispatch_abort
label420:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	sw	$s1 0($sp)
	addiu	$sp $sp -4
	lw	$a0 24($s0)
	bne	$a0 $zero label421
	la	$a0 str_const0
	li	$t1 173
	jal	_dispatch_abort
label421:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
	lw	$s1 4($fp)
	lw	$s2 0($fp)
	lw	$fp 20($sp)
	lw	$s0 16($sp)
	lw	$ra 12($sp)
	addiu	$sp $sp 24
	jr	$ra	
