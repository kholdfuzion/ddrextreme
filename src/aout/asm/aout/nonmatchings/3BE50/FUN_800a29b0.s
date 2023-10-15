.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a29b0
/* 931B0 800A29B0 FFFF8224 */  addiu      $v0, $a0, -1
/* 931B4 800A29B4 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 931B8 800A29B8 0E004010 */  beqz       $v0, .L800A29F4
/* 931BC 800A29BC 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 931C0 800A29C0 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 931C4 800A29C4 80200400 */  sll        $a0, $a0, 2
/* 931C8 800A29C8 21186400 */  addu       $v1, $v1, $a0
/* 931CC 800A29CC 0400628C */  lw         $v0, 4($v1)
/* 931D0 800A29D0 00000000 */  nop
/* 931D4 800A29D4 07004010 */  beqz       $v0, .L800A29F4
/* 931D8 800A29D8 00000000 */   nop
/* 931DC 800A29DC 0E004494 */  lhu        $a0, 0xe($v0)
/* 931E0 800A29E0 00000000 */  nop
/* 931E4 800A29E4 F3FF8224 */  addiu      $v0, $a0, -0xd
/* 931E8 800A29E8 0300422C */  sltiu      $v0, $v0, 3
/* 931EC 800A29EC 03004014 */  bnez       $v0, .L800A29FC
/* 931F0 800A29F0 00140400 */   sll       $v0, $a0, 0x10
.L800A29F4:
/* 931F4 800A29F4 0800E003 */  jr         $ra
/* 931F8 800A29F8 21100000 */   addu      $v0, $zero, $zero
.L800A29FC:
/* 931FC 800A29FC 03140200 */  sra        $v0, $v0, 0x10
/* 93200 800A2A00 0800E003 */  jr         $ra
/* 93204 800A2A04 F4FF4224 */   addiu     $v0, $v0, -0xc
