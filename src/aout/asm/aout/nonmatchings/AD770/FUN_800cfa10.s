.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cfa10
/* C0210 800CFA10 2148A000 */  addu       $t1, $a1, $zero
/* C0214 800CFA14 1200C010 */  beqz       $a2, .L800CFA60
/* C0218 800CFA18 21380000 */   addu      $a3, $zero, $zero
/* C021C 800CFA1C 21408000 */  addu       $t0, $a0, $zero
.L800CFA20:
/* C0220 800CFA20 21282701 */  addu       $a1, $t1, $a3
/* C0224 800CFA24 0400E724 */  addiu      $a3, $a3, 4
/* C0228 800CFA28 0100A390 */  lbu        $v1, 1($a1)
/* C022C 800CFA2C 0000A290 */  lbu        $v0, ($a1)
/* C0230 800CFA30 0200A490 */  lbu        $a0, 2($a1)
/* C0234 800CFA34 001A0300 */  sll        $v1, $v1, 8
/* C0238 800CFA38 25104300 */  or         $v0, $v0, $v1
/* C023C 800CFA3C 00240400 */  sll        $a0, $a0, 0x10
/* C0240 800CFA40 0300A390 */  lbu        $v1, 3($a1)
/* C0244 800CFA44 25104400 */  or         $v0, $v0, $a0
/* C0248 800CFA48 001E0300 */  sll        $v1, $v1, 0x18
/* C024C 800CFA4C 25104300 */  or         $v0, $v0, $v1
/* C0250 800CFA50 000002AD */  sw         $v0, ($t0)
/* C0254 800CFA54 2B10E600 */  sltu       $v0, $a3, $a2
/* C0258 800CFA58 F1FF4014 */  bnez       $v0, .L800CFA20
/* C025C 800CFA5C 04000825 */   addiu     $t0, $t0, 4
.L800CFA60:
/* C0260 800CFA60 0800E003 */  jr         $ra
/* C0264 800CFA64 00000000 */   nop
