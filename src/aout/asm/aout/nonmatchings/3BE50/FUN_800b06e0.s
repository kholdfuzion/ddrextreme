.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b06e0
/* A0EE0 800B06E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A0EE4 800B06E4 0F80023C */  lui        $v0, %hi(D_800EC708)
/* A0EE8 800B06E8 08C7438C */  lw         $v1, %lo(D_800EC708)($v0)
/* A0EEC 800B06EC FF008530 */  andi       $a1, $a0, 0xff
/* A0EF0 800B06F0 0A006014 */  bnez       $v1, .L800B071C
/* A0EF4 800B06F4 1000BFAF */   sw        $ra, 0x10($sp)
/* A0EF8 800B06F8 0F80023C */  lui        $v0, %hi(D_800EC70C)
/* A0EFC 800B06FC 0CC74224 */  addiu      $v0, $v0, %lo(D_800EC70C)
/* A0F00 800B0700 02190500 */  srl        $v1, $a1, 4
/* A0F04 800B0704 80180300 */  sll        $v1, $v1, 2
/* A0F08 800B0708 21186200 */  addu       $v1, $v1, $v0
/* A0F0C 800B070C 0000648C */  lw         $a0, ($v1)
/* A0F10 800B0710 1D80023C */  lui        $v0, %hi(D_801D0050)
/* A0F14 800B0714 1FC5020C */  jal        FUN_800b147c
/* A0F18 800B0718 500045A4 */   sh        $a1, %lo(D_801D0050)($v0)
.L800B071C:
/* A0F1C 800B071C 1000BF8F */  lw         $ra, 0x10($sp)
/* A0F20 800B0720 00000000 */  nop
/* A0F24 800B0724 0800E003 */  jr         $ra
/* A0F28 800B0728 1800BD27 */   addiu     $sp, $sp, 0x18
