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
str_const16:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
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
	.word	int_const3
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
	.word	int_const7
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
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
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
	.word	10
	.word	String_dispTab
	.word	int_const2
	.ascii	"./Testfiles/cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
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
	.word	17
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	20
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
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
CellularAutomaton_protObj:
	.word	2
	.word	4
	.word	CellularAutomaton_dispTab
	.word	str_const16
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
	.word	str_const9
	.word	str_const10
	.word	str_const14
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const15
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	CellularAutomaton_protObj
	.word	CellularAutomaton_init
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
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
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
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 0
	move	$a0 $zero
# End Code no_epression expression.
	sw	$a0 12($s0)
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
	jal	IO_init
# Begin Code no_epression expression at line number 0
	move	$a0 $zero
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for CellularAutomaton
# Begin Emmitting code to generate initializer method for String
String_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	Object_init
# Begin Code no_epression expression at line number 5
	move	$a0 $zero
# End Code no_epression expression.
# Begin Code no_epression expression at line number 5
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
# Begin Code no_epression expression at line number 5
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
# Begin Code no_epression expression at line number 5
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
	addiu	$sp $sp -32
	move	$s0 $a0
# Begin Code block epression at line number 82
# Begin Code assign expression at line number 83
# Begin Code disptach expression at line number 83
# Begin Code string const expression at line number 83
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 83
	la	$a0 CellularAutomaton_protObj
	jal	Object.copy
	jal	CellularAutomaton_init
# End Code new with type CellularAutomaton
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 83
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code disptach expression at line number 84
# Begin Code objectID expression at line number 84
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 84
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code let expression at line number 85
# Begin Code int const expression at line number 85
	la	$a0 int_const2
# End Code int const expression.
	sw	$a0 -12($fp)
# Begin Code loop expression at line number 86
label2:
# Begin Code lt expression at line number 86
# Begin Code int const expression at line number 86
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 -16($fp)
# Begin Code objectID expression at line number 86
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	lw	$t1 -16($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label4
	la	$a0 bool_const0
	b	label5
label4:
	la	$a0 bool_const1
label5:
# End Code lt expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label3
# Begin Code block epression at line number 87
# Begin Code disptach expression at line number 88
# Begin Code objectID expression at line number 88
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 88
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 56($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 89
# Begin Code objectID expression at line number 89
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 89
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 90
# Begin Code sub expression at line number 90
# Begin Code objectID expression at line number 90
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 90
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# End Code block epression.
	b	label2
label3:
	li	$a0 0
# End Code loop expression.
# End Code let expression.
# Begin Code objectID expression at line number 94
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 32
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method init
CellularAutomaton.init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 9
# Begin Code assign expression at line number 10
# Begin Code objectID expression at line number 10
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 11
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
CellularAutomaton.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code block epression at line number 16
# Begin Code disptach expression at line number 17
# Begin Code disptach expression at line number 17
# Begin Code string const expression at line number 17
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 17
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 17
	move	$a0 $s0
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 18
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method num_cells
CellularAutomaton.num_cells:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code disptach expression at line number 23
# Begin Code objectID expression at line number 23
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label10
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label10:
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
CellularAutomaton.cell:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code disptach expression at line number 27
# Begin Code objectID expression at line number 27
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 27
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 27
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell
# Begin Emitting code for method cell_left_neighbor
CellularAutomaton.cell_left_neighbor:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code cond expression at line number 31
# Begin Code eq expression at line number 31
# Begin Code objectID expression at line number 31
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 31
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label14
	la	$a1 bool_const0
	jal	equality_test
label14:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label12
# Begin Code disptach expression at line number 32
# Begin Code sub expression at line number 32
# Begin Code disptach expression at line number 32
# Begin Code objectID expression at line number 32
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 32
	la	$a0 int_const0
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
# Begin Code objectID expression at line number 32
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	b	label13
label12:
# Begin Code disptach expression at line number 34
# Begin Code sub expression at line number 34
# Begin Code objectID expression at line number 34
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 34
	la	$a0 int_const0
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
# Begin Code objectID expression at line number 34
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
label13:
# End Code cond expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell_left_neighbor
# Begin Emitting code for method cell_right_neighbor
CellularAutomaton.cell_right_neighbor:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -40
	move	$s0 $a0
# Begin Code cond expression at line number 39
# Begin Code eq expression at line number 39
# Begin Code objectID expression at line number 39
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code sub expression at line number 39
# Begin Code disptach expression at line number 39
# Begin Code objectID expression at line number 39
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code int const expression at line number 39
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -16($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
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
# Begin Code disptach expression at line number 40
# Begin Code int const expression at line number 40
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 40
	move	$a0 $s0
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	b	label19
label18:
# Begin Code disptach expression at line number 42
# Begin Code plus expression at line number 42
# Begin Code objectID expression at line number 42
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 42
	la	$a0 int_const0
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
# Begin Code objectID expression at line number 42
	move	$a0 $s0
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
label19:
# End Code cond expression.
	addiu	$sp $sp 40
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell_right_neighbor
# Begin Emitting code for method cell_at_next_evolution
CellularAutomaton.cell_at_next_evolution:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -80
	move	$s0 $a0
# Begin Code cond expression at line number 49
# Begin Code eq expression at line number 52
# Begin Code plus expression at line number 51
# Begin Code plus expression at line number 50
# Begin Code cond expression at line number 49
# Begin Code eq expression at line number 49
# Begin Code disptach expression at line number 49
# Begin Code objectID expression at line number 49
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 49
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code string const expression at line number 49
	la	$a0 str_const2
# End Code string const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label29
	la	$a1 bool_const0
	jal	equality_test
label29:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label26
# Begin Code int const expression at line number 49
	la	$a0 int_const0
# End Code int const expression.
	b	label27
label26:
# Begin Code int const expression at line number 49
	la	$a0 int_const1
# End Code int const expression.
label27:
# End Code cond expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 50
# Begin Code eq expression at line number 50
# Begin Code disptach expression at line number 50
# Begin Code objectID expression at line number 50
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 50
	move	$a0 $s0
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 50
	la	$a0 str_const2
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label33
	la	$a1 bool_const0
	jal	equality_test
label33:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label30
# Begin Code int const expression at line number 50
	la	$a0 int_const0
# End Code int const expression.
	b	label31
label30:
# Begin Code int const expression at line number 50
	la	$a0 int_const1
# End Code int const expression.
label31:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code cond expression at line number 51
# Begin Code eq expression at line number 51
# Begin Code disptach expression at line number 51
# Begin Code objectID expression at line number 51
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 51
	move	$a0 $s0
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label36:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code string const expression at line number 51
	la	$a0 str_const2
# End Code string const expression.
	lw	$t1 -16($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label37
	la	$a1 bool_const0
	jal	equality_test
label37:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label34
# Begin Code int const expression at line number 51
	la	$a0 int_const0
# End Code int const expression.
	b	label35
label34:
# Begin Code int const expression at line number 51
	la	$a0 int_const1
# End Code int const expression.
label35:
# End Code cond expression.
	lw	$t1 -12($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# Begin Code int const expression at line number 52
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label38
	la	$a1 bool_const0
	jal	equality_test
label38:
# End Code eq expression.
	lw	$t2 12($a0)
	beq	$t2 $zero label24
# Begin Code string const expression at line number 54
	la	$a0 str_const2
# End Code string const expression.
	b	label25
label24:
# Begin Code string const expression at line number 56
	la	$a0 str_const3
# End Code string const expression.
label25:
# End Code cond expression.
	addiu	$sp $sp 80
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cell_at_next_evolution
# Begin Emitting code for method evolve
CellularAutomaton.evolve:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -44
	move	$s0 $a0
# Begin Code let expression at line number 61
	la	$a0 Int_protObj
	jal	Object.copy
	sw	$a0 -12($fp)
# Begin Code let expression at line number 62
# Begin Code disptach expression at line number 62
# Begin Code objectID expression at line number 62
	move	$a0 $s0
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code let expression at line number 63
	la	$a0 String_protObj
	jal	Object.copy
	sw	$a0 -20($fp)
# Begin Code block epression at line number 64
# Begin Code loop expression at line number 65
label40:
# Begin Code lt expression at line number 65
# Begin Code objectID expression at line number 65
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -24($fp)
# Begin Code objectID expression at line number 65
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	lw	$t1 -24($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label42
	la	$a0 bool_const0
	b	label43
label42:
	la	$a0 bool_const1
label43:
# End Code lt expression.
	lw	$t1 12($a0)
	beq	$t1 $zero label41
# Begin Code block epression at line number 66
# Begin Code assign expression at line number 67
# Begin Code disptach expression at line number 67
# Begin Code disptach expression at line number 67
# Begin Code objectID expression at line number 67
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 67
	move	$a0 $s0
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 67
# Loading local object into ACC
	lw	$a0 -20($fp)
# End Code objectID expression.
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 67
	jal	_dispatch_abort
label45:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -20($fp)
# End Code assign expression.
# Begin Code assign expression at line number 68
# Begin Code plus expression at line number 68
# Begin Code objectID expression at line number 68
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -24($fp)
# Begin Code int const expression at line number 68
	la	$a0 int_const0
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
	b	label40
label41:
	li	$a0 0
# End Code loop expression.
# Begin Code assign expression at line number 71
# Begin Code objectID expression at line number 71
# Loading local object into ACC
	lw	$a0 -20($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 72
	move	$a0 $s0
# End Code block epression.
# End Code let expression.
# End Code let expression.
# End Code let expression.
	addiu	$sp $sp 44
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method evolve

# end of generated code
