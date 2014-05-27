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
	.word	7
_bool_tag:
	.word	8
_string_tag:
	.word	9
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
str_const27:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Nil"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Cons"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const4
	.ascii	"BookList"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Article"
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Book"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	9
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"PC Magazine"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	9
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Ulanoff"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	9
	.word	9
	.word	String_dispTab
	.word	int_const12
	.ascii	"The Top 100 CD_ROMs"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	9
	.word	10
	.word	String_dispTab
	.word	int_const13
	.ascii	"Aho, Sethi, and Ullman"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	9
	.word	16
	.word	String_dispTab
	.word	int_const14
	.ascii	"Compilers, Principles, Techniques, and Tools"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	9
	.word	12
	.word	String_dispTab
	.word	int_const15
	.ascii	"- dynamic type was Article -\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	9
	.word	11
	.word	String_dispTab
	.word	int_const16
	.ascii	"- dynamic type was Book -\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"periodical:  "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const17
	.ascii	"author:     "
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	9
	.word	8
	.word	String_dispTab
	.word	int_const17
	.ascii	"title:      "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	9
	.word	11
	.word	String_dispTab
	.word	int_const18
	.ascii	"./Testfiles/book_list.cl"
	.byte	0	
	.align	2
	.word	-1
int_const18:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	24
	.word	-1
int_const17:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const16:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	26
	.word	-1
int_const15:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const14:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	44
	.word	-1
int_const13:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const12:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const11:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const10:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const6:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const5:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const4:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const3:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const1:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Main_protObj:
	.word	10
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
Nil_protObj:
	.word	6
	.word	3
	.word	Nil_dispTab
	.word	-1
Cons_protObj:
	.word	5
	.word	5
	.word	Cons_dispTab
	.word	0
	.word	0
	.word	-1
BookList_protObj:
	.word	4
	.word	3
	.word	BookList_dispTab
	.word	-1
Article_protObj:
	.word	3
	.word	6
	.word	Article_dispTab
	.word	str_const27
	.word	str_const27
	.word	str_const27
	.word	-1
Book_protObj:
	.word	2
	.word	5
	.word	Book_dispTab
	.word	str_const27
	.word	str_const27
	.word	-1
String_protObj:
	.word	9
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
	.word	-1
Bool_protObj:
	.word	8
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
Int_protObj:
	.word	7
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
	.word	str_const16
	.word	str_const17
	.word	str_const21
	.word	str_const22
	.word	str_const23
	.word	str_const24
	.word	str_const25
	.word	str_const18
	.word	str_const19
	.word	str_const20
	.word	str_const26
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Book_protObj
	.word	Book_init
	.word	Article_protObj
	.word	Article_init
	.word	BookList_protObj
	.word	BookList_init
	.word	Cons_protObj
	.word	Cons_init
	.word	Nil_protObj
	.word	Nil_init
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
Book_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Book.print
Article_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Book.initBook
	.word	Article.print
	.word	Article.initArticle
BookList_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	BookList.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	BookList.print_list
Cons_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Cons.isNil
	.word	BookList.cons
	.word	Cons.car
	.word	Cons.cdr
	.word	Cons.print_list
	.word	Cons.init
Nil_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Nil.isNil
	.word	BookList.cons
	.word	BookList.car
	.word	BookList.cdr
	.word	Nil.print_list
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
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Main
# Begin Emmitting code to generate initializer method for Nil
Nil_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
	jal	BookList_init
	move	$a0 $s0
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Nil
# Begin Emmitting code to generate initializer method for Cons
Cons_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	BookList_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 12($s0)
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Cons
# Begin Emmitting code to generate initializer method for BookList
BookList_init:
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
# End Emmitting code to generate initializer method for BookList
# Begin Emmitting code to generate initializer method for Article
Article_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -16
	move	$s0 $a0
	jal	Book_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 16
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Article
# Begin Emmitting code to generate initializer method for Book
Book_init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
	jal	IO_init
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
# Begin Code no_epression expression at line number 0
# End Code no_epression expression.
	move	$a0 $s0
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	jr	$ra	
# End Emmitting code to generate initializer method for Book
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
# End Code no_epression expression.
# Begin Code no_epression expression at line number 3
# End Code no_epression expression.
	move	$a0 $zero
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
# End Code no_epression expression.
	move	$a0 $zero
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
# End Code no_epression expression.
	move	$a0 $zero
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
	.globl	Main.main
Main.main:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -48
	move	$s0 $a0
# Begin Code let expression at line number 116
# Begin Code disptach expression at line number 117
# Begin Code string const expression at line number 117
	la	$a0 str_const7
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code string const expression at line number 118
	la	$a0 str_const8
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 117
	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init
# End Code new with type Book
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 117
	jal	_dispatch_abort
label0:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
# Begin Code let expression at line number 120
# Begin Code disptach expression at line number 121
# Begin Code string const expression at line number 121
	la	$a0 str_const9
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code string const expression at line number 122
	la	$a0 str_const10
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code string const expression at line number 123
	la	$a0 str_const11
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 121
	la	$a0 Article_protObj
	jal	Object.copy
	jal	Article_init
# End Code new with type Article
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 121
	jal	_dispatch_abort
label1:
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -16($fp)
# Begin Code block epression at line number 125
# Begin Code assign expression at line number 126
# Begin Code disptach expression at line number 126
# Begin Code objectID expression at line number 126
# Loading local object into ACC
	lw	$a0 -16($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 126
# Begin Code objectID expression at line number 126
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code new with type at line number 126
	la	$a0 Nil_protObj
	jal	Object.copy
	jal	Nil_init
# End Code new with type Nil
	bne	$a0 $zero label2
	la	$a0 str_const0
	li	$t1 126
	jal	_dispatch_abort
label2:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label3
	la	$a0 str_const0
	li	$t1 126
	jal	_dispatch_abort
label3:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code disptach expression at line number 127
# Begin Code objectID expression at line number 127
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 127
	jal	_dispatch_abort
label4:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
# End Code let expression.
# End Code let expression.
	addiu	$sp $sp 48
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method main
# Begin Emitting code for method isNil
	.globl	Nil.isNil
Nil.isNil:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code bool expression at line number 105
	la	$a0 bool_const1
# End Code bool expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method isNil
# Begin Emitting code for method print_list
	.globl	Nil.print_list
Nil.print_list:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code bool expression at line number 107
	la	$a0 bool_const1
# End Code bool expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print_list
# Begin Emitting code for method isNil
	.globl	Cons.isNil
Cons.isNil:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code bool expression at line number 79
	la	$a0 bool_const0
# End Code bool expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method isNil
# Begin Emitting code for method init
	.globl	Cons.init
Cons.init:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 82
# Begin Code assign expression at line number 83
# Begin Code objectID expression at line number 83
# Loading paramter object into ACC
	lw	$a0 8($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 84
# Begin Code objectID expression at line number 84
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code objectID expression at line number 85
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 8
	jr	$ra	
# End Emitting code for method init
# Begin Emitting code for method car
	.globl	Cons.car
Cons.car:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code objectID expression at line number 89
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method car
# Begin Emitting code for method cdr
	.globl	Cons.cdr
Cons.cdr:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code objectID expression at line number 91
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method cdr
# Begin Emitting code for method print_list
	.globl	Cons.print_list
Cons.print_list:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code block epression at line number 94
# Begin Code typecase expression at line number 95
# Begin Code disptach expression at line number 95
# Begin Code objectID expression at line number 95
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 95
	jal	_dispatch_abort
label5:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code disptach expression.
	sw	$a0 -12($fp)
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 95
	jal	_case_abort2
label7:
	lw	$t3 -12($fp)
	lw	$t2 0($t3)
	blt	$t2 3 label8
	bgt	$t2 3 label8
	sw	$t3 -16($fp)
# Begin Code disptach expression at line number 97
# Begin Code string const expression at line number 97
	la	$a0 str_const6
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 97
	move	$a0 $s0
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 97
	jal	_dispatch_abort
label9:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	b	label6
label8:
	lw	$t3 -12($fp)
	lw	$t2 0($t3)
	blt	$t2 2 label10
	bgt	$t2 3 label10
	sw	$t3 -16($fp)
# Begin Code disptach expression at line number 96
# Begin Code string const expression at line number 96
	la	$a0 str_const5
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 96
	move	$a0 $s0
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 96
	jal	_dispatch_abort
label11:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	b	label6
label10:
	la	$a0 class_nameTab
	lw	$t2 0($t3)
	li	$t1 4
	mul	$t2 $t2 $t1
	addu	$a0 $a0 $t2
	jal	_case_abort
label6:
# End Code typecase expression.
# Begin Code disptach expression at line number 99
# Begin Code objectID expression at line number 99
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	bne	$a0 $zero label12
	la	$a0 str_const0
	li	$t1 99
	jal	_dispatch_abort
label12:
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jalr		$t1
# End Code disptach expression.
# End Code block epression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print_list
# Begin Emitting code for method isNil
	.globl	BookList.isNil
BookList.isNil:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 50
# Begin Code disptach expression at line number 50
# Begin Code objectID expression at line number 50
	move	$a0 $s0
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 50
	jal	_dispatch_abort
label13:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code bool expression at line number 50
	la	$a0 bool_const1
# End Code bool expression.
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method isNil
# Begin Emitting code for method cons
	.globl	BookList.cons
BookList.cons:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code let expression at line number 53
# Begin Code new with type at line number 53
	la	$a0 Cons_protObj
	jal	Object.copy
	jal	Cons_init
# End Code new with type Cons
	sw	$a0 -12($fp)
# Begin Code disptach expression at line number 54
# Begin Code objectID expression at line number 54
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 54
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 54
# Loading local object into ACC
	lw	$a0 -12($fp)
# End Code objectID expression.
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 54
	jal	_dispatch_abort
label14:
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jalr		$t1
# End Code disptach expression.
# End Code let expression.
	addiu	$sp $sp 24
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 4
	jr	$ra	
# End Emitting code for method cons
# Begin Emitting code for method car
	.globl	BookList.car
BookList.car:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 62
# Begin Code disptach expression at line number 62
# Begin Code objectID expression at line number 62
	move	$a0 $s0
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 62
	jal	_dispatch_abort
label15:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code new with type at line number 62
	la	$a0 Book_protObj
	jal	Object.copy
	jal	Book_init
# End Code new with type Book
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method car
# Begin Emitting code for method cdr
	.globl	BookList.cdr
BookList.cdr:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 68
# Begin Code disptach expression at line number 68
# Begin Code objectID expression at line number 68
	move	$a0 $s0
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 68
	jal	_dispatch_abort
label16:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code new with type at line number 68
	la	$a0 BookList_protObj
	jal	Object.copy
	jal	BookList_init
# End Code new with type BookList
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method cdr
# Begin Emitting code for method print_list
	.globl	BookList.print_list
BookList.print_list:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code disptach expression at line number 70
# Begin Code objectID expression at line number 70
	move	$a0 $s0
	bne	$a0 $zero label17
	la	$a0 str_const0
	li	$t1 70
	jal	_dispatch_abort
label17:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
# End Code disptach expression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print_list
# Begin Emitting code for method initArticle
	.globl	Article.initArticle
Article.initArticle:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -20
	move	$s0 $a0
# Begin Code block epression at line number 29
# Begin Code disptach expression at line number 30
# Begin Code objectID expression at line number 30
# Loading paramter object into ACC
	lw	$a0 12($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 30
# Loading paramter object into ACC
	lw	$a0 8($fp)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 30
	move	$a0 $s0
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 30
	jal	_dispatch_abort
label18:
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code assign expression at line number 31
# Begin Code objectID expression at line number 31
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 20($s0)
	addiu	$a1 $s0 5
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code objectID expression at line number 32
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 20
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 12
	jr	$ra	
# End Emitting code for method initArticle
# Begin Emitting code for method print
	.globl	Article.print
Article.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -24
	move	$s0 $a0
# Begin Code block epression at line number 37
# Begin Code static dispatch expression at line number 38
# Begin Code objectID expression at line number 38
	move	$a0 $s0
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 38
	jal	_dispatch_abort
label19:
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jalr		$t1
# End Code static dispatch expression.
# Begin Code disptach expression at line number 39
# Begin Code string const expression at line number 39
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 39
# Begin Code objectID expression at line number 39
# Loading attribute object into ACC
	lw	$a0 20($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 39
# Begin Code string const expression at line number 39
	la	$a0 str_const4
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 39
	move	$a0 $s0
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label20:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label21:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 39
	jal	_dispatch_abort
label22:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 40
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 24
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print
# Begin Emitting code for method initBook
	.globl	Book.initBook
Book.initBook:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -12
	move	$s0 $a0
# Begin Code block epression at line number 8
# Begin Code assign expression at line number 9
# Begin Code objectID expression at line number 9
# Loading paramter object into ACC
	lw	$a0 8($fp)
# End Code objectID expression.
	sw	$a0 12($s0)
	addiu	$a1 $s0 3
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code assign expression at line number 10
# Begin Code objectID expression at line number 10
# Loading paramter object into ACC
	lw	$a0 4($fp)
# End Code objectID expression.
	sw	$a0 16($s0)
	addiu	$a1 $s0 4
	jal	_GenGC_Assign
# End Code assign expression.
# Begin Code objectID expression at line number 11
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 12
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 8
	jr	$ra	
# End Emitting code for method initBook
# Begin Emitting code for method print
	.globl	Book.print
Book.print:
	sw	$fp 0($sp)
	sw	$s0 -4($sp)
	sw	$ra -8($sp)
	move	$fp $sp
	addiu	$sp $sp -36
	move	$s0 $a0
# Begin Code block epression at line number 16
# Begin Code disptach expression at line number 17
# Begin Code string const expression at line number 17
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 17
# Begin Code objectID expression at line number 17
# Loading attribute object into ACC
	lw	$a0 12($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 17
# Begin Code string const expression at line number 17
	la	$a0 str_const1
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 17
	move	$a0 $s0
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label23:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label24:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 17
	jal	_dispatch_abort
label25:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code disptach expression at line number 18
# Begin Code string const expression at line number 18
	la	$a0 str_const2
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 18
# Begin Code objectID expression at line number 18
# Loading attribute object into ACC
	lw	$a0 16($s0)
# End Code objectID expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code disptach expression at line number 18
# Begin Code string const expression at line number 18
	la	$a0 str_const3
# End Code string const expression.
	sw	$a0 0($sp)
	addiu	$sp $sp -4
# Begin Code objectID expression at line number 18
	move	$a0 $s0
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label26:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label27:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 18
	jal	_dispatch_abort
label28:
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jalr		$t1
# End Code disptach expression.
# Begin Code objectID expression at line number 19
	move	$a0 $s0
# End Code block epression.
	addiu	$sp $sp 36
	lw	$fp 0($sp)
	lw	$s0 -4($sp)
	lw	$ra -8($sp)
	addiu	$sp $sp 0
	jr	$ra	
# End Emitting code for method print

# end of generated code
