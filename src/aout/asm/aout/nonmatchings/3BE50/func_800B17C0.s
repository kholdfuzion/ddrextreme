.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B17C0
/* A1FC0 800B17C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A1FC4 800B17C4 1000A4AF */  sw         $a0, 0x10($sp)
/* A1FC8 800B17C8 21200000 */  addu       $a0, $zero, $zero
/* A1FCC 800B17CC 07000524 */  addiu      $a1, $zero, 7
/* A1FD0 800B17D0 1000A627 */  addiu      $a2, $sp, 0x10
/* A1FD4 800B17D4 1800BFAF */  sw         $ra, 0x18($sp)
/* A1FD8 800B17D8 21FD020C */  jal        FUN_800bf484
/* A1FDC 800B17DC 21380000 */   addu      $a3, $zero, $zero
/* A1FE0 800B17E0 02004014 */  bnez       $v0, .L800B17EC
/* A1FE4 800B17E4 FFFF0224 */   addiu     $v0, $zero, -1
/* A1FE8 800B17E8 1400A297 */  lhu        $v0, 0x14($sp)
.L800B17EC:
/* A1FEC 800B17EC 1800BF8F */  lw         $ra, 0x18($sp)
/* A1FF0 800B17F0 00000000 */  nop
/* A1FF4 800B17F4 0800E003 */  jr         $ra
/* A1FF8 800B17F8 2000BD27 */   addiu     $sp, $sp, 0x20
