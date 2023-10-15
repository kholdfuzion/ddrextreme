.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006C6F8
/* 5CEF8 8006C6F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5CEFC 8006C6FC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CF00 8006C700 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CF04 8006C704 40100400 */  sll        $v0, $a0, 1
/* 5CF08 8006C708 21104400 */  addu       $v0, $v0, $a0
/* 5CF0C 8006C70C 80100200 */  sll        $v0, $v0, 2
/* 5CF10 8006C710 23104400 */  subu       $v0, $v0, $a0
/* 5CF14 8006C714 80100200 */  sll        $v0, $v0, 2
/* 5CF18 8006C718 23104400 */  subu       $v0, $v0, $a0
/* 5CF1C 8006C71C 80100200 */  sll        $v0, $v0, 2
/* 5CF20 8006C720 21104400 */  addu       $v0, $v0, $a0
/* 5CF24 8006C724 80100200 */  sll        $v0, $v0, 2
/* 5CF28 8006C728 23104400 */  subu       $v0, $v0, $a0
/* 5CF2C 8006C72C 80100200 */  sll        $v0, $v0, 2
/* 5CF30 8006C730 1000BFAF */  sw         $ra, 0x10($sp)
/* 5CF34 8006C734 80410300 */  sll        $t0, $v1, 6
/* 5CF38 8006C738 21400301 */  addu       $t0, $t0, $v1
/* 5CF3C 8006C73C 80400800 */  sll        $t0, $t0, 2
/* 5CF40 8006C740 23400301 */  subu       $t0, $t0, $v1
/* 5CF44 8006C744 C0400800 */  sll        $t0, $t0, 3
/* 5CF48 8006C748 21400301 */  addu       $t0, $t0, $v1
/* 5CF4C 8006C74C C0400800 */  sll        $t0, $t0, 3
/* 5CF50 8006C750 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CF54 8006C754 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CF58 8006C758 21104300 */  addu       $v0, $v0, $v1
/* 5CF5C 8006C75C 21400201 */  addu       $t0, $t0, $v0
/* 5CF60 8006C760 C40A05A5 */  sh         $a1, 0xac4($t0)
/* 5CF64 8006C764 C60A06A5 */  sh         $a2, 0xac6($t0)
/* 5CF68 8006C768 4CB0010C */  jal        FUN_8006c130
/* 5CF6C 8006C76C BA0A07A1 */   sb        $a3, 0xaba($t0)
/* 5CF70 8006C770 1000BF8F */  lw         $ra, 0x10($sp)
/* 5CF74 8006C774 00000000 */  nop
/* 5CF78 8006C778 0800E003 */  jr         $ra
/* 5CF7C 8006C77C 1800BD27 */   addiu     $sp, $sp, 0x18
