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
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
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
	.word	int_const4
	.ascii	"Cons"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"List"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	" "
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	9
	.word	String_dispTab
	.word	int_const10
	.ascii	"Testfiles/list.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	17
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
	.word	6
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	5
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
	.word	3
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
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
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
Cons_protObj:
	.word	7
	.word	5
	.word	Cons_dispTab
	.word	int_const1
	.word	0
	.word	-1
List_protObj:
	.word	6
	.word	3
	.word	List_dispTab
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
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
	.word	str_const7
	.word	str_const8
	.word	str_const14
	.word	str_const9
	.word	str_const10
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
	.word	List_protObj
	.word	List_init
	.word	Cons_protObj
	.word	Cons_init
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
	.word	Main.print_list
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
List_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	List.isNil
	.word	List.head
	.word	List.tail
	.word	List.cons
Cons_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Cons.isNil
	.word	Cons.head
	.word	Cons.tail
	.word	List.cons
	.word	Cons.init
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
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for Cons
Cons_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	List_init
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Cons
# Begin Emmitting code to generate initializer method for List
List_init:
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
# End Emmitting code to generate initializer method for List
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
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
# Begin Emitting code for method print_list
Main.print_list:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code cond expression at line number 108
# Begin Code disptach expression at line number 108
# Begin Code objectID expression at line number 108
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t2 12($a0)
	beqz	$t2 label0
# Begin Code disptach expression at line number 108
# Begin Code string const expression at line number 108
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 108
	move	$a0 $s0
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	b	label1
label0:
# Begin Code block epression at line number 109
# Begin Code disptach expression at line number 110
# Begin Code disptach expression at line number 110
# Begin Code objectID expression at line number 110
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 110
	move	$a0 $s0
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 110
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 111
# Begin Code string const expression at line number 111
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 111
	move	$a0 $s0
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 111
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 112
# Begin Code disptach expression at line number 112
# Begin Code objectID expression at line number 112
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 112
	move	$a0 $s0
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 112
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
label1:
# End Code cond expression.
	addiu	$sp $sp 24
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method print_list
# Begin Emitting code for method main
Main.main:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code block epression at line number 127
# Begin Code assign expression at line number 128
# Begin Code disptach expression at line number 128
# Begin Code int const expression at line number 128
	la	$a0 int_const5
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 128
# Begin Code int const expression at line number 128
	la	$a0 int_const4
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 128
# Begin Code int const expression at line number 128
	la	$a0 int_const3
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 128
# Begin Code int const expression at line number 128
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 128
# Begin Code int const expression at line number 128
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 128
	la	$a0 List_protObj
	jal	Object.copy
	jal	List_init
# End Code new with type List
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label10:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 128
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code loop expression at line number 129
label14:
# Begin Code comp expression at line number 129
# Begin Code disptach expression at line number 129
# Begin Code objectID expression at line number 129
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 129
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t2 12($a0)
	beqz	$t2 label17
	la	$a0 bool_const1
	b	label18
label17:
	la	$a0 bool_const1
label18:
# End Code comp expression.
	lw	$t1 12($a0)
	beqz	$t1 label15
# Begin Code block epression at line number 130
# Begin Code disptach expression at line number 131
# Begin Code objectID expression at line number 131
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 131
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 131
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 132
# Begin Code disptach expression at line number 132
# Begin Code objectID expression at line number 132
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 132
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 12($s0)
# End Code assign expression.
# End Code block epression.
	b	label14
label15:
	li	$a0 0
# End Code loop expression.
# End Code block epression.
	addiu	$sp $sp 24
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method isNil
Cons.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 76
	la	$a0 bool_const0
# End Code bool expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method isNil
# Begin Emitting code for method head
Cons.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 78
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method head
# Begin Emitting code for method tail
Cons.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 80
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method tail
# Begin Emitting code for method init
Cons.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 83
# Begin Code assign expression at line number 84
# Begin Code objectID expression at line number 84
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code assign expression at line number 85
# Begin Code objectID expression at line number 85
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 86
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method isNil
List.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 29
	la	$a0 bool_const1
# End Code bool expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method isNil
# Begin Emitting code for method head
List.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 35
# Begin Code disptach expression at line number 35
# Begin Code objectID expression at line number 35
	move	$a0 $s0
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code int const expression at line number 35
	la	$a0 int_const1
# End Code int const expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method head
# Begin Emitting code for method tail
List.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 40
# Begin Code disptach expression at line number 40
# Begin Code objectID expression at line number 40
	move	$a0 $s0
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 40
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method tail
# Begin Emitting code for method cons
List.cons:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code disptach expression at line number 50
# Begin Code objectID expression at line number 50
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 50
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 50
	la	$a0 Cons_protObj
	jal	Object.copy
	jal	Cons_init
# End Code new with type Cons
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method cons

# end of generated code
