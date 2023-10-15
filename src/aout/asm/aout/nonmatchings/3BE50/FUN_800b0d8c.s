.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0d8c
/* A158C 800B0D8C 1D80033C */  lui        $v1, %hi(D_801D2388)
/* A1590 800B0D90 1D80043C */  lui        $a0, %hi(D_801D238C)
/* A1594 800B0D94 8823658C */  lw         $a1, %lo(D_801D2388)($v1)
/* A1598 800B0D98 8C23828C */  lw         $v0, %lo(D_801D238C)($a0)
/* A159C 800B0D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A15A0 800B0DA0 0500A210 */  beq        $a1, $v0, .L800B0DB8
/* A15A4 800B0DA4 1000BFAF */   sw        $ra, 0x10($sp)
/* A15A8 800B0DA8 1D80023C */  lui        $v0, %hi(D_801D24A8)
/* A15AC 800B0DAC A824448C */  lw         $a0, %lo(D_801D24A8)($v0)
/* A15B0 800B0DB0 BFC2020C */  jal        ChangeTh
/* A15B4 800B0DB4 00000000 */   nop
.L800B0DB8:
/* A15B8 800B0DB8 1000BF8F */  lw         $ra, 0x10($sp)
/* A15BC 800B0DBC 00000000 */  nop
/* A15C0 800B0DC0 0800E003 */  jr         $ra
/* A15C4 800B0DC4 1800BD27 */   addiu     $sp, $sp, 0x18
