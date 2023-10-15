.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0544
/* A0D44 800B0544 FFFF0434 */  ori        $a0, $zero, 0xffff
/* A0D48 800B0548 1D80023C */  lui        $v0, %hi(D_801D2378)
/* A0D4C 800B054C 78234224 */  addiu      $v0, $v0, %lo(D_801D2378)
/* A0D50 800B0550 21180000 */  addu       $v1, $zero, $zero
.L800B0554:
/* A0D54 800B0554 070040A0 */  sb         $zero, 7($v0)
/* A0D58 800B0558 000044A4 */  sh         $a0, ($v0)
/* A0D5C 800B055C 020040A4 */  sh         $zero, 2($v0)
/* A0D60 800B0560 040040A4 */  sh         $zero, 4($v0)
/* A0D64 800B0564 060040A0 */  sb         $zero, 6($v0)
/* A0D68 800B0568 080040AC */  sw         $zero, 8($v0)
/* A0D6C 800B056C 0C0040AC */  sw         $zero, 0xc($v0)
/* A0D70 800B0570 FFFF6324 */  addiu      $v1, $v1, -1
/* A0D74 800B0574 F7FF6104 */  bgez       $v1, .L800B0554
/* A0D78 800B0578 10004224 */   addiu     $v0, $v0, 0x10
/* A0D7C 800B057C 0800E003 */  jr         $ra
/* A0D80 800B0580 00000000 */   nop
