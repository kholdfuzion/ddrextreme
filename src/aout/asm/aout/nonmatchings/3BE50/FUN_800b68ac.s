.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b68ac
/* A70AC 800B68AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A70B0 800B68B0 1400B1AF */  sw         $s1, 0x14($sp)
/* A70B4 800B68B4 21888000 */  addu       $s1, $a0, $zero
/* A70B8 800B68B8 1800BFAF */  sw         $ra, 0x18($sp)
/* A70BC 800B68BC AE6C000C */  jal        CheckCallback
/* A70C0 800B68C0 1000B0AF */   sw        $s0, 0x10($sp)
/* A70C4 800B68C4 0D004014 */  bnez       $v0, .L800B68FC
/* A70C8 800B68C8 022C1100 */   srl       $a1, $s1, 0x10
/* A70CC 800B68CC 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A70D0 800B68D0 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A70D4 800B68D4 00000000 */  nop
/* A70D8 800B68D8 03004014 */  bnez       $v0, .L800B68E8
/* A70DC 800B68DC 00000000 */   nop
/* A70E0 800B68E0 1D6E000C */  jal        FUN_8001b874
/* A70E4 800B68E4 00000000 */   nop
.L800B68E8:
/* A70E8 800B68E8 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A70EC 800B68EC 00000000 */  nop
/* A70F0 800B68F0 01004224 */  addiu      $v0, $v0, 1
/* A70F4 800B68F4 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A70F8 800B68F8 022C1100 */  srl        $a1, $s1, 0x10
.L800B68FC:
/* A70FC 800B68FC FFFF2432 */  andi       $a0, $s1, 0xffff
/* A7100 800B6900 DCCE020C */  jal        FUN_800b3b70
/* A7104 800B6904 7F00A530 */   andi      $a1, $a1, 0x7f
/* A7108 800B6908 AE6C000C */  jal        CheckCallback
/* A710C 800B690C 00000000 */   nop
/* A7110 800B6910 0B004014 */  bnez       $v0, .L800B6940
/* A7114 800B6914 1E80103C */   lui       $s0, %hi(D_801E07B0)
/* A7118 800B6918 B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A711C 800B691C 01000224 */  addiu      $v0, $zero, 1
/* A7120 800B6920 03006214 */  bne        $v1, $v0, .L800B6930
/* A7124 800B6924 00000000 */   nop
/* A7128 800B6928 216E000C */  jal        FUN_8001b884
/* A712C 800B692C 00000000 */   nop
.L800B6930:
/* A7130 800B6930 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A7134 800B6934 00000000 */  nop
/* A7138 800B6938 FFFF4224 */  addiu      $v0, $v0, -1
/* A713C 800B693C B00702A2 */  sb         $v0, 0x7b0($s0)
.L800B6940:
/* A7140 800B6940 1800BF8F */  lw         $ra, 0x18($sp)
/* A7144 800B6944 1400B18F */  lw         $s1, 0x14($sp)
/* A7148 800B6948 1000B08F */  lw         $s0, 0x10($sp)
/* A714C 800B694C 0800E003 */  jr         $ra
/* A7150 800B6950 2000BD27 */   addiu     $sp, $sp, 0x20
