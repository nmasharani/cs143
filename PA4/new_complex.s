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
	.word	4
_bool_tag:
	.word	5
_string_tag:
	.word	6
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
str_const16:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	6
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Complex"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	6
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	6
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	6
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	6
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	6
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	6
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	6
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	6
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"I"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"+"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"=(\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"=)\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	6
	.word	11
	.word	String_dispTab
	.word	int_const10
	.ascii	"./Testfiles/new_complex.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	26
	.word	-1
int_const9:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const5:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const4:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const1:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	5
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	5
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Complex_protObj:
	.word	3
	.word	5
	.word	Complex_dispTab
	.word	int_const1
	.word	int_const1
	.word	-1
Main_protObj:
	.word	2
	.word	3
	.word	Main_dispTab
	.word	-1
String_protObj:
	.word	6
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
	.word	-1
Bool_protObj:
	.word	5
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	4
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
	.word	str_const15
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
	.word	Complex_protObj
	.word	Complex_init
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
Complex_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Complex.init
	.word	Complex.print
	.word	Complex.reflect_0
	.word	Complex.reflect_X
	.word	Complex.reflect_Y
	.word	Complex.equal
	.word	Complex.x_value
	.word	Complex.y_value
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
# Begin Emmitting code to generate initializer method for Complex
Complex_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	IO_init
# Begin Code no_epression expression at line number 0
	move	$a0 $zero
# End Code no_epression expression.
# Begin Code no_epression expression at line number 0
	move	$a0 $zero
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Complex
# Begin Emmitting code to generate initializer method for Main
Main_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 1
	move	$a0 $zero
# End Code no_epression expression.
# Begin Code no_epression expression at line number 1
	move	$a0 $zero
# End Code no_epression expression.
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
# Begin Code no_epression expression at line number 1
	move	$a0 $zero
# End Code no_epression expression.
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
# Begin Code no_epression expression at line number 1
	move	$a0 $zero
# End Code no_epression expression.
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
# Begin Emitting code for method init
Complex.init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code block epression at line number 25
# Begin Code eq expression at line number 26
# Begin Code objectID expression at line number 26
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 26
# Loading paramter object into ACC
	lw	$a0 8($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label0
	la	$a1 bool_const0
	jal	equality_test
label0:
# End Code eq expression.
# Begin Code eq expression at line number 27
# Begin Code objectID expression at line number 27
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code objectID expression at line number 27
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label1
	la	$a1 bool_const0
	jal	equality_test
label1:
# End Code eq expression.
# Begin Code objectID expression at line number 28
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 8
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
Complex.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -44
	move	$s0 $a0
# Begin Code cond expression at line number 33
# Begin Code eq expression at line number 33
# Begin Code objectID expression at line number 33
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 33
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label4
	la	$a1 bool_const0
	jal	equality_test
label4:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label2
# Begin Code disptach expression at line number 34
# Begin Code objectID expression at line number 34
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 34
	move	$a0 $s0
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	b	label3
label2:
# Begin Code disptach expression at line number 35
# Begin Code string const expression at line number 35
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 35
# Begin Code objectID expression at line number 35
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 35
# Begin Code string const expression at line number 35
	la	$a0 str_const3
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 35
# Begin Code objectID expression at line number 35
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 35
	move	$a0 $s0
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
label3:
# End Code cond expression.
	addiu	$sp $sp 44
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method reflect_0
Complex.reflect_0:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code block epression at line number 40
# Begin Code eq expression at line number 41
# Begin Code objectID expression at line number 41
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code neg expression at line number 41
# Begin Code objectID expression at line number 41
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -16($fp)
	jal	Object.copy
	lw	$t1 -16($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label10
	la	$a1 bool_const0
	jal	equality_test
label10:
# End Code eq expression.
# Begin Code eq expression at line number 42
# Begin Code objectID expression at line number 42
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code neg expression at line number 42
# Begin Code objectID expression at line number 42
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -16($fp)
	jal	Object.copy
	lw	$t1 -16($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label11
	la	$a1 bool_const0
	jal	equality_test
label11:
# End Code eq expression.
# Begin Code objectID expression at line number 43
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method reflect_0
# Begin Emitting code for method reflect_X
Complex.reflect_X:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code block epression at line number 48
# Begin Code eq expression at line number 49
# Begin Code objectID expression at line number 49
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code neg expression at line number 49
# Begin Code objectID expression at line number 49
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -16($fp)
	jal	Object.copy
	lw	$t1 -16($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label12
	la	$a1 bool_const0
	jal	equality_test
label12:
# End Code eq expression.
# Begin Code objectID expression at line number 50
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method reflect_X
# Begin Emitting code for method reflect_Y
Complex.reflect_Y:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code block epression at line number 55
# Begin Code eq expression at line number 56
# Begin Code objectID expression at line number 56
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code neg expression at line number 56
# Begin Code objectID expression at line number 56
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -16($fp)
	jal	Object.copy
	lw	$t1 -16($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label13
	la	$a1 bool_const0
	jal	equality_test
label13:
# End Code eq expression.
# Begin Code objectID expression at line number 57
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method reflect_Y
# Begin Emitting code for method equal
Complex.equal:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -36
	move	$s0 $a0
# Begin Code cond expression at line number 62
# Begin Code eq expression at line number 62
# Begin Code objectID expression at line number 62
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 62
# Begin Code objectID expression at line number 62
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label17
	la	$a1 bool_const0
	jal	equality_test
label17:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label14
# Begin Code cond expression at line number 64
# Begin Code eq expression at line number 64
# Begin Code objectID expression at line number 64
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 64
# Begin Code objectID expression at line number 64
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 64
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label21
	la	$a1 bool_const0
	jal	equality_test
label21:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label18
# Begin Code bool expression at line number 65
	la	$a0 bool_const1
# End Code bool expression.
	b	label19
label18:
# Begin Code bool expression at line number 66
	la	$a0 bool_const0
# End Code bool expression.
label19:
# End Code cond expression.
	b	label15
label14:
# Begin Code bool expression at line number 68
	la	$a0 bool_const0
# End Code bool expression.
label15:
# End Code cond expression.
	addiu	$sp $sp 36
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method equal
# Begin Emitting code for method x_value
Complex.x_value:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code objectID expression at line number 73
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method x_value
# Begin Emitting code for method y_value
Complex.y_value:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code objectID expression at line number 77
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method y_value
# Begin Emitting code for method main
Main.main:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -64
	move	$s0 $a0
# Begin Code let expression at line number 3
# Begin Code disptach expression at line number 3
# Begin Code int const expression at line number 3
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 3
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 3
	la	$a0 Complex_protObj
	jal	Object.copy
	jal	Complex_init
# End Code new with type Complex
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 3
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code block epression at line number 4
# Begin Code cond expression at line number 6
# Begin Code eq expression at line number 6
# Begin Code disptach expression at line number 6
# Begin Code objectID expression at line number 6
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 6
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code disptach expression at line number 6
# Begin Code objectID expression at line number 6
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 6
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label27
	la	$a1 bool_const0
	jal	equality_test
label27:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label23
# Begin Code disptach expression at line number 7
# Begin Code string const expression at line number 7
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 7
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 7
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	b	label24
label23:
# Begin Code disptach expression at line number 8
# Begin Code string const expression at line number 8
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 8
	move	$a0 $s0
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 8
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
label24:
# End Code cond expression.
# Begin Code cond expression at line number 11
# Begin Code disptach expression at line number 11
# Begin Code disptach expression at line number 11
# Begin Code objectID expression at line number 11
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 11
# Begin Code disptach expression at line number 11
# Begin Code objectID expression at line number 11
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label34:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label35:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label30
# Begin Code disptach expression at line number 12
# Begin Code string const expression at line number 12
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 12
	move	$a0 $s0
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 12
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	b	label31
label30:
# Begin Code disptach expression at line number 13
# Begin Code string const expression at line number 13
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 13
	move	$a0 $s0
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 13
	jal	_dispatch_abort
label37:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
label31:
# End Code cond expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 64
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main

# end of generated code