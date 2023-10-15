.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1BAC
/* A390 80019B90 06002586 */  lh         $a1, 6($s1)
/* A394 80019B94 06002396 */  lhu        $v1, 6($s1)
/* A398 80019B98 0B00A004 */  bltz       $a1, .L80019BC8
/* A39C 80019B9C 040024A6 */   sh        $a0, 4($s1)
/* A3A0 80019BA0 21206000 */  addu       $a0, $v1, $zero
/* A3A4 80019BA4 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* A3A8 80019BA8 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* A3AC 80019BAC 0D80033C */  lui        $v1, %hi(D_800D2B9E)
/* A3B0 80019BB0 9E2B6394 */  lhu        $v1, %lo(D_800D2B9E)($v1)
/* A3B4 80019BB4 2A104500 */  slt        $v0, $v0, $a1
/* A3B8 80019BB8 05004010 */  beqz       $v0, .L80019BD0
/* A3BC 80019BBC 00140400 */   sll       $v0, $a0, 0x10
/* A3C0 80019BC0 F3660008 */  j          SYS_OBJ_1BE8
/* A3C4 80019BC4 21206000 */   addu      $a0, $v1, $zero
.L80019BC8:
/* A3C8 80019BC8 21200000 */  addu       $a0, $zero, $zero
