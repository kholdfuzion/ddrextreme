.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003a7d0
/* 2AFD0 8003A7D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2AFD4 8003A7D4 1000BFAF */  sw         $ra, 0x10($sp)
/* 2AFD8 8003A7D8 7DC4000C */  jal        get_astruct_800311f4
/* 2AFDC 8003A7DC 00000000 */   nop
/* 2AFE0 8003A7E0 21184000 */  addu       $v1, $v0, $zero
/* 2AFE4 8003A7E4 02006484 */  lh         $a0, 2($v1)
/* 2AFE8 8003A7E8 02006294 */  lhu        $v0, 2($v1)
/* 2AFEC 8003A7EC 06008010 */  beqz       $a0, .L8003A808
/* 2AFF0 8003A7F0 01004224 */   addiu     $v0, $v0, 1
/* 2AFF4 8003A7F4 01000224 */  addiu      $v0, $zero, 1
/* 2AFF8 8003A7F8 05008210 */  beq        $a0, $v0, .L8003A810
/* 2AFFC 8003A7FC 00000000 */   nop
/* 2B000 8003A800 08EA0008 */  j          .L8003A820
/* 2B004 8003A804 00000000 */   nop
.L8003A808:
/* 2B008 8003A808 08EA0008 */  j          .L8003A820
/* 2B00C 8003A80C 020062A4 */   sh        $v0, 2($v1)
.L8003A810:
/* 2B010 8003A810 35B3000C */  jal        FUN_8002ccd4
/* 2B014 8003A814 21200000 */   addu      $a0, $zero, $zero
/* 2B018 8003A818 04004014 */  bnez       $v0, .L8003A82C
/* 2B01C 8003A81C 01000224 */   addiu     $v0, $zero, 1
.L8003A820:
/* 2B020 8003A820 7DE9000C */  jal        FUN_8003a5f4
/* 2B024 8003A824 00000000 */   nop
/* 2B028 8003A828 21100000 */  addu       $v0, $zero, $zero
.L8003A82C:
/* 2B02C 8003A82C 1000BF8F */  lw         $ra, 0x10($sp)
/* 2B030 8003A830 00000000 */  nop
/* 2B034 8003A834 0800E003 */  jr         $ra
/* 2B038 8003A838 1800BD27 */   addiu     $sp, $sp, 0x18
