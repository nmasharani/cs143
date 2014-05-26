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
	.word	6
_bool_tag:
	.word	7
_string_tag:
	.word	8
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
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	8
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	8
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	8
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	8
	.word	11
	.word	String_dispTab
	.word	int_const9
	.ascii	"./Testfiles/hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	25
	.word	-1
int_const8:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	6
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
bool_const0:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Main_protObj:
	.word	9
	.word	7
	.word	Main_dispTab
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
Bazz_protObj:
	.word	2
	.word	6
	.word	Bazz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	-1
Razz_protObj:
	.word	4
	.word	10
	.word	Razz_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	-1
Bar_protObj:
	.word	5
	.word	12
	.word	Bar_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	0
	.word	int_const2
	.word	int_const2
	.word	0
	.word	-1
Foo_protObj:
	.word	3
	.word	8
	.word	Foo_dispTab
	.word	int_const2
	.word	0
	.word	0
	.word	0
	.word	int_const2
	.word	-1
String_protObj:
	.word	8
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0
	.word	-1
Bool_protObj:
	.word	7
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	6
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
	.word	str_const14
	.word	str_const11
	.word	str_const13
	.word	str_const12
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Bazz_protObj
	.word	Bazz_init
	.word	Foo_protObj
	.word	Foo_init
	.word	Razz_protObj
	.word	Razz_init
	.word	Bar_protObj
	.word	Bar_init
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
Bazz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
Foo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Razz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Bar_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
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
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -28
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 55
	la	$a0 Bazz_protObj
	jal	Object.copy
	jal	Bazz_init
# End Code new with type Bazz
	sw	$a0 12($s0)
# Begin Code new with type at line number 56
	la	$a0 Foo_protObj
	jal	Object.copy
	jal	Foo_init
# End Code new with type Foo
	sw	$a0 16($s0)
# Begin Code new with type at line number 57
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
# End Code new with type Razz
	sw	$a0 20($s0)
# Begin Code new with type at line number 58
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
# End Code new with type Bar
	sw	$a0 24($s0)
	move	$a0 $s0
	addiu	$sp $sp 28
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for Bazz
Bazz_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -24
	move	$s0 $a0
	jal	IO_init
# Begin Code int const expression at line number 37
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 12($s0)
# Begin Code typecase expression at line number 39
# Begin Code objectID expression at line number 39
	move	$a0 $s0
	move	$t3 $a0
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 39
	jal	_case_abort2
label1:
	lw	$t2 0($t3)
	blt	$t2 5 label2
	bgt	$t2 5 label2
	sw	$t3 -12($fp)
# Begin Code objectID expression at line number 43
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	b	label0
label2:
	lw	$t2 0($t3)
	blt	$t2 4 label3
	bgt	$t2 5 label3
	sw	$t3 -12($fp)
# Begin Code new with type at line number 41
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
# End Code new with type Bar
	b	label0
label3:
	lw	$t2 0($t3)
	blt	$t2 3 label4
	bgt	$t2 5 label4
	sw	$t3 -12($fp)
# Begin Code new with type at line number 42
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
# End Code new with type Razz
	b	label0
label4:
	lw	$t2 0($t3)
	blt	$t2 2 label5
	bgt	$t2 5 label5
	sw	$t3 -12($fp)
# Begin Code new with type at line number 40
	la	$a0 Foo_protObj
	jal	Object.copy
	jal	Foo_init
# End Code new with type Foo
	b	label0
label5:
	la	$a0 class_nameTab
	lw	$t2 0($t3)
	li	$t1 4
	mul	$t2 $t2 $t1
	addu	$a0 $a0 $t2
	jal	_case_abort
label0:
# End Code typecase expression.
	sw	$a0 16($s0)
# Begin Code disptach expression at line number 46
# Begin Code objectID expression at line number 46
	move	$a0 $s0
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 20($s0)
	move	$a0 $s0
	addiu	$sp $sp 24
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Bazz
# Begin Emmitting code to generate initializer method for Razz
Razz_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -36
	move	$s0 $a0
	jal	Foo_init
# Begin Code typecase expression at line number 26
# Begin Code objectID expression at line number 26
	move	$a0 $s0
	move	$t3 $a0
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 26
	jal	_case_abort2
label8:
	lw	$t2 0($t3)
	blt	$t2 5 label9
	bgt	$t2 5 label9
	sw	$t3 -12($fp)
# Begin Code objectID expression at line number 28
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	b	label7
label9:
	lw	$t2 0($t3)
	blt	$t2 4 label10
	bgt	$t2 5 label10
	sw	$t3 -12($fp)
# Begin Code new with type at line number 27
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
# End Code new with type Bar
	b	label7
label10:
	la	$a0 class_nameTab
	lw	$t2 0($t3)
	li	$t1 4
	mul	$t2 $t2 $t1
	addu	$a0 $a0 $t2
	jal	_case_abort
label7:
# End Code typecase expression.
	sw	$a0 32($s0)
# Begin Code plus expression at line number 31
# Begin Code plus expression at line number 31
# Begin Code plus expression at line number 31
# Begin Code plus expression at line number 31
# Begin Code static dispatch expression at line number 31
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code static dispatch expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 32($s0)
# End Code objectID expression.
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
	move	$a0 $s0
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 36($s0)
	move	$a0 $s0
	addiu	$sp $sp 36
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Razz
# Begin Emmitting code to generate initializer method for Bar
Bar_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Razz_init
# Begin Code disptach expression at line number 18
# Begin Code objectID expression at line number 18
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 40($s0)
# Begin Code disptach expression at line number 20
# Begin Code objectID expression at line number 20
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 20
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 44($s0)
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Bar
# Begin Emmitting code to generate initializer method for Foo
Foo_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -32
	move	$s0 $a0
	jal	Bazz_init
# Begin Code typecase expression at line number 4
# Begin Code objectID expression at line number 4
	move	$a0 $s0
	move	$t3 $a0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 4
	jal	_case_abort2
label19:
	lw	$t2 0($t3)
	blt	$t2 5 label20
	bgt	$t2 5 label20
	sw	$t3 -12($fp)
# Begin Code objectID expression at line number 7
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	b	label18
label20:
	lw	$t2 0($t3)
	blt	$t2 4 label21
	bgt	$t2 5 label21
	sw	$t3 -12($fp)
# Begin Code new with type at line number 5
	la	$a0 Bar_protObj
	jal	Object.copy
	jal	Bar_init
# End Code new with type Bar
	b	label18
label21:
	lw	$t2 0($t3)
	blt	$t2 3 label22
	bgt	$t2 5 label22
	sw	$t3 -12($fp)
# Begin Code new with type at line number 6
	la	$a0 Razz_protObj
	jal	Object.copy
	jal	Razz_init
# End Code new with type Razz
	b	label18
label22:
	la	$a0 class_nameTab
	lw	$t2 0($t3)
	li	$t1 4
	mul	$t2 $t2 $t1
	addu	$a0 $a0 $t2
	jal	_case_abort
label18:
# End Code typecase expression.
	sw	$a0 24($s0)
# Begin Code plus expression at line number 10
# Begin Code plus expression at line number 10
# Begin Code plus expression at line number 10
# Begin Code disptach expression at line number 10
# Begin Code objectID expression at line number 10
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 10
# Begin Code objectID expression at line number 10
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 10
# Begin Code objectID expression at line number 10
	move	$a0 $s0
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 10
# Begin Code objectID expression at line number 10
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 10
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 28($s0)
	move	$a0 $s0
	addiu	$sp $sp 32
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Foo
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 3
	move	$a0 $zero
# End Code no_epression expression.
# Begin Code no_epression expression at line number 3
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
# Begin Code no_epression expression at line number 3
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
# Begin Code no_epression expression at line number 3
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
# Begin Emitting code for method main
Main.main:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code string const expression at line number 60
	la	$a0 str_const1
# End Code string const expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method printh
Bazz.printh:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code block epression at line number 48
# Begin Code disptach expression at line number 48
# Begin Code objectID expression at line number 48
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 48
	move	$a0 $s0
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code int const expression at line number 48
	la	$a0 int_const2
# End Code int const expression.
# End Code block epression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method printh
# Begin Emitting code for method doh
Bazz.doh:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code let expression at line number 50
# Begin Code objectID expression at line number 50
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code block epression at line number 50
# Begin Code assign expression at line number 50
# Begin Code plus expression at line number 50
# Begin Code objectID expression at line number 50
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 50
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 50
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method doh
# Begin Emitting code for method doh
Foo.doh:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code let expression at line number 12
# Begin Code objectID expression at line number 12
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code block epression at line number 12
# Begin Code assign expression at line number 12
# Begin Code plus expression at line number 12
# Begin Code objectID expression at line number 12
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 12
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 12
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method doh

# end of generated code
