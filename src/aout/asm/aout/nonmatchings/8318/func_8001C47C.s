.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C47C
/* CC7C 8001C47C 21188000 */  addu       $v1, $a0, $zero
/* CC80 8001C480 0E00622C */  sltiu      $v0, $v1, 0xe
/* CC84 8001C484 10004010 */  beqz       $v0, .L8001C4C8
/* CC88 8001C488 6210023C */   lui       $v0, 0x1062
/* CC8C 8001C48C 0180043C */  lui        $a0, %hi(D_80010630)
/* CC90 8001C490 30068424 */  addiu      $a0, $a0, %lo(D_80010630)
/* CC94 8001C494 40180300 */  sll        $v1, $v1, 1
/* CC98 8001C498 21186400 */  addu       $v1, $v1, $a0
/* CC9C 8001C49C 00006584 */  lh         $a1, ($v1)
/* CCA0 8001C4A0 D34D4234 */  ori        $v0, $v0, 0x4dd3
/* CCA4 8001C4A4 002B0500 */  sll        $a1, $a1, 0xc
/* CCA8 8001C4A8 1800A200 */  mult       $a1, $v0
/* CCAC 8001C4AC C32F0500 */  sra        $a1, $a1, 0x1f
/* CCB0 8001C4B0 10100000 */  mfhi       $v0
/* CCB4 8001C4B4 83110200 */  sra        $v0, $v0, 6
/* CCB8 8001C4B8 23104500 */  subu       $v0, $v0, $a1
/* CCBC 8001C4BC 00140200 */  sll        $v0, $v0, 0x10
/* CCC0 8001C4C0 0800E003 */  jr         $ra
/* CCC4 8001C4C4 03140200 */   sra       $v0, $v0, 0x10
.L8001C4C8:
/* CCC8 8001C4C8 0800E003 */  jr         $ra
/* CCCC 8001C4CC 00100224 */   addiu     $v0, $zero, 0x1000
