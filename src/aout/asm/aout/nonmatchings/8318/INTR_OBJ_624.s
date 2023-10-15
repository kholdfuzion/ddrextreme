.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_624
/* BF88 8001B788 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BF8C 8001B78C 1000B0AF */  sw         $s0, 0x10($sp)
/* BF90 8001B790 0D80103C */  lui        $s0, %hi(D_800D2D60)
/* BF94 8001B794 602D1026 */  addiu      $s0, $s0, %lo(D_800D2D60)
/* BF98 8001B798 1400BFAF */  sw         $ra, 0x14($sp)
/* BF9C 8001B79C 00000296 */  lhu        $v0, ($s0)
/* BFA0 8001B7A0 00000000 */  nop
/* BFA4 8001B7A4 11004014 */  bnez       $v0, .L8001B7EC
/* BFA8 8001B7A8 00000000 */   nop
/* BFAC 8001B7AC 196E000C */  jal        HookEntryInt
/* BFB0 8001B7B0 38000426 */   addiu     $a0, $s0, 0x38
/* BFB4 8001B7B4 0D80043C */  lui        $a0, %hi(D_800D3DF0)
/* BFB8 8001B7B8 F03D848C */  lw         $a0, %lo(D_800D3DF0)($a0)
/* BFBC 8001B7BC 32000396 */  lhu        $v1, 0x32($s0)
/* BFC0 8001B7C0 01000224 */  addiu      $v0, $zero, 1
/* BFC4 8001B7C4 000002A6 */  sh         $v0, ($s0)
/* BFC8 8001B7C8 000083A4 */  sh         $v1, ($a0)
/* BFCC 8001B7CC 0D80033C */  lui        $v1, %hi(D_800D3DF4)
/* BFD0 8001B7D0 F43D638C */  lw         $v1, %lo(D_800D3DF4)($v1)
/* BFD4 8001B7D4 3400028E */  lw         $v0, 0x34($s0)
/* BFD8 8001B7D8 00000000 */  nop
/* BFDC 8001B7DC 216E000C */  jal        FUN_8001b884
/* BFE0 8001B7E0 000062AC */   sw        $v0, ($v1)
/* BFE4 8001B7E4 FC6D0008 */  j          INTR_OBJ_68C
/* BFE8 8001B7E8 21100002 */   addu      $v0, $s0, $zero
.L8001B7EC:
/* BFEC 8001B7EC 21100000 */  addu       $v0, $zero, $zero
