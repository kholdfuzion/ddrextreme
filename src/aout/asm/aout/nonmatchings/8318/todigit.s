.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel todigit
/* 17588 80026D88 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1758C 80026D8C FF008230 */  andi       $v0, $a0, 0xff
/* 17590 80026D90 1000BFAF */  sw         $ra, 0x10($sp)
/* 17594 80026D94 0E80033C */  lui        $v1, %hi(D_800D8C0D)
/* 17598 80026D98 21186200 */  addu       $v1, $v1, $v0
/* 1759C 80026D9C 0D8C6390 */  lbu        $v1, %lo(D_800D8C0D)($v1)
/* 175A0 80026DA0 00000000 */  nop
/* 175A4 80026DA4 04006230 */  andi       $v0, $v1, 4
/* 175A8 80026DA8 04004010 */  beqz       $v0, .L80026DBC
/* 175AC 80026DAC 00160400 */   sll       $v0, $a0, 0x18
/* 175B0 80026DB0 03160200 */  sra        $v0, $v0, 0x18
/* 175B4 80026DB4 7A9B0008 */  j          TODIGIT_OBJ_60
/* 175B8 80026DB8 D0FF4224 */   addiu     $v0, $v0, -0x30
.L80026DBC:
/* 175BC 80026DBC 03006230 */  andi       $v0, $v1, 3
/* 175C0 80026DC0 07004010 */  beqz       $v0, .L80026DE0
/* 175C4 80026DC4 00260400 */   sll       $a0, $a0, 0x18
/* 175C8 80026DC8 7E9B000C */  jal        tolower
/* 175CC 80026DCC 03260400 */   sra       $a0, $a0, 0x18
/* 175D0 80026DD0 00160200 */  sll        $v0, $v0, 0x18
/* 175D4 80026DD4 03160200 */  sra        $v0, $v0, 0x18
/* 175D8 80026DD8 7A9B0008 */  j          TODIGIT_OBJ_60
/* 175DC 80026DDC A9FF4224 */   addiu     $v0, $v0, -0x57
.L80026DE0:
/* 175E0 80026DE0 9800023C */  lui        $v0, 0x98
/* 175E4 80026DE4 7F964234 */  ori        $v0, $v0, 0x967f
