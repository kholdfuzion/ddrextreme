.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1B44
/* A328 80019B28 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A32C 80019B2C 1400B1AF */  sw         $s1, 0x14($sp)
/* A330 80019B30 21888000 */  addu       $s1, $a0, $zero
/* A334 80019B34 1800B2AF */  sw         $s2, 0x18($sp)
/* A338 80019B38 2190A000 */  addu       $s2, $a1, $zero
/* A33C 80019B3C 2800BFAF */  sw         $ra, 0x28($sp)
/* A340 80019B40 2400B5AF */  sw         $s5, 0x24($sp)
/* A344 80019B44 2000B4AF */  sw         $s4, 0x20($sp)
/* A348 80019B48 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A34C 80019B4C 196A000C */  jal        SYS_OBJ_2880
/* A350 80019B50 1000B0AF */   sw        $s0, 0x10($sp)
/* A354 80019B54 04002586 */  lh         $a1, 4($s1)
/* A358 80019B58 04002396 */  lhu        $v1, 4($s1)
/* A35C 80019B5C 0B00A004 */  bltz       $a1, .L80019B8C
/* A360 80019B60 21A80000 */   addu      $s5, $zero, $zero
/* A364 80019B64 21206000 */  addu       $a0, $v1, $zero
/* A368 80019B68 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* A36C 80019B6C 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* A370 80019B70 0D80033C */  lui        $v1, %hi(D_800D2B9C)
/* A374 80019B74 9C2B6394 */  lhu        $v1, %lo(D_800D2B9C)($v1)
/* A378 80019B78 2A104500 */  slt        $v0, $v0, $a1
/* A37C 80019B7C 04004010 */  beqz       $v0, SYS_OBJ_1BAC
/* A380 80019B80 00000000 */   nop
/* A384 80019B84 E4660008 */  j          SYS_OBJ_1BAC
/* A388 80019B88 21206000 */   addu      $a0, $v1, $zero
.L80019B8C:
/* A38C 80019B8C 21200000 */  addu       $a0, $zero, $zero
