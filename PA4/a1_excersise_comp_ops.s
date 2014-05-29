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
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A1"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"A2"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const7
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Yo"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"hello"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	14
	.word	String_dispTab
	.word	int_const8
	.ascii	"./Testfiles/a1_excersise_comp_ops.cl"
	.byte	0	
	.align	2
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	36
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
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
	.word	4
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
	.word	0
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
	.word	3
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
class_nameTab:
	.word	str_const6
	.word	str_const7
	.word	str_const8
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
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
	.word	A2_protObj
	.word	A2_init
	.word	A1_protObj
	.word	A1_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A1_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
A2_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
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
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
A1_protObj:
	.word	7
	.word	3
	.word	A1_dispTab
	.word	-1
A2_protObj:
	.word	6
	.word	3
	.word	A2_dispTab
	.word	-1
Main_protObj:
	.word	5
	.word	20
	.word	Main_dispTab
	.word	int_const2
	.word	int_const2
	.word	int_const2
	.word	int_const2
	.word	str_const14
	.word	str_const14
	.word	str_const14
	.word	bool_const0
	.word	bool_const0
	.word	bool_const0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
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
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A1_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A2_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const0
	sw	$a0 20($s0)
	la	$a0 int_const1
	sw	$a0 24($s0)
	la	$a0 str_const1
	sw	$a0 28($s0)
	la	$a0 str_const2
	sw	$a0 36($s0)
	la	$a0 bool_const0
	sw	$a0 40($s0)
	la	$a0 bool_const1
	sw	$a0 44($s0)
	la	$a0 A1_protObj
	jal	Object.copy
	jal	A1_init
	sw	$a0 52($s0)
	la	$a0 A2_protObj
	jal	Object.copy
	jal	A2_init
	sw	$a0 60($s0)
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	sw	$a0 76($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	sw	$s1 0($fp)
	lw	$s1 12($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label2
	la	$a0 bool_const0
label2:
	lw	$t1 12($a0)
	beqz	$t1 label0
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label1
label0:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 21
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label1:
	lw	$s1 16($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label7
	la	$a0 bool_const0
label7:
	lw	$t1 12($a0)
	beqz	$t1 label5
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
label8:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label6
label5:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 22
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label6:
	lw	$s1 12($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label12
	la	$a0 bool_const0
label12:
	lw	$t1 12($a0)
	beqz	$t1 label10
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label11
label10:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 23
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label11:
	lw	$s1 16($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label17
	la	$a0 bool_const0
label17:
	lw	$t1 12($a0)
	beqz	$t1 label15
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label16
label15:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 24
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label16:
	lw	$s1 20($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label22
	la	$a0 bool_const0
label22:
	lw	$t1 12($a0)
	beqz	$t1 label20
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 25
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label21
label20:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 25
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label21:
	lw	$s1 12($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label27
	la	$a0 bool_const0
label27:
	lw	$t1 12($a0)
	beqz	$t1 label25
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label26
label25:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 26
	jal	_dispatch_abort
label29:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label26:
	lw	$s1 20($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	blt	$t1 $t2 label32
	la	$a0 bool_const0
label32:
	lw	$t1 12($a0)
	beqz	$t1 label30
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
label33:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label31
label30:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 27
	jal	_dispatch_abort
label34:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label31:
	lw	$s1 12($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label37
	la	$a0 bool_const0
label37:
	lw	$t1 12($a0)
	beqz	$t1 label35
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
label38:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label36
label35:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 28
	jal	_dispatch_abort
label39:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label36:
	lw	$s1 12($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label42
	la	$a0 bool_const0
label42:
	lw	$t1 12($a0)
	beqz	$t1 label40
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
label43:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label41
label40:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 29
	jal	_dispatch_abort
label44:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label41:
	lw	$s1 20($s0)
	lw	$a0 16($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label47
	la	$a0 bool_const0
label47:
	lw	$t1 12($a0)
	beqz	$t1 label45
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
label48:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label46
label45:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
label49:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label46:
	lw	$s1 12($s0)
	lw	$a0 12($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label52
	la	$a0 bool_const0
label52:
	lw	$t1 12($a0)
	beqz	$t1 label50
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label53
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label53:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label51
label50:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 31
	jal	_dispatch_abort
label54:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label51:
	lw	$s1 20($s0)
	lw	$a0 20($s0)
	lw	$t1 12($s1)
	lw	$t2 12($a0)
	la	$a0 bool_const1
	ble	$t1 $t2 label57
	la	$a0 bool_const0
label57:
	lw	$t1 12($a0)
	beqz	$t1 label55
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label58:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label56
label55:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label59
	la	$a0 str_const0
	li	$t1 32
	jal	_dispatch_abort
label59:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label56:
	lw	$s1 12($s0)
	lw	$t2 16($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label62
	la	$a1 bool_const0
	jal	equality_test
label62:
	lw	$t1 12($a0)
	beqz	$t1 label60
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
label63:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label61
label60:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label64
	la	$a0 str_const0
	li	$t1 33
	jal	_dispatch_abort
label64:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label61:
	lw	$s1 20($s0)
	lw	$t2 16($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label67
	la	$a1 bool_const0
	jal	equality_test
label67:
	lw	$t1 12($a0)
	beqz	$t1 label65
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label68
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label68:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label66
label65:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 34
	jal	_dispatch_abort
label69:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label66:
	lw	$s1 12($s0)
	lw	$t2 20($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label72
	la	$a1 bool_const0
	jal	equality_test
label72:
	lw	$t1 12($a0)
	beqz	$t1 label70
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label73
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label73:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label71
label70:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 35
	jal	_dispatch_abort
label74:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label71:
	lw	$s1 12($s0)
	lw	$t2 12($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label77
	la	$a1 bool_const0
	jal	equality_test
label77:
	lw	$t1 12($a0)
	beqz	$t1 label75
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
label78:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label76
label75:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 36
	jal	_dispatch_abort
label79:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label76:
	lw	$s1 20($s0)
	lw	$t2 20($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label82
	la	$a1 bool_const0
	jal	equality_test
label82:
	lw	$t1 12($a0)
	beqz	$t1 label80
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label83
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
label83:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label81
label80:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label84
	la	$a0 str_const0
	li	$t1 37
	jal	_dispatch_abort
label84:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label81:
	lw	$s1 36($s0)
	lw	$t2 28($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label87
	la	$a1 bool_const0
	jal	equality_test
label87:
	lw	$t1 12($a0)
	beqz	$t1 label85
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label88
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
label88:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label86
label85:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label89
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
label89:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label86:
	lw	$s1 36($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label92
	la	$a1 bool_const0
	jal	equality_test
label92:
	lw	$t1 12($a0)
	beqz	$t1 label90
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label93
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label93:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label91
label90:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label94
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label94:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label91:
	lw	$s1 36($s0)
	lw	$t2 36($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label97
	la	$a1 bool_const0
	jal	equality_test
label97:
	lw	$t1 12($a0)
	beqz	$t1 label95
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label98
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label98:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label96
label95:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label99
	la	$a0 str_const0
	li	$t1 40
	jal	_dispatch_abort
label99:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label96:
	lw	$s1 28($s0)
	lw	$t2 28($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label102
	la	$a1 bool_const0
	jal	equality_test
label102:
	lw	$t1 12($a0)
	beqz	$t1 label100
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label103
	la	$a0 str_const0
	li	$t1 41
	jal	_dispatch_abort
label103:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label101
label100:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label104
	la	$a0 str_const0
	li	$t1 41
	jal	_dispatch_abort
label104:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label101:
	lw	$s1 32($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label107
	la	$a1 bool_const0
	jal	equality_test
label107:
	lw	$t1 12($a0)
	beqz	$t1 label105
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label108
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
label108:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label106
label105:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label109
	la	$a0 str_const0
	li	$t1 42
	jal	_dispatch_abort
label109:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label106:
	lw	$s1 28($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label112
	la	$a1 bool_const0
	jal	equality_test
label112:
	lw	$t1 12($a0)
	beqz	$t1 label110
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label113
	la	$a0 str_const0
	li	$t1 43
	jal	_dispatch_abort
label113:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label111
label110:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label114
	la	$a0 str_const0
	li	$t1 43
	jal	_dispatch_abort
label114:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label111:
	lw	$s1 32($s0)
	lw	$t2 32($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label117
	la	$a1 bool_const0
	jal	equality_test
label117:
	lw	$t1 12($a0)
	beqz	$t1 label115
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label118
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label118:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label116
label115:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label119
	la	$a0 str_const0
	li	$t1 44
	jal	_dispatch_abort
label119:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label116:
	lw	$s1 44($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label122
	la	$a1 bool_const0
	jal	equality_test
label122:
	lw	$t1 12($a0)
	beqz	$t1 label120
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label123
	la	$a0 str_const0
	li	$t1 45
	jal	_dispatch_abort
label123:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label121
label120:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label124
	la	$a0 str_const0
	li	$t1 45
	jal	_dispatch_abort
label124:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label121:
	lw	$s1 48($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label127
	la	$a1 bool_const0
	jal	equality_test
label127:
	lw	$t1 12($a0)
	beqz	$t1 label125
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label128
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label128:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label126
label125:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label129
	la	$a0 str_const0
	li	$t1 46
	jal	_dispatch_abort
label129:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label126:
	lw	$s1 44($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label132
	la	$a1 bool_const0
	jal	equality_test
label132:
	lw	$t1 12($a0)
	beqz	$t1 label130
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 47
	jal	_dispatch_abort
label133:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label131
label130:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label134
	la	$a0 str_const0
	li	$t1 47
	jal	_dispatch_abort
label134:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label131:
	lw	$s1 48($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label137
	la	$a1 bool_const0
	jal	equality_test
label137:
	lw	$t1 12($a0)
	beqz	$t1 label135
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label138
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label138:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label136
label135:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label139
	la	$a0 str_const0
	li	$t1 48
	jal	_dispatch_abort
label139:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label136:
	lw	$s1 40($s0)
	lw	$t2 44($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label142
	la	$a1 bool_const0
	jal	equality_test
label142:
	lw	$t1 12($a0)
	beqz	$t1 label140
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label143
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label143:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label141
label140:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label144
	la	$a0 str_const0
	li	$t1 49
	jal	_dispatch_abort
label144:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label141:
	lw	$s1 44($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label147
	la	$a1 bool_const0
	jal	equality_test
label147:
	lw	$t1 12($a0)
	beqz	$t1 label145
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label148
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label148:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label146
label145:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label149
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label149:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label146:
	lw	$s1 48($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label152
	la	$a1 bool_const0
	jal	equality_test
label152:
	lw	$t1 12($a0)
	beqz	$t1 label150
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label153:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label151
label150:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label154
	la	$a0 str_const0
	li	$t1 51
	jal	_dispatch_abort
label154:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label151:
	lw	$s1 40($s0)
	lw	$t2 40($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label157
	la	$a1 bool_const0
	jal	equality_test
label157:
	lw	$t1 12($a0)
	beqz	$t1 label155
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 52
	jal	_dispatch_abort
label158:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label156
label155:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label159
	la	$a0 str_const0
	li	$t1 52
	jal	_dispatch_abort
label159:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label156:
	lw	$s1 40($s0)
	lw	$t2 48($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label162
	la	$a1 bool_const0
	jal	equality_test
label162:
	lw	$t1 12($a0)
	beqz	$t1 label160
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label163
	la	$a0 str_const0
	li	$t1 53
	jal	_dispatch_abort
label163:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label161
label160:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label164
	la	$a0 str_const0
	li	$t1 53
	jal	_dispatch_abort
label164:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label161:
	lw	$s1 52($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label167
	la	$a1 bool_const0
	jal	equality_test
label167:
	lw	$t1 12($a0)
	beqz	$t1 label165
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label168
	la	$a0 str_const0
	li	$t1 54
	jal	_dispatch_abort
label168:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label166
label165:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label169
	la	$a0 str_const0
	li	$t1 54
	jal	_dispatch_abort
label169:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label166:
	lw	$s1 56($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label172
	la	$a1 bool_const0
	jal	equality_test
label172:
	lw	$t1 12($a0)
	beqz	$t1 label170
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label173
	la	$a0 str_const0
	li	$t1 55
	jal	_dispatch_abort
label173:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label171
label170:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label174
	la	$a0 str_const0
	li	$t1 55
	jal	_dispatch_abort
label174:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label171:
	lw	$s1 60($s0)
	lw	$t2 52($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label177
	la	$a1 bool_const0
	jal	equality_test
label177:
	lw	$t1 12($a0)
	beqz	$t1 label175
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label178
	la	$a0 str_const0
	li	$t1 56
	jal	_dispatch_abort
label178:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label176
label175:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label179
	la	$a0 str_const0
	li	$t1 56
	jal	_dispatch_abort
label179:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label176:
	lw	$s1 56($s0)
	lw	$t2 60($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label182
	la	$a1 bool_const0
	jal	equality_test
label182:
	lw	$t1 12($a0)
	beqz	$t1 label180
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label183
	la	$a0 str_const0
	li	$t1 57
	jal	_dispatch_abort
label183:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label181
label180:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label184
	la	$a0 str_const0
	li	$t1 57
	jal	_dispatch_abort
label184:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label181:
	lw	$s1 60($s0)
	lw	$t2 60($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label187
	la	$a1 bool_const0
	jal	equality_test
label187:
	lw	$t1 12($a0)
	beqz	$t1 label185
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label188
	la	$a0 str_const0
	li	$t1 58
	jal	_dispatch_abort
label188:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label186
label185:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label189
	la	$a0 str_const0
	li	$t1 58
	jal	_dispatch_abort
label189:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label186:
	lw	$s1 60($s0)
	lw	$t2 68($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label192
	la	$a1 bool_const0
	jal	equality_test
label192:
	lw	$t1 12($a0)
	beqz	$t1 label190
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label193
	la	$a0 str_const0
	li	$t1 59
	jal	_dispatch_abort
label193:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label191
label190:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label194
	la	$a0 str_const0
	li	$t1 59
	jal	_dispatch_abort
label194:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label191:
	lw	$s1 72($s0)
	lw	$t2 68($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label197
	la	$a1 bool_const0
	jal	equality_test
label197:
	lw	$t1 12($a0)
	beqz	$t1 label195
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label198
	la	$a0 str_const0
	li	$t1 60
	jal	_dispatch_abort
label198:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label196
label195:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label199
	la	$a0 str_const0
	li	$t1 60
	jal	_dispatch_abort
label199:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label196:
	lw	$s1 72($s0)
	lw	$t2 72($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label202
	la	$a1 bool_const0
	jal	equality_test
label202:
	lw	$t1 12($a0)
	beqz	$t1 label200
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label203
	la	$a0 str_const0
	li	$t1 61
	jal	_dispatch_abort
label203:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label201
label200:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label204
	la	$a0 str_const0
	li	$t1 61
	jal	_dispatch_abort
label204:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label201:
	lw	$s1 68($s0)
	lw	$t2 72($s0)
	move	$t1 $s1
	la	$a0 bool_const1
	beq	$t1 $t2 label207
	la	$a1 bool_const0
	jal	equality_test
label207:
	lw	$t1 12($a0)
	beqz	$t1 label205
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label208
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label208:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
	b	label206
label205:
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 76($s0)
	bne	$a0 $zero label209
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label209:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
label206:
	lw	$s1 0($fp)
	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
