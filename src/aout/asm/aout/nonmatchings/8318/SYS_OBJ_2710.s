.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2710
/* AEF4 8001A6F4 0D80043C */  lui        $a0, %hi(D_800D2CD0)
/* AEF8 8001A6F8 D02C848C */  lw         $a0, %lo(D_800D2CD0)($a0)
/* AEFC 8001A6FC B86C000C */  jal        SetIntrMask
/* AF00 8001A700 00000000 */   nop
/* AF04 8001A704 07000232 */  andi       $v0, $s0, 7
/* AF08 8001A708 03004014 */  bnez       $v0, .L8001A718
/* AF0C 8001A70C 21100000 */   addu      $v0, $zero, $zero
/* AF10 8001A710 776A000C */  jal        SYS_OBJ_29F8
/* AF14 8001A714 21200002 */   addu      $a0, $s0, $zero
.L8001A718:
/* AF18 8001A718 1400BF8F */  lw         $ra, 0x14($sp)
/* AF1C 8001A71C 1000B08F */  lw         $s0, 0x10($sp)
/* AF20 8001A720 0800E003 */  jr         $ra
/* AF24 8001A724 1800BD27 */   addiu     $sp, $sp, 0x18
