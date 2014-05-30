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
	.word	_GenGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_GenGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	1
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Hanky"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const0
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Value of sum is = "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"Value of y is = "
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const12
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"Value of x is = "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	11
	.word	String_dispTab
	.word	int_const13
	.ascii	"Testfiles/define_init.cl"
	.byte	0	
	.align	2
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	24
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	16
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	18
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
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
Hanky_protObj:
	.word	6
	.word	6
	.word	Hanky_dispTab
	.word	int_const2
	.word	int_const2
	.word	0
	.word	-1
Main_protObj:
	.word	5
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
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
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
	.word	str_const15
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
	.word	Hanky_protObj
	.word	Hanky_init
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
Hanky_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Hanky.init
	.word	Hanky.print_values
	.word	Hanky.do_sum
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
# Begin Emmitting code to generate initializer method for Hanky
Hanky_init:
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
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 15
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 20($s0)
	addiu	$a1 $s0 20
	jal	_GenGC_Assign
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Hanky
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
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 2
	la	$a0 Hanky_protObj
	jal	Object.copy
	jal	Hanky_init
# End Code new with type Hanky
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
	move	$a0 $s0
	addiu	$sp $sp 8
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
# Begin Emitting code for method init
Hanky.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 18
# Begin Code assign expression at line number 19
# Begin Code objectID expression at line number 19
# Loading parameter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 12
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 20
# Begin Code objectID expression at line number 20
# Loading parameter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 16
	jal	_GenGC_Assign
# End Code assign expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print_values
Hanky.print_values:
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
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code block epression at line number 25
# Begin Code disptach expression at line number 26
# Begin Code string const expression at line number 26
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 26
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 27
# Begin Code objectID expression at line number 27
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 27
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 28
# Begin Code string const expression at line number 28
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 28
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 29
# Begin Code string const expression at line number 29
	la	$a0 str_const3
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 29
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 30
# Begin Code objectID expression at line number 30
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 30
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 31
# Begin Code string const expression at line number 31
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 24
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print_values
# Begin Emitting code for method do_sum
Hanky.do_sum:
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
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code let expression at line number 36
	la	$a0 Int_protObj
	jal	Object.copy
	sw	$a0 -4($fp)
# Begin Code block epression at line number 37
# Begin Code assign expression at line number 38
# Begin Code plus expression at line number 38
# Begin Code objectID expression at line number 38
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -8($fp)
# Begin Code objectID expression at line number 38
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	lw	$t1 -8($fp)
	sw	$zero -8($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
	sw	$zero -4($fp)
# End Code assign expression.
# Begin Code disptach expression at line number 39
# Begin Code string const expression at line number 39
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 39
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 40
# Begin Code objectID expression at line number 40
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 40
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 41
# Begin Code string const expression at line number 41
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 41
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 41
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	sw	$zero -4($fp)
# End Code let expression.
	addiu	$sp $sp 20
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method do_sum
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
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code block epression at line number 4
# Begin Code disptach expression at line number 5
# Begin Code int const expression at line number 5
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 5
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 5
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 5
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 6
# Begin Code objectID expression at line number 6
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 6
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 7
# Begin Code objectID expression at line number 7
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 7
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main

# end of generated code
