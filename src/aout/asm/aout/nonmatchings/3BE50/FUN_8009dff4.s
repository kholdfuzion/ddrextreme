.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009dff4
/* 8E7F4 8009DFF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 8E7F8 8009DFF8 1000B0AF */  sw         $s0, 0x10($sp)
/* 8E7FC 8009DFFC 21808000 */  addu       $s0, $a0, $zero
/* 8E800 8009E000 21280000 */  addu       $a1, $zero, $zero
/* 8E804 8009E004 1400BFAF */  sw         $ra, 0x14($sp)
/* 8E808 8009E008 F6A2000C */  jal        memset
/* 8E80C 8009E00C 0C000624 */   addiu     $a2, $zero, 0xc
/* 8E810 8009E010 0F80033C */  lui        $v1, %hi(D_800F0048)
/* 8E814 8009E014 48006380 */  lb         $v1, %lo(D_800F0048)($v1)
/* 8E818 8009E018 01000224 */  addiu      $v0, $zero, 1
/* 8E81C 8009E01C 03006214 */  bne        $v1, $v0, .L8009E02C
/* 8E820 8009E020 02000224 */   addiu     $v0, $zero, 2
/* 8E824 8009E024 0E780208 */  j          .L8009E038
/* 8E828 8009E028 56000424 */   addiu     $a0, $zero, 0x56
.L8009E02C:
/* 8E82C 8009E02C 07006214 */  bne        $v1, $v0, .L8009E04C
/* 8E830 8009E030 5A000424 */   addiu     $a0, $zero, 0x5a
/* 8E834 8009E034 55000424 */  addiu      $a0, $zero, 0x55
.L8009E038:
/* 8E838 8009E038 FFFF0524 */  addiu      $a1, $zero, -1
/* 8E83C 8009E03C 8876000C */  jal        FUN_8001da20
/* 8E840 8009E040 FFFF0624 */   addiu     $a2, $zero, -1
/* 8E844 8009E044 17780208 */  j          .L8009E05C
/* 8E848 8009E048 0F80023C */   lui       $v0, 0x800f
.L8009E04C:
/* 8E84C 8009E04C FFFF0524 */  addiu      $a1, $zero, -1
/* 8E850 8009E050 8876000C */  jal        FUN_8001da20
/* 8E854 8009E054 FFFF0624 */   addiu     $a2, $zero, -1
/* 8E858 8009E058 0F80023C */  lui        $v0, %hi(D_800F001C)
.L8009E05C:
/* 8E85C 8009E05C 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 8E860 8009E060 1400BF8F */  lw         $ra, 0x14($sp)
/* 8E864 8009E064 FFFF0324 */  addiu      $v1, $zero, -1
/* 8E868 8009E068 040003AE */  sw         $v1, 4($s0)
/* 8E86C 8009E06C 000004AE */  sw         $a0, ($s0)
/* 8E870 8009E070 1000B08F */  lw         $s0, 0x10($sp)
/* 8E874 8009E074 0800E003 */  jr         $ra
/* 8E878 8009E078 1800BD27 */   addiu     $sp, $sp, 0x18
