.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80035750
/* 25F50 80035750 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 25F54 80035754 402C0500 */  sll        $a1, $a1, 0x11
/* 25F58 80035758 80260400 */  sll        $a0, $a0, 0x1a
/* 25F5C 8003575C 1000B0AF */  sw         $s0, 0x10($sp)
/* 25F60 80035760 2180A400 */  addu       $s0, $a1, $a0
/* 25F64 80035764 82261000 */  srl        $a0, $s0, 0x1a
/* 25F68 80035768 822D1000 */  srl        $a1, $s0, 0x16
/* 25F6C 8003576C 0F00A530 */  andi       $a1, $a1, 0xf
/* 25F70 80035770 21300000 */  addu       $a2, $zero, $zero
/* 25F74 80035774 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 25F78 80035778 1800B2AF */  sw         $s2, 0x18($sp)
/* 25F7C 8003577C 97F6020C */  jal        flash_library_related_800bda5c
/* 25F80 80035780 1400B1AF */   sw        $s1, 0x14($sp)
/* 25F84 80035784 07004014 */  bnez       $v0, .L800357A4
/* 25F88 80035788 3F00023C */   lui       $v0, 0x3f
/* 25F8C 8003578C 0180043C */  lui        $a0, %hi(D_80011E44)
/* 25F90 80035790 441E8424 */  addiu      $a0, $a0, %lo(D_80011E44)
/* 25F94 80035794 FFFF0524 */  addiu      $a1, $zero, -1
/* 25F98 80035798 58AA000C */  jal        error_8002a960
/* 25F9C 8003579C 21300000 */   addu      $a2, $zero, $zero
/* 25FA0 800357A0 3F00023C */  lui        $v0, 0x3f
.L800357A4:
/* 25FA4 800357A4 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 25FA8 800357A8 24100202 */  and        $v0, $s0, $v0
/* 25FAC 800357AC 001F033C */  lui        $v1, 0x1f00
/* 25FB0 800357B0 21804300 */  addu       $s0, $v0, $v1
/* 25FB4 800357B4 60F8020C */  jal        FUN_800be180
/* 25FB8 800357B8 21200002 */   addu      $a0, $s0, $zero
/* 25FBC 800357BC CD6B000C */  jal        VSync
/* 25FC0 800357C0 FFFF0424 */   addiu     $a0, $zero, -1
/* 25FC4 800357C4 21200002 */  addu       $a0, $s0, $zero
/* 25FC8 800357C8 FCF6020C */  jal        FUN_800bdbf0
/* 25FCC 800357CC 21884000 */   addu      $s1, $v0, $zero
/* 25FD0 800357D0 FED50008 */  j          .L800357F8
/* 25FD4 800357D4 FEFF1224 */   addiu     $s2, $zero, -2
.L800357D8:
/* 25FD8 800357D8 CD6B000C */  jal        VSync
/* 25FDC 800357DC FFFF0424 */   addiu     $a0, $zero, -1
/* 25FE0 800357E0 23105100 */  subu       $v0, $v0, $s1
/* 25FE4 800357E4 85034228 */  slti       $v0, $v0, 0x385
/* 25FE8 800357E8 07004010 */  beqz       $v0, .L80035808
/* 25FEC 800357EC 00000000 */   nop
/* 25FF0 800357F0 7CAA000C */  jal        vsync_8002a9f0
/* 25FF4 800357F4 00000000 */   nop
.L800357F8:
/* 25FF8 800357F8 0EF7020C */  jal        FUN_800bdc38
/* 25FFC 800357FC 21200002 */   addu      $a0, $s0, $zero
/* 26000 80035800 F5FF5210 */  beq        $v0, $s2, .L800357D8
/* 26004 80035804 00000000 */   nop
.L80035808:
/* 26008 80035808 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 2600C 8003580C 1800B28F */  lw         $s2, 0x18($sp)
/* 26010 80035810 1400B18F */  lw         $s1, 0x14($sp)
/* 26014 80035814 1000B08F */  lw         $s0, 0x10($sp)
/* 26018 80035818 21100000 */  addu       $v0, $zero, $zero
/* 2601C 8003581C 0800E003 */  jr         $ra
/* 26020 80035820 2000BD27 */   addiu     $sp, $sp, 0x20
