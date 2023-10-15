.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2bd8
/* 933D8 800A2BD8 FFFF8224 */  addiu      $v0, $a0, -1
/* 933DC 800A2BDC 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 933E0 800A2BE0 0F004010 */  beqz       $v0, .L800A2C20
/* 933E4 800A2BE4 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 933E8 800A2BE8 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 933EC 800A2BEC 80200400 */  sll        $a0, $a0, 2
/* 933F0 800A2BF0 21186400 */  addu       $v1, $v1, $a0
/* 933F4 800A2BF4 0400648C */  lw         $a0, 4($v1)
/* 933F8 800A2BF8 00000000 */  nop
/* 933FC 800A2BFC 08008010 */  beqz       $a0, .L800A2C20
/* 93400 800A2C00 00000000 */   nop
/* 93404 800A2C04 0400A014 */  bnez       $a1, .L800A2C18
/* 93408 800A2C08 01000224 */   addiu     $v0, $zero, 1
/* 9340C 800A2C0C 10008284 */  lh         $v0, 0x10($a0)
/* 93410 800A2C10 0800E003 */  jr         $ra
/* 93414 800A2C14 00000000 */   nop
.L800A2C18:
/* 93418 800A2C18 0300A210 */  beq        $a1, $v0, .L800A2C28
/* 9341C 800A2C1C 00000000 */   nop
.L800A2C20:
/* 93420 800A2C20 0800E003 */  jr         $ra
/* 93424 800A2C24 21100000 */   addu      $v0, $zero, $zero
.L800A2C28:
/* 93428 800A2C28 12008284 */  lh         $v0, 0x12($a0)
/* 9342C 800A2C2C 0800E003 */  jr         $ra
/* 93430 800A2C30 00000000 */   nop
