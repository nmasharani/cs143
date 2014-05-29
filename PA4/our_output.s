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
	.word	1
	.word	-1
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"C"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	10
	.word	String_dispTab
	.word	int_const10
	.ascii	"Testfiles/dispatch.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	21
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
	.word	3
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
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
	.word	1
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
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
C_protObj:
	.word	8
	.word	5
	.word	C_dispTab
	.word	0
	.word	int_const5
	.word	-1
B_protObj:
	.word	7
	.word	4
	.word	B_dispTab
	.word	0
	.word	-1
A_protObj:
	.word	6
	.word	4
	.word	A_dispTab
	.word	0
	.word	-1
Main_protObj:
	.word	5
	.word	7
	.word	Main_dispTab
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
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
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
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
	.word	A_protObj
	.word	A_init
	.word	B_protObj
	.word	B_init
	.word	C_protObj
	.word	C_init
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
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.no_params
	.word	A.single_param
	.word	A.multiple_params
	.word	A.test_self_dispatch
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	B.no_params
	.word	B.single_param
	.word	B.multiple_params
	.word	B.test_self_dispatch
C_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C.test
	.word	C.test_param_order
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
# Begin Emmitting code to generate initializer method for C
C_init:
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
	addiu	$sp $sp -12
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 138
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 12($s0)
# Begin Code int const expression at line number 139
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for C
# Begin Emmitting code to generate initializer method for B
B_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	A_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for B
# Begin Emmitting code to generate initializer method for A
A_init:
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
# Begin Code new with type at line number 52
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for A
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
	addiu	$sp $sp -32
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 2
	la	$a0 A_protObj
	jal	Object.copy
	jal	A_init
# End Code new with type A
	sw	$a0 12($s0)
# Begin Code new with type at line number 3
	la	$a0 B_protObj
	jal	Object.copy
	jal	B_init
# End Code new with type B
	sw	$a0 16($s0)
# Begin Code new with type at line number 4
	la	$a0 C_protObj
	jal	Object.copy
	jal	C_init
# End Code new with type C
	sw	$a0 20($s0)
# Begin Code new with type at line number 5
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 24($s0)
	move	$a0 $s0
	addiu	$sp $sp 32
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
# Begin Emitting code for method test
C.test:
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
	addiu	$sp $sp -36
	move	$s0 $a0
# Begin Code disptach expression at line number 141
# Begin Code objectID expression at line number 141
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code assign expression at line number 141
# Begin Code plus expression at line number 141
# Begin Code objectID expression at line number 141
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 141
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 16($s0)
# End Code assign expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code plus expression at line number 141
# Begin Code objectID expression at line number 141
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 141
	la	$a0 int_const4
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code assign expression at line number 141
# Begin Code plus expression at line number 141
# Begin Code objectID expression at line number 141
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 141
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 16($s0)
# End Code assign expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code plus expression at line number 141
# Begin Code objectID expression at line number 141
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 141
	la	$a0 int_const4
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 141
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 141
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 36
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method test
# Begin Emitting code for method test_param_order
C.test_param_order:
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
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code block epression at line number 145
# Begin Code disptach expression at line number 146
# Begin Code objectID expression at line number 146
# Loading paramter object into ACC
	lw	$a0 28($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 146
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 146
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 147
# Begin Code string const expression at line number 147
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 147
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 147
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 148
# Begin Code objectID expression at line number 148
# Loading paramter object into ACC
	lw	$a0 24($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 148
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 148
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 149
# Begin Code string const expression at line number 149
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 149
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 149
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 150
# Begin Code objectID expression at line number 150
# Loading paramter object into ACC
	lw	$a0 20($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 150
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 150
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 151
# Begin Code string const expression at line number 151
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 151
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 151
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 152
# Begin Code objectID expression at line number 152
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 152
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 152
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 153
# Begin Code string const expression at line number 153
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 153
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 153
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 154
# Begin Code objectID expression at line number 154
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 154
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 154
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 155
# Begin Code string const expression at line number 155
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 155
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 155
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 156
# Loading paramter object into ACC
	lw	$a0 28($fp)
# End Code objectID expression.
# End Code block epression.
	addiu	$sp $sp 40
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 32
	jr	$ra	
# End Emitting code for method test_param_order
# Begin Emitting code for method no_params
B.no_params:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code int const expression at line number 91
	la	$a0 int_const4
# End Code int const expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method no_params
# Begin Emitting code for method single_param
B.single_param:
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
# Begin Code neg expression at line number 95
# Begin Code objectID expression at line number 95
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -4($fp)
	jal	Object.copy
	lw	$t1 -4($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method single_param
# Begin Emitting code for method multiple_params
B.multiple_params:
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
	addiu	$sp $sp -28
	move	$s0 $a0
# Begin Code block epression at line number 99
# Begin Code disptach expression at line number 100
# Begin Code objectID expression at line number 100
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 100
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 100
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 101
# Begin Code string const expression at line number 101
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 101
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 101
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 102
# Begin Code objectID expression at line number 102
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 102
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 102
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 103
# Begin Code string const expression at line number 103
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 103
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 103
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code plus expression at line number 104
# Begin Code disptach expression at line number 104
# Begin Code objectID expression at line number 104
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 104
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code disptach expression at line number 104
# Begin Code objectID expression at line number 104
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 104
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
# End Code block epression.
	addiu	$sp $sp 28
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method multiple_params
# Begin Emitting code for method test_self_dispatch
B.test_self_dispatch:
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
# Begin Code block epression at line number 109
# Begin Code disptach expression at line number 110
# Begin Code disptach expression at line number 110
# Begin Code objectID expression at line number 110
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 110
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 111
# Begin Code string const expression at line number 111
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 111
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 112
# Begin Code disptach expression at line number 112
# Begin Code int const expression at line number 112
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 112
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 112
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 113
# Begin Code string const expression at line number 113
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 113
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 113
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 114
# Begin Code disptach expression at line number 114
# Begin Code int const expression at line number 114
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 114
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 114
	move	$a0 $s0
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 114
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 114
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 114
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 115
# Begin Code string const expression at line number 115
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 115
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 115
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 116
# Begin Code disptach expression at line number 116
# Begin Code objectID expression at line number 116
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 116
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 116
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 116
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 117
# Begin Code string const expression at line number 117
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 117
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 117
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 118
# Begin Code disptach expression at line number 118
# Begin Code int const expression at line number 118
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 118
	move	$a0 $s0
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 118
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 118
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 118
	jal	_dispatch_abort
label30:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 119
# Begin Code string const expression at line number 119
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 119
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 119
	jal	_dispatch_abort
label31:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 120
# Begin Code disptach expression at line number 120
# Begin Code int const expression at line number 120
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 120
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 120
	move	$a0 $s0
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 120
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 120
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 120
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 121
# Begin Code string const expression at line number 121
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 121
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 121
	jal	_dispatch_abort
label34:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 123
# Begin Code static dispatch expression at line number 123
# Begin Code objectID expression at line number 123
	move	$a0 $s0
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label35:
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 123
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 124
# Begin Code string const expression at line number 124
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 124
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label37
	la	$a0 str_const0
	li	$t1 124
	jal	_dispatch_abort
label37:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 125
# Begin Code static dispatch expression at line number 125
# Begin Code int const expression at line number 125
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 125
	move	$a0 $s0
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 125
	jal	_dispatch_abort
label38:
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 125
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 125
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 126
# Begin Code string const expression at line number 126
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 126
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 126
	jal	_dispatch_abort
label40:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 127
# Begin Code static dispatch expression at line number 127
# Begin Code int const expression at line number 127
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 127
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 127
	move	$a0 $s0
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 127
	jal	_dispatch_abort
label41:
	la	$t1 A_dispTab
	lw	$t1 20($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 127
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 127
	jal	_dispatch_abort
label42:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 128
# Begin Code string const expression at line number 128
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 128
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code static dispatch expression at line number 131
# Begin Code objectID expression at line number 131
	move	$a0 $s0
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 131
	jal	_dispatch_abort
label44:
	la	$t1 A_dispTab
	lw	$t1 24($t1)
	jalr		$t1
# End Code static dispatch expression.
# End Code block epression.
	addiu	$sp $sp 108
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method test_self_dispatch
# Begin Emitting code for method no_params
A.no_params:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code int const expression at line number 54
	la	$a0 int_const3
# End Code int const expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method no_params
# Begin Emitting code for method single_param
A.single_param:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 58
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method single_param
# Begin Emitting code for method multiple_params
A.multiple_params:
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
# Begin Code block epression at line number 62
# Begin Code disptach expression at line number 63
# Begin Code objectID expression at line number 63
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 63
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 63
	jal	_dispatch_abort
label45:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 64
# Begin Code string const expression at line number 64
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 64
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label46
	la	$a0 str_const0
	li	$t1 64
	jal	_dispatch_abort
label46:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 65
# Begin Code objectID expression at line number 65
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 65
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label47
	la	$a0 str_const0
	li	$t1 65
	jal	_dispatch_abort
label47:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 66
# Begin Code string const expression at line number 66
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 66
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 66
	jal	_dispatch_abort
label48:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code plus expression at line number 67
# Begin Code objectID expression at line number 67
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code objectID expression at line number 67
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
# End Code block epression.
	addiu	$sp $sp 20
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method multiple_params
# Begin Emitting code for method test_self_dispatch
A.test_self_dispatch:
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
	addiu	$sp $sp -72
	move	$s0 $a0
# Begin Code block epression at line number 72
# Begin Code disptach expression at line number 73
# Begin Code disptach expression at line number 73
# Begin Code objectID expression at line number 73
	move	$a0 $s0
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 73
	jal	_dispatch_abort
label49:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 73
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 73
	jal	_dispatch_abort
label50:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 74
# Begin Code string const expression at line number 74
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 74
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label51
	la	$a0 str_const0
	li	$t1 74
	jal	_dispatch_abort
label51:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 75
# Begin Code disptach expression at line number 75
# Begin Code int const expression at line number 75
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 75
	move	$a0 $s0
	bne	$a0 $zero label52
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
label52:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 75
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label53
	la	$a0 str_const0
	li	$t1 75
	jal	_dispatch_abort
label53:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 76
# Begin Code string const expression at line number 76
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 76
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 76
	jal	_dispatch_abort
label54:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 77
# Begin Code disptach expression at line number 77
# Begin Code int const expression at line number 77
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 77
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 77
	move	$a0 $s0
	bne	$a0 $zero label55
	la	$a0 str_const0
	li	$t1 77
	jal	_dispatch_abort
label55:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 77
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label56
	la	$a0 str_const0
	li	$t1 77
	jal	_dispatch_abort
label56:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 78
# Begin Code string const expression at line number 78
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 78
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 78
	jal	_dispatch_abort
label57:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 79
# Begin Code disptach expression at line number 79
# Begin Code objectID expression at line number 79
	move	$a0 $s0
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 79
	jal	_dispatch_abort
label58:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 79
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label59
	la	$a0 str_const0
	li	$t1 79
	jal	_dispatch_abort
label59:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 80
# Begin Code string const expression at line number 80
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 80
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label60
	la	$a0 str_const0
	li	$t1 80
	jal	_dispatch_abort
label60:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 81
# Begin Code disptach expression at line number 81
# Begin Code int const expression at line number 81
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 81
	move	$a0 $s0
	bne	$a0 $zero label61
	la	$a0 str_const0
	li	$t1 81
	jal	_dispatch_abort
label61:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 81
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 81
	jal	_dispatch_abort
label62:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 82
# Begin Code string const expression at line number 82
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 82
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 82
	jal	_dispatch_abort
label63:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 83
# Begin Code disptach expression at line number 83
# Begin Code int const expression at line number 83
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 83
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 83
	move	$a0 $s0
	bne	$a0 $zero label64
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
label64:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 83
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label65
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
label65:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 84
# Begin Code string const expression at line number 84
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 84
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 84
	jal	_dispatch_abort
label66:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 72
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method test_self_dispatch
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
	addiu	$sp $sp -108
	move	$s0 $a0
# Begin Code block epression at line number 7
# Begin Code disptach expression at line number 8
# Begin Code disptach expression at line number 8
# Begin Code objectID expression at line number 8
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label67
	la	$a0 str_const0
	li	$t1 8
	jal	_dispatch_abort
label67:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 8
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label68
	la	$a0 str_const0
	li	$t1 8
	jal	_dispatch_abort
label68:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 9
# Begin Code string const expression at line number 9
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 9
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 9
	jal	_dispatch_abort
label69:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 10
# Begin Code disptach expression at line number 10
# Begin Code int const expression at line number 10
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 10
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label70:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 10
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label71
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label71:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 11
# Begin Code string const expression at line number 11
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 11
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label72
	la	$a0 str_const0
	li	$t1 11
	jal	_dispatch_abort
label72:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 12
# Begin Code disptach expression at line number 12
# Begin Code int const expression at line number 12
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 12
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 12
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label73
	la	$a0 str_const0
	li	$t1 12
	jal	_dispatch_abort
label73:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 12
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 12
	jal	_dispatch_abort
label74:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 13
# Begin Code string const expression at line number 13
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 13
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 13
	jal	_dispatch_abort
label75:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 14
# Begin Code disptach expression at line number 14
# Begin Code objectID expression at line number 14
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label76
	la	$a0 str_const0
	li	$t1 14
	jal	_dispatch_abort
label76:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 14
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 14
	jal	_dispatch_abort
label77:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 15
# Begin Code string const expression at line number 15
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 15
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 15
	jal	_dispatch_abort
label78:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 16
# Begin Code disptach expression at line number 16
# Begin Code int const expression at line number 16
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 16
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label79:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 16
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label80
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label80:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 17
# Begin Code string const expression at line number 17
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 17
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label81
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label81:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 18
# Begin Code disptach expression at line number 18
# Begin Code int const expression at line number 18
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 18
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 18
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label82
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label82:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 18
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 19
# Begin Code string const expression at line number 19
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 19
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label84
	la	$a0 str_const0
	li	$t1 19
	jal	_dispatch_abort
label84:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 21
# Begin Code static dispatch expression at line number 21
# Begin Code objectID expression at line number 21
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label85
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label85:
	la	$t1 A_dispTab
	lw	$t1 12($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 21
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label86
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label86:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 22
# Begin Code string const expression at line number 22
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 22
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label87
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
label87:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 23
# Begin Code static dispatch expression at line number 23
# Begin Code int const expression at line number 23
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 23
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label88
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label88:
	la	$t1 A_dispTab
	lw	$t1 16($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 23
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label89
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label89:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 24
# Begin Code string const expression at line number 24
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 24
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label90
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
label90:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 25
# Begin Code static dispatch expression at line number 25
# Begin Code int const expression at line number 25
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 25
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 25
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label91
	la	$a0 str_const0
	li	$t1 25
	jal	_dispatch_abort
label91:
	la	$t1 A_dispTab
	lw	$t1 20($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 25
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label92
	la	$a0 str_const0
	li	$t1 25
	jal	_dispatch_abort
label92:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 26
# Begin Code string const expression at line number 26
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 26
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label93
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
label93:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 28
# Begin Code objectID expression at line number 28
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label94
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
label94:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 29
# Begin Code objectID expression at line number 29
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label95
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
label95:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label96
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label96:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 32
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 108
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main

# end of generated code
