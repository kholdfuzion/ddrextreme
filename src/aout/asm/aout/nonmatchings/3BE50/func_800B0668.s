.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B0668
/* A0E68 800B0668 FFFF8430 */  andi       $a0, $a0, 0xffff
/* A0E6C 800B066C 21380000 */  addu       $a3, $zero, $zero
/* A0E70 800B0670 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A0E74 800B0674 B8104524 */  addiu      $a1, $v0, %lo(D_801D10B8)
/* A0E78 800B0678 2130A000 */  addu       $a2, $a1, $zero
.L800B067C:
/* A0E7C 800B067C 0000A294 */  lhu        $v0, ($a1)
/* A0E80 800B0680 00000000 */  nop
/* A0E84 800B0684 12004410 */  beq        $v0, $a0, .L800B06D0
/* A0E88 800B0688 2118C000 */   addu      $v1, $a2, $zero
/* A0E8C 800B068C 1000A524 */  addiu      $a1, $a1, 0x10
/* A0E90 800B0690 0100E724 */  addiu      $a3, $a3, 1
/* A0E94 800B0694 2C01E228 */  slti       $v0, $a3, 0x12c
/* A0E98 800B0698 F8FF4014 */  bnez       $v0, .L800B067C
/* A0E9C 800B069C 10006624 */   addiu     $a2, $v1, 0x10
/* A0EA0 800B06A0 21200000 */  addu       $a0, $zero, $zero
.L800B06A4:
/* A0EA4 800B06A4 0C008010 */  beqz       $a0, .L800B06D8
/* A0EA8 800B06A8 21100000 */   addu      $v0, $zero, $zero
/* A0EAC 800B06AC FFFF0334 */  ori        $v1, $zero, 0xffff
/* A0EB0 800B06B0 070080A0 */  sb         $zero, 7($a0)
/* A0EB4 800B06B4 000083A4 */  sh         $v1, ($a0)
/* A0EB8 800B06B8 020080A4 */  sh         $zero, 2($a0)
/* A0EBC 800B06BC 040080A4 */  sh         $zero, 4($a0)
/* A0EC0 800B06C0 060080A0 */  sb         $zero, 6($a0)
/* A0EC4 800B06C4 080080AC */  sw         $zero, 8($a0)
/* A0EC8 800B06C8 0800E003 */  jr         $ra
/* A0ECC 800B06CC 0C0080AC */   sw        $zero, 0xc($a0)
.L800B06D0:
/* A0ED0 800B06D0 A9C10208 */  j          .L800B06A4
/* A0ED4 800B06D4 2120C000 */   addu      $a0, $a2, $zero
.L800B06D8:
/* A0ED8 800B06D8 0800E003 */  jr         $ra
/* A0EDC 800B06DC FFFF0224 */   addiu     $v0, $zero, -1
