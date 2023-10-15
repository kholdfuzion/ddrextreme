.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006C780
/* 5CF80 8006C780 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5CF84 8006C784 21388000 */  addu       $a3, $a0, $zero
/* 5CF88 8006C788 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CF8C 8006C78C A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CF90 8006C790 40100700 */  sll        $v0, $a3, 1
/* 5CF94 8006C794 21104700 */  addu       $v0, $v0, $a3
/* 5CF98 8006C798 80100200 */  sll        $v0, $v0, 2
/* 5CF9C 8006C79C 23104700 */  subu       $v0, $v0, $a3
/* 5CFA0 8006C7A0 80100200 */  sll        $v0, $v0, 2
/* 5CFA4 8006C7A4 23104700 */  subu       $v0, $v0, $a3
/* 5CFA8 8006C7A8 80100200 */  sll        $v0, $v0, 2
/* 5CFAC 8006C7AC 21104700 */  addu       $v0, $v0, $a3
/* 5CFB0 8006C7B0 80100200 */  sll        $v0, $v0, 2
/* 5CFB4 8006C7B4 23104700 */  subu       $v0, $v0, $a3
/* 5CFB8 8006C7B8 80100200 */  sll        $v0, $v0, 2
/* 5CFBC 8006C7BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 5CFC0 8006C7C0 80210300 */  sll        $a0, $v1, 6
/* 5CFC4 8006C7C4 21208300 */  addu       $a0, $a0, $v1
/* 5CFC8 8006C7C8 80200400 */  sll        $a0, $a0, 2
/* 5CFCC 8006C7CC 23208300 */  subu       $a0, $a0, $v1
/* 5CFD0 8006C7D0 C0200400 */  sll        $a0, $a0, 3
/* 5CFD4 8006C7D4 21208300 */  addu       $a0, $a0, $v1
/* 5CFD8 8006C7D8 C0200400 */  sll        $a0, $a0, 3
/* 5CFDC 8006C7DC 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CFE0 8006C7E0 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CFE4 8006C7E4 21104300 */  addu       $v0, $v0, $v1
/* 5CFE8 8006C7E8 21208200 */  addu       $a0, $a0, $v0
/* 5CFEC 8006C7EC C80A8384 */  lh         $v1, 0xac8($a0)
/* 5CFF0 8006C7F0 00000000 */  nop
/* 5CFF4 8006C7F4 05006514 */  bne        $v1, $a1, .L8006C80C
/* 5CFF8 8006C7F8 00000000 */   nop
/* 5CFFC 8006C7FC CA0A8284 */  lh         $v0, 0xaca($a0)
/* 5D000 8006C800 00000000 */  nop
/* 5D004 8006C804 05004610 */  beq        $v0, $a2, .L8006C81C
/* 5D008 8006C808 00000000 */   nop
.L8006C80C:
/* 5D00C 8006C80C C80A85A4 */  sh         $a1, 0xac8($a0)
/* 5D010 8006C810 CA0A86A4 */  sh         $a2, 0xaca($a0)
/* 5D014 8006C814 8EB0010C */  jal        FUN_8006c238
/* 5D018 8006C818 2120E000 */   addu      $a0, $a3, $zero
.L8006C81C:
/* 5D01C 8006C81C 1000BF8F */  lw         $ra, 0x10($sp)
/* 5D020 8006C820 00000000 */  nop
/* 5D024 8006C824 0800E003 */  jr         $ra
/* 5D028 8006C828 1800BD27 */   addiu     $sp, $sp, 0x18
