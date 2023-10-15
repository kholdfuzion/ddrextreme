.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel ATOI_0_OBJ_E0
/* 17538 80026D38 00000482 */  lb         $a0, ($s0)
/* 1753C 80026D3C 629B000C */  jal        todigit
/* 17540 80026D40 01001026 */   addiu     $s0, $s0, 1
/* 17544 80026D44 21184000 */  addu       $v1, $v0, $zero
/* 17548 80026D48 2B107100 */  sltu       $v0, $v1, $s1
/* 1754C 80026D4C 04004010 */  beqz       $v0, .L80026D60
/* 17550 80026D50 18005102 */   mult      $s2, $s1
/* 17554 80026D54 12900000 */  mflo       $s2
/* 17558 80026D58 4E9B0008 */  j          ATOI_0_OBJ_E0
/* 1755C 80026D5C 21904302 */   addu      $s2, $s2, $v1
.L80026D60:
/* 17560 80026D60 18005302 */  mult       $s2, $s3
/* 17564 80026D64 12100000 */  mflo       $v0
.L80026D68:
/* 17568 80026D68 2000BF8F */  lw         $ra, 0x20($sp)
/* 1756C 80026D6C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 17570 80026D70 1800B28F */  lw         $s2, 0x18($sp)
/* 17574 80026D74 1400B18F */  lw         $s1, 0x14($sp)
/* 17578 80026D78 1000B08F */  lw         $s0, 0x10($sp)
/* 1757C 80026D7C 0800E003 */  jr         $ra
/* 17580 80026D80 2800BD27 */   addiu     $sp, $sp, 0x28
/* 17584 80026D84 00000000 */  nop
