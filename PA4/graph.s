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
	.word	10
_bool_tag:
	.word	11
_string_tag:
	.word	12
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
str_const36:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"BoolOp"
	.byte	0	
	.align	2
	.word	-1
str_const35:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Parse"
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"VCons"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"VList"
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"ECons"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"EList"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Edge"
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const7
	.ascii	"Vertice"
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Graph"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	" "
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"-"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"9"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"8"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"7"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"6"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"5"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"4"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"3"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"0"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	")"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	","
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	" ("
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	12
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"./Testfiles/graph.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const11:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const10:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const9:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const7:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const6:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const5:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const4:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const1:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	10
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	11
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	11
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
BoolOp_protObj:
	.word	14
	.word	3
	.word	BoolOp_dispTab
	.word	-1
Main_protObj:
	.word	9
	.word	6
	.word	Main_dispTab
	.word	0
	.word	str_const5
	.word	0
	.word	-1
Parse_protObj:
	.word	8
	.word	5
	.word	Parse_dispTab
	.word	0
	.word	str_const5
	.word	-1
VCons_protObj:
	.word	7
	.word	5
	.word	VCons_dispTab
	.word	0
	.word	0
	.word	-1
VList_protObj:
	.word	6
	.word	4
	.word	VList_dispTab
	.word	0
	.word	-1
ECons_protObj:
	.word	5
	.word	5
	.word	ECons_dispTab
	.word	0
	.word	0
	.word	-1
EList_protObj:
	.word	4
	.word	4
	.word	EList_dispTab
	.word	0
	.word	-1
Edge_protObj:
	.word	3
	.word	6
	.word	Edge_dispTab
	.word	int_const1
	.word	int_const1
	.word	int_const1
	.word	-1
Vertice_protObj:
	.word	2
	.word	5
	.word	Vertice_dispTab
	.word	int_const1
	.word	0
	.word	-1
Graph_protObj:
	.word	13
	.word	5
	.word	Graph_dispTab
	.word	0
	.word	0
	.word	-1
String_protObj:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
	.word	-1
Bool_protObj:
	.word	11
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	10
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
	.word	str_const22
	.word	str_const23
	.word	str_const28
	.word	str_const29
	.word	str_const30
	.word	str_const31
	.word	str_const32
	.word	str_const33
	.word	str_const34
	.word	str_const35
	.word	str_const24
	.word	str_const25
	.word	str_const26
	.word	str_const27
	.word	str_const36
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Vertice_protObj
	.word	Vertice_init
	.word	Edge_protObj
	.word	Edge_init
	.word	EList_protObj
	.word	EList_init
	.word	ECons_protObj
	.word	ECons_init
	.word	VList_protObj
	.word	VList_init
	.word	VCons_protObj
	.word	VCons_init
	.word	Parse_protObj
	.word	Parse_init
	.word	Main_protObj
	.word	Main_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Graph_protObj
	.word	Graph_init
	.word	BoolOp_protObj
	.word	BoolOp_init
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
Vertice_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Vertice.outgoing
	.word	Vertice.number
	.word	Vertice.init
	.word	Vertice.add_out
	.word	Vertice.print
Edge_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Edge.init
	.word	Edge.print
EList_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	EList.isNil
	.word	EList.head
	.word	EList.tail
	.word	EList.cons
	.word	EList.append
	.word	EList.print
ECons_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	ECons.isNil
	.word	ECons.head
	.word	ECons.tail
	.word	EList.cons
	.word	EList.append
	.word	ECons.print
	.word	ECons.init
VList_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	VList.isNil
	.word	VList.head
	.word	VList.tail
	.word	VList.cons
	.word	VList.print
VCons_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	VCons.isNil
	.word	VCons.head
	.word	VCons.tail
	.word	VList.cons
	.word	VCons.print
	.word	VCons.init
Parse_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Parse.read_input
	.word	Parse.parse_line
	.word	Parse.c2i
	.word	Parse.a2i
	.word	Parse.a2i_aux
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Parse.read_input
	.word	Parse.parse_line
	.word	Parse.c2i
	.word	Parse.a2i
	.word	Parse.a2i_aux
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
Graph_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Graph.add_vertice
	.word	Graph.print_E
	.word	Graph.print_V
BoolOp_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	BoolOp.and
	.word	BoolOp.or
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
# Begin Emmitting code to generate initializer method for BoolOp
BoolOp_init:
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
# End Emmitting code to generate initializer method for BoolOp
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
	jal	Parse_init
# Begin Code new with type at line number 252
	la	$a0 BoolOp_protObj
	jal	Object.copy
	jal	BoolOp_init
# End Code new with type BoolOp
	sw	$a0 12($s0)
# Begin Code disptach expression at line number 359
# Begin Code objectID expression at line number 359
	move	$a0 $s0
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 359
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 20($s0)
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for Parse
Parse_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	IO_init
# Begin Code new with type at line number 252
	la	$a0 BoolOp_protObj
	jal	Object.copy
	jal	BoolOp_init
# End Code new with type BoolOp
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Parse
# Begin Emmitting code to generate initializer method for VCons
VCons_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	VList_init
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for VCons
# Begin Emmitting code to generate initializer method for VList
VList_init:
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
# End Emmitting code to generate initializer method for VList
# Begin Emmitting code to generate initializer method for ECons
ECons_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
	jal	EList_init
	move	$a0 $s0
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for ECons
# Begin Emmitting code to generate initializer method for EList
EList_init:
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
# End Emmitting code to generate initializer method for EList
# Begin Emmitting code to generate initializer method for Edge
Edge_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -12
	move	$s0 $a0
	jal	IO_init
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Edge
# Begin Emmitting code to generate initializer method for Vertice
Vertice_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
	jal	IO_init
# Begin Code new with type at line number 56
	la	$a0 EList_protObj
	jal	Object.copy
	jal	EList_init
# End Code new with type EList
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Vertice
# Begin Emmitting code to generate initializer method for Graph
Graph_init:
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
# Begin Code new with type at line number 40
	la	$a0 VList_protObj
	jal	Object.copy
	jal	VList_init
# End Code new with type VList
	sw	$a0 12($s0)
# Begin Code new with type at line number 41
	la	$a0 EList_protObj
	jal	Object.copy
	jal	EList_init
# End Code new with type EList
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emmitting code to generate initializer method for Graph
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
# Begin Emitting code for method and
BoolOp.and:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code cond expression at line number 373
# Begin Code objectID expression at line number 373
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	lw	$t2 12($a0)
	beqz	$t2 label1
# Begin Code objectID expression at line number 373
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	b	label2
label1:
# Begin Code bool expression at line number 373
	la	$a0 bool_const0
# End Code bool expression.
label2:
# End Code cond expression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method and
# Begin Emitting code for method or
BoolOp.or:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code cond expression at line number 378
# Begin Code objectID expression at line number 378
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	lw	$t2 12($a0)
	beqz	$t2 label3
# Begin Code bool expression at line number 378
	la	$a0 bool_const1
# End Code bool expression.
	b	label4
label3:
# Begin Code objectID expression at line number 378
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
label4:
# End Code cond expression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method or
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
# Begin Code block epression at line number 362
# Begin Code disptach expression at line number 363
# Begin Code objectID expression at line number 363
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 363
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 364
# Begin Code objectID expression at line number 364
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 364
	jal	_dispatch_abort
label6:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method read_input
Parse.read_input:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -32
	move	$s0 $a0
# Begin Code let expression at line number 258
# Begin Code new with type at line number 258
	la	$a0 Graph_protObj
	jal	Object.copy
	jal	Graph_init
# End Code new with type Graph
	sw	$a0 -4($fp)
# Begin Code block epression at line number 258
# Begin Code let expression at line number 259
# Begin Code disptach expression at line number 259
# Begin Code objectID expression at line number 259
	move	$a0 $s0
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 259
	jal	_dispatch_abort
label7:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -8($fp)
# Begin Code loop expression at line number 260
label8:
# Begin Code disptach expression at line number 260
# Begin Code comp expression at line number 260
# Begin Code eq expression at line number 260
# Begin Code objectID expression at line number 260
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code string const expression at line number 260
	la	$a0 str_const4
# End Code string const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label10
	la	$a1 bool_const0
	jal	equality_test
label10:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label11
	la	$a0 bool_const0
	b	label12
label11:
	la	$a0 bool_const1
label12:
# End Code comp expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code comp expression at line number 260
# Begin Code eq expression at line number 260
# Begin Code objectID expression at line number 260
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# Begin Code string const expression at line number 260
	la	$a0 str_const5
# End Code string const expression.
	lw	$t1 -12($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label13
	la	$a1 bool_const0
	jal	equality_test
label13:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label14
	la	$a0 bool_const0
	b	label15
label14:
	la	$a0 bool_const1
label15:
# End Code comp expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 260
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 260
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 12($a0)
	beqz	$t1 label9
# Begin Code block epression at line number 260
# Begin Code disptach expression at line number 263
# Begin Code disptach expression at line number 263
# Begin Code objectID expression at line number 263
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 263
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 263
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 263
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 263
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 264
# Begin Code disptach expression at line number 264
# Begin Code objectID expression at line number 264
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 264
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -8($fp)
# End Code assign expression.
# End Code block epression.
	b	label8
label9:
	li	$a0 0
# End Code loop expression.
# End Code let expression.
# Begin Code objectID expression at line number 267
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 32
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method read_input
# Begin Emitting code for method parse_line
Parse.parse_line:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -48
	move	$s0 $a0
# Begin Code let expression at line number 273
# Begin Code disptach expression at line number 273
# Begin Code disptach expression at line number 273
# Begin Code objectID expression at line number 273
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 273
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 273
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 273
	la	$a0 Vertice_protObj
	jal	Object.copy
	jal	Vertice_init
# End Code new with type Vertice
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 273
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code block epression at line number 273
# Begin Code loop expression at line number 274
label22:
# Begin Code comp expression at line number 274
# Begin Code eq expression at line number 274
# Begin Code disptach expression at line number 274
# Begin Code objectID expression at line number 274
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 274
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -8($fp)
# Begin Code int const expression at line number 274
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -8($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label25
	la	$a1 bool_const0
	jal	equality_test
label25:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label26
	la	$a0 bool_const0
	b	label27
label26:
	la	$a0 bool_const1
label27:
# End Code comp expression.
	lw	$t1 12($a0)
	beqz	$t1 label23
# Begin Code block epression at line number 274
# Begin Code let expression at line number 277
# Begin Code disptach expression at line number 277
# Begin Code objectID expression at line number 277
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 277
	move	$a0 $s0
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 277
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -8($fp)
# Begin Code let expression at line number 278
# Begin Code disptach expression at line number 278
# Begin Code objectID expression at line number 278
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 278
	move	$a0 $s0
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 278
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 280
# Begin Code disptach expression at line number 280
# Begin Code disptach expression at line number 280
# Begin Code objectID expression at line number 280
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 280
	jal	_dispatch_abort
label30:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 281
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 282
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 280
	la	$a0 Edge_protObj
	jal	Object.copy
	jal	Edge_init
# End Code new with type Edge
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 280
	jal	_dispatch_abort
label31:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 280
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 280
	jal	_dispatch_abort
label32:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
# End Code let expression.
# End Code let expression.
# End Code block epression.
	b	label22
label23:
	li	$a0 0
# End Code loop expression.
# Begin Code objectID expression at line number 285
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 48
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method parse_line
# Begin Emitting code for method c2i
Parse.c2i:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -120
	move	$s0 $a0
# Begin Code cond expression at line number 291
# Begin Code eq expression at line number 291
# Begin Code objectID expression at line number 291
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 291
	la	$a0 str_const6
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label35
	la	$a1 bool_const0
	jal	equality_test
label35:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label33
# Begin Code int const expression at line number 291
	la	$a0 int_const1
# End Code int const expression.
	b	label34
label33:
# Begin Code cond expression at line number 292
# Begin Code eq expression at line number 292
# Begin Code objectID expression at line number 292
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 292
	la	$a0 str_const7
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label38
	la	$a1 bool_const0
	jal	equality_test
label38:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label36
# Begin Code int const expression at line number 292
	la	$a0 int_const0
# End Code int const expression.
	b	label37
label36:
# Begin Code cond expression at line number 293
# Begin Code eq expression at line number 293
# Begin Code objectID expression at line number 293
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 293
	la	$a0 str_const8
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label41
	la	$a1 bool_const0
	jal	equality_test
label41:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label39
# Begin Code int const expression at line number 293
	la	$a0 int_const2
# End Code int const expression.
	b	label40
label39:
# Begin Code cond expression at line number 294
# Begin Code eq expression at line number 294
# Begin Code objectID expression at line number 294
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 294
	la	$a0 str_const9
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label44
	la	$a1 bool_const0
	jal	equality_test
label44:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label42
# Begin Code int const expression at line number 294
	la	$a0 int_const3
# End Code int const expression.
	b	label43
label42:
# Begin Code cond expression at line number 295
# Begin Code eq expression at line number 295
# Begin Code objectID expression at line number 295
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 295
	la	$a0 str_const10
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label47
	la	$a1 bool_const0
	jal	equality_test
label47:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label45
# Begin Code int const expression at line number 295
	la	$a0 int_const4
# End Code int const expression.
	b	label46
label45:
# Begin Code cond expression at line number 296
# Begin Code eq expression at line number 296
# Begin Code objectID expression at line number 296
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 296
	la	$a0 str_const11
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label50
	la	$a1 bool_const0
	jal	equality_test
label50:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label48
# Begin Code int const expression at line number 296
	la	$a0 int_const5
# End Code int const expression.
	b	label49
label48:
# Begin Code cond expression at line number 297
# Begin Code eq expression at line number 297
# Begin Code objectID expression at line number 297
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 297
	la	$a0 str_const12
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label53
	la	$a1 bool_const0
	jal	equality_test
label53:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label51
# Begin Code int const expression at line number 297
	la	$a0 int_const6
# End Code int const expression.
	b	label52
label51:
# Begin Code cond expression at line number 298
# Begin Code eq expression at line number 298
# Begin Code objectID expression at line number 298
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 298
	la	$a0 str_const13
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label56
	la	$a1 bool_const0
	jal	equality_test
label56:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label54
# Begin Code int const expression at line number 298
	la	$a0 int_const7
# End Code int const expression.
	b	label55
label54:
# Begin Code cond expression at line number 299
# Begin Code eq expression at line number 299
# Begin Code objectID expression at line number 299
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 299
	la	$a0 str_const14
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label59
	la	$a1 bool_const0
	jal	equality_test
label59:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label57
# Begin Code int const expression at line number 299
	la	$a0 int_const8
# End Code int const expression.
	b	label58
label57:
# Begin Code cond expression at line number 300
# Begin Code eq expression at line number 300
# Begin Code objectID expression at line number 300
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 300
	la	$a0 str_const15
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label62
	la	$a1 bool_const0
	jal	equality_test
label62:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label60
# Begin Code int const expression at line number 300
	la	$a0 int_const9
# End Code int const expression.
	b	label61
label60:
# Begin Code block epression at line number 301
# Begin Code disptach expression at line number 301
# Begin Code objectID expression at line number 301
	move	$a0 $s0
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 301
	jal	_dispatch_abort
label63:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code int const expression at line number 301
	la	$a0 int_const1
# End Code int const expression.
# End Code block epression.
label61:
# End Code cond expression.
label58:
# End Code cond expression.
label55:
# End Code cond expression.
label52:
# End Code cond expression.
label49:
# End Code cond expression.
label46:
# End Code cond expression.
label43:
# End Code cond expression.
label40:
# End Code cond expression.
label37:
# End Code cond expression.
label34:
# End Code cond expression.
	addiu	$sp $sp 120
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method c2i
# Begin Emitting code for method a2i
Parse.a2i:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -92
	move	$s0 $a0
# Begin Code cond expression at line number 308
# Begin Code eq expression at line number 308
# Begin Code disptach expression at line number 308
# Begin Code objectID expression at line number 308
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 308
	jal	_dispatch_abort
label66:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 308
	la	$a0 int_const1
# End Code int const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label67
	la	$a1 bool_const0
	jal	equality_test
label67:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label64
# Begin Code int const expression at line number 308
	la	$a0 int_const1
# End Code int const expression.
	b	label65
label64:
# Begin Code cond expression at line number 309
# Begin Code eq expression at line number 309
# Begin Code disptach expression at line number 309
# Begin Code int const expression at line number 309
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 309
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 309
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 309
	jal	_dispatch_abort
label70:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 309
	la	$a0 str_const16
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label71
	la	$a1 bool_const0
	jal	equality_test
label71:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label68
# Begin Code neg expression at line number 309
# Begin Code disptach expression at line number 309
# Begin Code disptach expression at line number 309
# Begin Code int const expression at line number 309
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code sub expression at line number 309
# Begin Code disptach expression at line number 309
# Begin Code objectID expression at line number 309
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label72
	la	$a0 str_const0
	li	$t1 309
	jal	_dispatch_abort
label72:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 309
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 309
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label73
	la	$a0 str_const0
	li	$t1 309
	jal	_dispatch_abort
label73:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 309
	move	$a0 $s0
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 309
	jal	_dispatch_abort
label74:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 -4($fp)
	jal	Object.copy
	lw	$t1 -4($fp)
	sw	$t1 12($a0)
# End Code neg expression.
	b	label69
label68:
# Begin Code cond expression at line number 310
# Begin Code eq expression at line number 310
# Begin Code disptach expression at line number 310
# Begin Code int const expression at line number 310
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 310
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 310
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label77:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code string const expression at line number 310
	la	$a0 str_const17
# End Code string const expression.
	lw	$t1 -4($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label78
	la	$a1 bool_const0
	jal	equality_test
label78:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label75
# Begin Code disptach expression at line number 310
# Begin Code disptach expression at line number 310
# Begin Code int const expression at line number 310
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code sub expression at line number 310
# Begin Code disptach expression at line number 310
# Begin Code objectID expression at line number 310
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label79:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -4($fp)
# Begin Code int const expression at line number 310
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -4($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 310
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label80
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label80:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 310
	move	$a0 $s0
	bne	$a0 $zero label81
	la	$a0 str_const0
	li	$t1 310
	jal	_dispatch_abort
label81:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	b	label76
label75:
# Begin Code disptach expression at line number 311
# Begin Code objectID expression at line number 311
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 311
	move	$a0 $s0
	bne	$a0 $zero label82
	la	$a0 str_const0
	li	$t1 311
	jal	_dispatch_abort
label82:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
label76:
# End Code cond expression.
label69:
# End Code cond expression.
label65:
# End Code cond expression.
	addiu	$sp $sp 92
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method a2i
# Begin Emitting code for method a2i_aux
Parse.a2i_aux:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -128
	move	$s0 $a0
# Begin Code let expression at line number 322
# Begin Code int const expression at line number 322
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 -4($fp)
# Begin Code block epression at line number 323
# Begin Code let expression at line number 324
# Begin Code disptach expression at line number 324
# Begin Code objectID expression at line number 324
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 324
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -8($fp)
# Begin Code let expression at line number 325
# Begin Code int const expression at line number 325
	la	$a0 int_const1
# End Code int const expression.
	sw	$a0 -12($fp)
# Begin Code loop expression at line number 326
label84:
# Begin Code lt expression at line number 326
# Begin Code objectID expression at line number 326
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -16($fp)
# Begin Code objectID expression at line number 326
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	lw	$t1 -16($fp)
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label86
	la	$a0 bool_const0
	b	label87
label86:
	la	$a0 bool_const1
label87:
# End Code lt expression.
	lw	$t1 12($a0)
	beqz	$t1 label85
# Begin Code let expression at line number 327
# Begin Code disptach expression at line number 327
# Begin Code objectID expression at line number 327
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 327
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 327
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label88
	la	$a0 str_const0
	li	$t1 327
	jal	_dispatch_abort
label88:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code cond expression at line number 328
# Begin Code eq expression at line number 328
# Begin Code objectID expression at line number 328
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code string const expression at line number 328
	la	$a0 str_const17
# End Code string const expression.
	lw	$t1 -20($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label91
	la	$a1 bool_const0
	jal	equality_test
label91:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label89
# Begin Code block epression at line number 329
# Begin Code assign expression at line number 330
# Begin Code disptach expression at line number 330
# Begin Code plus expression at line number 330
# Begin Code objectID expression at line number 330
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 330
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code sub expression at line number 330
# Begin Code sub expression at line number 330
# Begin Code disptach expression at line number 330
# Begin Code objectID expression at line number 330
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label92
	la	$a0 str_const0
	li	$t1 330
	jal	_dispatch_abort
label92:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -20($fp)
# Begin Code objectID expression at line number 330
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 330
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 330
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label93
	la	$a0 str_const0
	li	$t1 330
	jal	_dispatch_abort
label93:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code assign expression at line number 331
# Begin Code objectID expression at line number 331
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# End Code block epression.
	b	label90
label89:
# Begin Code cond expression at line number 333
# Begin Code eq expression at line number 333
# Begin Code objectID expression at line number 333
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code string const expression at line number 333
	la	$a0 str_const2
# End Code string const expression.
	lw	$t1 -20($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label96
	la	$a1 bool_const0
	jal	equality_test
label96:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label94
# Begin Code block epression at line number 334
# Begin Code assign expression at line number 335
# Begin Code disptach expression at line number 335
# Begin Code plus expression at line number 335
# Begin Code objectID expression at line number 335
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 335
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code sub expression at line number 335
# Begin Code sub expression at line number 335
# Begin Code disptach expression at line number 335
# Begin Code objectID expression at line number 335
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label97
	la	$a0 str_const0
	li	$t1 335
	jal	_dispatch_abort
label97:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -20($fp)
# Begin Code objectID expression at line number 335
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 335
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	sub	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code sub expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 335
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label98
	la	$a0 str_const0
	li	$t1 335
	jal	_dispatch_abort
label98:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code assign expression at line number 336
# Begin Code objectID expression at line number 336
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# End Code block epression.
	b	label95
label94:
# Begin Code block epression at line number 339
# Begin Code assign expression at line number 340
# Begin Code plus expression at line number 340
# Begin Code mul expression at line number 340
# Begin Code objectID expression at line number 340
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 340
	la	$a0 int_const10
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	mul	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code mul expression.
	sw	$a0 -20($fp)
# Begin Code disptach expression at line number 340
# Begin Code disptach expression at line number 340
# Begin Code objectID expression at line number 340
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code int const expression at line number 340
	la	$a0 int_const0
# End Code int const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 340
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label99
	la	$a0 str_const0
	li	$t1 340
	jal	_dispatch_abort
label99:
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 340
	move	$a0 $s0
	bne	$a0 $zero label100
	la	$a0 str_const0
	li	$t1 340
	jal	_dispatch_abort
label100:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -4($fp)
# End Code assign expression.
# Begin Code assign expression at line number 341
# Begin Code plus expression at line number 341
# Begin Code objectID expression at line number 341
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code int const expression at line number 341
	la	$a0 int_const0
# End Code int const expression.
	lw	$t1 -20($fp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
# End Code plus expression.
	sw	$a0 -12($fp)
# End Code assign expression.
# Begin Code cond expression at line number 342
# Begin Code eq expression at line number 342
# Begin Code objectID expression at line number 342
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 -20($fp)
# Begin Code objectID expression at line number 342
# Loading local object into ACC
	lw	$a0 -8($fp)
# End Code objectID expression.
	lw	$t1 -20($fp)
	move	$t2 $a0
	la	$a0 bool_const1
	beq	$t1 $t2 label103
	la	$a1 bool_const0
	jal	equality_test
label103:
# End Code eq expression.
	lw	$t2 12($a0)
	beqz	$t2 label101
# Begin Code assign expression at line number 342
# Begin Code string const expression at line number 342
	la	$a0 str_const5
# End Code string const expression.
	sw	$a0 16($s0)
# End Code assign expression.
	b	label102
label101:
# Begin Code string const expression at line number 342
	la	$a0 str_const5
# End Code string const expression.
label102:
# End Code cond expression.
# End Code block epression.
label95:
# End Code cond expression.
label90:
# End Code cond expression.
# End Code let expression.
	b	label84
label85:
	li	$a0 0
# End Code loop expression.
# End Code let expression.
# End Code let expression.
# Begin Code objectID expression at line number 349
# Loading local object into ACC
	lw	$a0 -4($fp)
# End Code objectID expression.
# End Code block epression.
# End Code let expression.
	addiu	$sp $sp 128
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method a2i_aux
# Begin Emitting code for method isNil
VCons.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 225
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
VCons.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 227
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
VCons.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 229
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
VCons.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 232
# Begin Code assign expression at line number 233
# Begin Code objectID expression at line number 233
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code assign expression at line number 234
# Begin Code objectID expression at line number 234
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 235
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
VCons.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 240
# Begin Code disptach expression at line number 241
# Begin Code objectID expression at line number 241
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label104
	la	$a0 str_const0
	li	$t1 241
	jal	_dispatch_abort
label104:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 242
# Begin Code objectID expression at line number 242
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label105
	la	$a0 str_const0
	li	$t1 242
	jal	_dispatch_abort
label105:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method isNil
VList.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 199
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
VList.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 201
# Begin Code disptach expression at line number 201
# Begin Code objectID expression at line number 201
	move	$a0 $s0
	bne	$a0 $zero label106
	la	$a0 str_const0
	li	$t1 201
	jal	_dispatch_abort
label106:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 201
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method head
# Begin Emitting code for method tail
VList.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 203
# Begin Code disptach expression at line number 203
# Begin Code objectID expression at line number 203
	move	$a0 $s0
	bne	$a0 $zero label107
	la	$a0 str_const0
	li	$t1 203
	jal	_dispatch_abort
label107:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 203
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
VList.cons:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code disptach expression at line number 213
# Begin Code objectID expression at line number 213
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 213
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 213
	la	$a0 VCons_protObj
	jal	Object.copy
	jal	VCons_init
# End Code new with type VCons
	bne	$a0 $zero label108
	la	$a0 str_const0
	li	$t1 213
	jal	_dispatch_abort
label108:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method cons
# Begin Emitting code for method print
VList.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
# Begin Code disptach expression at line number 216
# Begin Code string const expression at line number 216
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 216
	move	$a0 $s0
	bne	$a0 $zero label109
	la	$a0 str_const0
	li	$t1 216
	jal	_dispatch_abort
label109:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method isNil
ECons.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 168
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
ECons.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 170
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
ECons.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 172
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
ECons.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 175
# Begin Code assign expression at line number 176
# Begin Code objectID expression at line number 176
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code assign expression at line number 177
# Begin Code objectID expression at line number 177
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 178
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 20
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
ECons.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 183
# Begin Code disptach expression at line number 184
# Begin Code objectID expression at line number 184
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label110
	la	$a0 str_const0
	li	$t1 184
	jal	_dispatch_abort
label110:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 185
# Begin Code objectID expression at line number 185
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label111
	la	$a0 str_const0
	li	$t1 185
	jal	_dispatch_abort
label111:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method isNil
EList.isNil:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code bool expression at line number 121
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
EList.head:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 123
# Begin Code disptach expression at line number 123
# Begin Code objectID expression at line number 123
	move	$a0 $s0
	bne	$a0 $zero label112
	la	$a0 str_const0
	li	$t1 123
	jal	_dispatch_abort
label112:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 123
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method head
# Begin Emitting code for method tail
EList.tail:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 125
# Begin Code disptach expression at line number 125
# Begin Code objectID expression at line number 125
	move	$a0 $s0
	bne	$a0 $zero label113
	la	$a0 str_const0
	li	$t1 125
	jal	_dispatch_abort
label113:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 125
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
EList.cons:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code disptach expression at line number 135
# Begin Code objectID expression at line number 135
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 135
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 135
	la	$a0 ECons_protObj
	jal	Object.copy
	jal	ECons_init
# End Code new with type ECons
	bne	$a0 $zero label114
	la	$a0 str_const0
	li	$t1 135
	jal	_dispatch_abort
label114:
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method cons
# Begin Emitting code for method append
EList.append:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -16
	move	$s0 $a0
# Begin Code cond expression at line number 139
# Begin Code disptach expression at line number 139
# Begin Code objectID expression at line number 139
	move	$a0 $s0
	bne	$a0 $zero label117
	la	$a0 str_const0
	li	$t1 139
	jal	_dispatch_abort
label117:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	lw	$t2 12($a0)
	beqz	$t2 label115
# Begin Code objectID expression at line number 139
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	b	label116
label115:
# Begin Code disptach expression at line number 140
# Begin Code disptach expression at line number 140
# Begin Code objectID expression at line number 140
	move	$a0 $s0
	bne	$a0 $zero label118
	la	$a0 str_const0
	li	$t1 140
	jal	_dispatch_abort
label118:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 140
# Begin Code objectID expression at line number 140
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 140
# Begin Code objectID expression at line number 140
	move	$a0 $s0
	bne	$a0 $zero label119
	la	$a0 str_const0
	li	$t1 140
	jal	_dispatch_abort
label119:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label120
	la	$a0 str_const0
	li	$t1 140
	jal	_dispatch_abort
label120:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label121
	la	$a0 str_const0
	li	$t1 140
	jal	_dispatch_abort
label121:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
label116:
# End Code cond expression.
	addiu	$sp $sp 16
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method append
# Begin Emitting code for method print
EList.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
# Begin Code disptach expression at line number 145
# Begin Code string const expression at line number 145
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 145
	move	$a0 $s0
	bne	$a0 $zero label122
	la	$a0 str_const0
	li	$t1 145
	jal	_dispatch_abort
label122:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method init
Edge.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 93
# Begin Code assign expression at line number 94
# Begin Code objectID expression at line number 94
# Loading paramter object into ACC
	lw	$a0 20($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code assign expression at line number 95
# Begin Code objectID expression at line number 95
# Loading paramter object into ACC
	lw	$a0 16($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code assign expression at line number 96
# Begin Code objectID expression at line number 96
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 97
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 24
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method print
Edge.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code block epression at line number 102
# Begin Code disptach expression at line number 103
# Begin Code string const expression at line number 103
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 103
	move	$a0 $s0
	bne	$a0 $zero label123
	la	$a0 str_const0
	li	$t1 103
	jal	_dispatch_abort
label123:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 104
# Begin Code objectID expression at line number 104
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 104
	move	$a0 $s0
	bne	$a0 $zero label124
	la	$a0 str_const0
	li	$t1 104
	jal	_dispatch_abort
label124:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 105
# Begin Code string const expression at line number 105
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 105
	move	$a0 $s0
	bne	$a0 $zero label125
	la	$a0 str_const0
	li	$t1 105
	jal	_dispatch_abort
label125:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 106
# Begin Code objectID expression at line number 106
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 106
	move	$a0 $s0
	bne	$a0 $zero label126
	la	$a0 str_const0
	li	$t1 106
	jal	_dispatch_abort
label126:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 107
# Begin Code string const expression at line number 107
	la	$a0 str_const3
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 107
	move	$a0 $s0
	bne	$a0 $zero label127
	la	$a0 str_const0
	li	$t1 107
	jal	_dispatch_abort
label127:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 108
# Begin Code objectID expression at line number 108
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 108
	move	$a0 $s0
	bne	$a0 $zero label128
	la	$a0 str_const0
	li	$t1 108
	jal	_dispatch_abort
label128:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 24
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method outgoing
Vertice.outgoing:
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
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method outgoing
# Begin Emitting code for method number
Vertice.number:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code objectID expression at line number 60
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method number
# Begin Emitting code for method init
Vertice.init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code block epression at line number 63
# Begin Code assign expression at line number 64
# Begin Code objectID expression at line number 64
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 65
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method add_out
Vertice.add_out:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
# Begin Code block epression at line number 71
# Begin Code assign expression at line number 72
# Begin Code disptach expression at line number 72
# Begin Code objectID expression at line number 72
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 72
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label129
	la	$a0 str_const0
	li	$t1 72
	jal	_dispatch_abort
label129:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code objectID expression at line number 73
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method add_out
# Begin Emitting code for method print
Vertice.print:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -4
	move	$s0 $a0
# Begin Code block epression at line number 78
# Begin Code disptach expression at line number 79
# Begin Code objectID expression at line number 79
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 79
	move	$a0 $s0
	bne	$a0 $zero label130
	la	$a0 str_const0
	li	$t1 79
	jal	_dispatch_abort
label130:
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 80
# Begin Code objectID expression at line number 80
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label131
	la	$a0 str_const0
	li	$t1 80
	jal	_dispatch_abort
label131:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 4
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method add_vertice
Graph.add_vertice:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
# Begin Code block epression at line number 43
# Begin Code assign expression at line number 44
# Begin Code disptach expression at line number 44
# Begin Code objectID expression at line number 44
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 44
# Begin Code objectID expression at line number 44
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	bne	$a0 $zero label132
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label132:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label133:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 16($s0)
# End Code assign expression.
# Begin Code assign expression at line number 45
# Begin Code disptach expression at line number 45
# Begin Code objectID expression at line number 45
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 45
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label134
	la	$a0 str_const0
	li	$t1 45
	jal	_dispatch_abort
label134:
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 12($s0)
# End Code assign expression.
# End Code block epression.
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 16
	jr	$ra	
# End Emitting code for method add_vertice
# Begin Emitting code for method print_E
Graph.print_E:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code disptach expression at line number 48
# Begin Code objectID expression at line number 48
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label135
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label135:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print_E
# Begin Emitting code for method print_V
Graph.print_V:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
# Begin Code disptach expression at line number 49
# Begin Code objectID expression at line number 49
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label136
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label136:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method print_V

# end of generated code
