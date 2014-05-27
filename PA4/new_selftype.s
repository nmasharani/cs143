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
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Alpha"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bravo"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Omaha\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"hello there \n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	11
	.word	String_dispTab
	.word	int_const9
	.ascii	"./Testfiles/new_selftype.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	27
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
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
Alpha_protObj:
	.word	6
	.word	5
	.word	Alpha_dispTab
	.word	str_const15
	.word	0
	.word	-1
Bravo_protObj:
	.word	7
	.word	7
	.word	Bravo_dispTab
	.word	str_const15
	.word	0
	.word	str_const15
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
	.word	int_const0
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
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const14
	.word	str_const13
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
	.word	Alpha_protObj
	.word	Alpha_init
	.word	Bravo_protObj
	.word	Bravo_init
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
Alpha_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Alpha.print
Bravo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Bravo.print
	.word	Bravo.new_
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
# Begin Emmitting code to generate initializer method for Alpha
Alpha_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Object_init
# Begin Code string const expression at line number 28
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 12($s0)
# Begin Code new with type at line number 29
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Alpha
# Begin Emmitting code to generate initializer method for Bravo
Bravo_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Alpha_init
# Begin Code string const expression at line number 11
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 20($s0)
# Begin Code new with type at line number 12
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
# End Code new with type IO
	sw	$a0 24($s0)
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Bravo
# Begin Emmitting code to generate initializer method for Main
Main_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Object_init
# Begin Code new with type at line number 2
	la	$a0 Bravo_protObj
	jal	Object.copy
	jal	Bravo_init
# End Code new with type Bravo
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 16
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
# Begin Emitting code for method print
	.globl	Alpha.print
Alpha.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code disptach expression at line number 31
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 31
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method new_
	.globl	Bravo.new_
Bravo.new_:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code block epression at line number 14
# Begin Code let expression at line number 15
# Begin Code new with type at line number 15
	la	$a0 Alpha_protObj
	jal	Object.copy
	jal	Alpha_init
# End Code new with type Alpha
	sw	$a0 -12($fp)
# Begin Code block epression at line number 15
# Begin Code disptach expression at line number 16
# Begin Code objectID expression at line number 16
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 16
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
# End Code let expression.
# End Code block epression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method new_
# Begin Emitting code for method print
	.globl	Bravo.print
Bravo.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code disptach expression at line number 23
# Begin Code objectID expression at line number 23
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 23
# Loading attribute object into ACC
	lw	$a0 24($s0)
# End Code objectID expression.
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method main
	.globl	Main.main
Main.main:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 4
# Begin Code disptach expression at line number 5
# Begin Code objectID expression at line number 5
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 5
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main

# end of generated code
