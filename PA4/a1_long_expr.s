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
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const8
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const10
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const1
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const1
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const12
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	11
	.word	String_dispTab
	.word	int_const13
	.ascii	"./Testfiles/a1_long_expr.cl"
	.byte	0	
	.align	2
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	27
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	563
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	43
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	56
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
	.word	9
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	-1
Main_protObj:
	.word	5
	.word	7
	.word	Main_dispTab
	.word	int_const8
	.word	int_const8
	.word	int_const8
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const8
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
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
class_nameTab:
	.word	str_const5
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
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
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$zero 0($sp)
	sw	$zero -4($sp)
	sw	$zero -8($sp)
	sw	$zero -12($sp)
	sw	$zero -16($sp)
	sw	$zero -20($sp)
	sw	$zero -24($sp)
	sw	$zero -28($sp)
	sw	$zero -32($sp)
	sw	$zero -36($sp)
	sw	$zero -40($sp)
	sw	$zero -44($sp)
	sw	$zero -48($sp)
	sw	$zero -52($sp)
	sw	$zero -56($sp)
	sw	$zero -60($sp)
	sw	$zero -64($sp)
	sw	$zero -68($sp)
	sw	$zero -72($sp)
	sw	$zero -76($sp)
	sw	$zero -80($sp)
	sw	$zero -84($sp)
	sw	$zero -88($sp)
	sw	$zero -92($sp)
	addiu	$sp $sp -96
	move	$s0 $a0
	jal	Object_init
# Begin Code int const expression at line number 2
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 12($s0)
# Begin Code int const expression at line number 3
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 16($s0)
# Begin Code sub expression at line number 4
# Begin Code plus expression at line number 4
# Begin Code plus expression at line number 4
# Begin Code sub expression at line number 4
# Begin Code plus expression at line number 4
# Begin Code sub expression at line number 4
# Begin Code plus expression at line number 4
# Begin Code plus expression at line number 4
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 4
# Begin Code divide expression at line number 4
# Begin Code divide expression at line number 4
# Begin Code divide expression at line number 4
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 4
# Begin Code int const expression at line number 4
	la	$a0 int_const3
# End Code int const expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const4
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 4
# Begin Code mul expression at line number 4
# Begin Code mul expression at line number 4
# Begin Code neg expression at line number 4
# Begin Code int const expression at line number 4
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const5
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 4
	la	$a0 int_const6
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code neg expression at line number 4
# Begin Code int const expression at line number 4
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -12($fp)
	jal	Object.copy
	lw	$t1 -12($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code neg expression at line number 4
# Begin Code objectID expression at line number 4
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 20($s0)
# Begin Code new with type at line number 5
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 24($s0)
	move	$a0 $s0
	addiu	$sp $sp 96
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$zero 0($sp)
	sw	$zero -4($sp)
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for String
# Begin Emmitting code to generate initializer method for Bool
Bool_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$zero 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Bool
# Begin Emmitting code to generate initializer method for Int
Int_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$zero 0($sp)
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Int
# Begin Emmitting code to generate initializer method for IO
IO_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for IO
# Begin Emmitting code to generate initializer method for Object
Object_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Object
# Begin Emitting code for method main
Main.main:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$zero 0($sp)
	sw	$zero -4($sp)
	sw	$zero -8($sp)
	sw	$zero -12($sp)
	sw	$zero -16($sp)
	sw	$zero -20($sp)
	sw	$zero -24($sp)
	sw	$zero -28($sp)
	sw	$zero -32($sp)
	sw	$zero -36($sp)
	sw	$zero -40($sp)
	sw	$zero -44($sp)
	sw	$zero -48($sp)
	sw	$zero -52($sp)
	sw	$zero -56($sp)
	sw	$zero -60($sp)
	sw	$zero -64($sp)
	sw	$zero -68($sp)
	sw	$zero -72($sp)
	sw	$zero -76($sp)
	sw	$zero -80($sp)
	sw	$zero -84($sp)
	sw	$zero -88($sp)
	sw	$zero -92($sp)
	sw	$zero -96($sp)
	sw	$zero -100($sp)
	sw	$zero -104($sp)
	sw	$zero -108($sp)
	sw	$zero -112($sp)
	sw	$zero -116($sp)
	sw	$zero -120($sp)
	sw	$zero -124($sp)
	sw	$zero -128($sp)
	sw	$zero -132($sp)
	sw	$zero -136($sp)
	sw	$zero -140($sp)
	sw	$zero -144($sp)
	sw	$zero -148($sp)
	sw	$zero -152($sp)
	sw	$zero -156($sp)
	sw	$zero -160($sp)
	sw	$zero -164($sp)
	addiu	$sp $sp -168
	move	$s0 $a0
# Begin Code block epression at line number 7
# Begin Code disptach expression at line number 8
# Begin Code objectID expression at line number 8
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 8
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 8
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code let expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code sub expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code plus expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const4
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 9
# Begin Code mul expression at line number 9
# Begin Code mul expression at line number 9
# Begin Code neg expression at line number 9
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const5
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const6
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code neg expression at line number 9
# Begin Code int const expression at line number 9
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -12($fp)
	jal	Object.copy
	lw	$t1 -12($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code neg expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code divide expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 9
# Begin Code int const expression at line number 9
	la	$a0 int_const3
# End Code int const expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const7
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code divide expression at line number 9
# Begin Code mul expression at line number 9
# Begin Code mul expression at line number 9
# Begin Code neg expression at line number 9
# Begin Code int const expression at line number 9
	la	$a0 int_const2
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const5
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 9
	la	$a0 int_const6
# End Code int const expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -8($fp)
# Begin Code neg expression at line number 9
# Begin Code int const expression at line number 9
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -12($fp)
	jal	Object.copy
	lw	$t1 -12($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# Begin Code neg expression at line number 9
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -8($fp)
	jal	Object.copy
	lw	$t1 -8($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code disptach expression at line number 10
# Begin Code objectID expression at line number 10
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 10
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# End Code let expression.
# End Code block epression.
	addiu	$sp $sp 168
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main

# end of generated code