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
	.word	3
_bool_tag:
	.word	4
_string_tag:
	.word	5
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_GenGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_GenGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"continue"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"halt"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	" is prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"2 is trivially prime.\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	10
	.word	String_dispTab
	.word	int_const13
	.ascii	"./Testfiles/primes.cl"
	.byte	0	
	.align	2
	.word	-1
int_const13:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	21
	.word	-1
int_const12:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	500
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Main_protObj:
	.word	2
	.word	8
	.word	Main_dispTab
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	int_const0
	.word	0
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Bool_protObj:
	.word	4
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	3
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
	.word	str_const9
	.word	str_const10
	.word	str_const14
	.word	str_const11
	.word	str_const12
	.word	str_const13
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
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
	addiu	$sp $sp -108
	move	$s0 $a0
	jal	IO_init
# Begin Code block epression at line number 34
# Begin Code disptach expression at line number 35
# Begin Code string const expression at line number 35
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 35
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code int const expression at line number 36
	la	$a0 int_const1
# End Code int const expression.
# End Code block epression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# Begin Code objectID expression at line number 39
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# Begin Code int const expression at line number 43
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 24($s0)
	addiu	$a1 $s0 6
	jal	_GenGC_Assign
# Begin Code loop expression at line number 46
label1:
# Begin Code bool expression at line number 46
	la	$a0 bool_const1
# End Code bool expression.
	lw	$t1 12($a0)
	beqz	$t1 label2
# Begin Code block epression at line number 47
# Begin Code assign expression at line number 49
# Begin Code plus expression at line number 49
# Begin Code objectID expression at line number 49
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 49
	la	$a0 int_const3
# End Code int const expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 50
# Begin Code int const expression at line number 50
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code loop expression at line number 52
label3:
# Begin Code cond expression at line number 53
# Begin Code lt expression at line number 53
# Begin Code objectID expression at line number 53
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 53
# Begin Code objectID expression at line number 53
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 53
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	sw	$zero -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label7
	la	$a0 bool_const0
	b	label8
label7:
	la	$a0 bool_const1
label8:
# End Code lt expression.
	lw	$t2 12($a0)
	beqz	$t2 label5
# Begin Code bool expression at line number 54
	la	$a0 bool_const0
# End Code bool expression.
	b	label6
label5:
# Begin Code cond expression at line number 55
# Begin Code eq expression at line number 55
# Begin Code sub expression at line number 55
# Begin Code objectID expression at line number 55
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 55
# Begin Code objectID expression at line number 55
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code divide expression at line number 55
# Begin Code objectID expression at line number 55
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 55
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	lw	$t1 -12($fp)
	sw	$zero -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	div	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code divide expression.
	lw	$t1 -8($fp)
	sw	$zero -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 55
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label11
	la	$a1 bool_const0
	jal	equality_test
label11:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label9
# Begin Code bool expression at line number 56
	la	$a0 bool_const0
# End Code bool expression.
	b	label10
label9:
# Begin Code bool expression at line number 57
	la	$a0 bool_const1
# End Code bool expression.
label10:
# End Code cond expression.
label6:
# End Code cond expression.
	lw	$t1 12($a0)
	beqz	$t1 label4
# Begin Code assign expression at line number 60
# Begin Code plus expression at line number 60
# Begin Code objectID expression at line number 60
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 60
	la	$a0 int_const3
# End Code int const expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
	b	label3
label4:
	li	$a0 0
# End Code loop expression.
# Begin Code cond expression at line number 63
# Begin Code lt expression at line number 63
# Begin Code objectID expression at line number 63
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code mul expression at line number 63
# Begin Code objectID expression at line number 63
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 63
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	sw	$zero -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label14
	la	$a0 bool_const0
	b	label15
label14:
	la	$a0 bool_const1
label15:
# End Code lt expression.
	lw	$t2 12($a0)
	beqz	$t2 label12
# Begin Code block epression at line number 65
# Begin Code assign expression at line number 66
# Begin Code objectID expression at line number 66
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code disptach expression at line number 67
# Begin Code objectID expression at line number 67
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 67
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 68
# Begin Code string const expression at line number 68
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 68
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	b	label13
label12:
# Begin Code int const expression at line number 71
	la	$a0 int_const0
# End Code int const expression.
label13:
# End Code cond expression.
# Begin Code cond expression at line number 74
# Begin Code leq expression at line number 74
# Begin Code objectID expression at line number 74
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 74
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -4($fp)
	sw	$zero -4($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	ble	$t1 $a0 label20
	la	$a0 bool_const0
	b	label21
label20:
	la	$a0 bool_const1
label21:
# End Code leq expression.
	lw	$t2 12($a0)
	beqz	$t2 label18
# Begin Code disptach expression at line number 75
# Begin Code string const expression at line number 75
	la	$a0 str_const3
# End Code string const expression.
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
	b	label19
label18:
# Begin Code string const expression at line number 77
	la	$a0 str_const4
# End Code string const expression.
label19:
# End Code cond expression.
# End Code block epression.
	b	label1
label2:
	li	$a0 0
# End Code loop expression.
	sw	$a0 28($s0)
	addiu	$a1 $s0 7
	jal	_GenGC_Assign
	move	$a0 $s0
	addiu	$sp $sp 108
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
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code int const expression at line number 30
	la	$a0 int_const0
# End Code int const expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main

# end of generated code
