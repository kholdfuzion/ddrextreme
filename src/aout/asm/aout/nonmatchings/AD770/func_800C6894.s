.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C6894
/* B7094 800C6894 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B7098 800C6898 2080083C */  lui        $t0, %hi(D_801FB764)
/* B709C 800C689C 1400B1AF */  sw         $s1, 0x14($sp)
/* B70A0 800C68A0 64B71125 */  addiu      $s1, $t0, %lo(D_801FB764)
/* B70A4 800C68A4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B70A8 800C68A8 1800B2AF */  sw         $s2, 0x18($sp)
/* B70AC 800C68AC 1000B0AF */  sw         $s0, 0x10($sp)
/* B70B0 800C68B0 0800228E */  lw         $v0, 8($s1)
/* B70B4 800C68B4 FEFF1224 */  addiu      $s2, $zero, -2
/* B70B8 800C68B8 1D005210 */  beq        $v0, $s2, .L800C6930
/* B70BC 800C68BC FFFF0324 */   addiu     $v1, $zero, -1
/* B70C0 800C68C0 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B70C4 800C68C4 07000224 */  addiu      $v0, $zero, 7
/* B70C8 800C68C8 0C0024AE */  sw         $a0, 0xc($s1)
/* B70CC 800C68CC 1C002426 */  addiu      $a0, $s1, 0x1c
/* B70D0 800C68D0 100025AE */  sw         $a1, 0x10($s1)
/* B70D4 800C68D4 140027AE */  sw         $a3, 0x14($s1)
/* B70D8 800C68D8 180026AE */  sw         $a2, 0x18($s1)
/* B70DC 800C68DC 64B700AD */  sw         $zero, -0x489c($t0)
/* B70E0 800C68E0 1400038E */  lw         $v1, 0x14($s0)
/* B70E4 800C68E4 21282002 */  addu       $a1, $s1, $zero
/* B70E8 800C68E8 040022AE */  sw         $v0, 4($s1)
/* B70EC 800C68EC 080032AE */  sw         $s2, 8($s1)
/* B70F0 800C68F0 01006324 */  addiu      $v1, $v1, 1
/* B70F4 800C68F4 FF28030C */  jal        FUN_800ca3fc
/* B70F8 800C68F8 140003AE */   sw        $v1, 0x14($s0)
/* B70FC 800C68FC 1400028E */  lw         $v0, 0x14($s0)
/* B7100 800C6900 0800238E */  lw         $v1, 8($s1)
/* B7104 800C6904 FFFF4224 */  addiu      $v0, $v0, -1
/* B7108 800C6908 08007214 */  bne        $v1, $s2, .L800C692C
/* B710C 800C690C 140002AE */   sw        $v0, 0x14($s0)
/* B7110 800C6910 21804002 */  addu       $s0, $s2, $zero
.L800C6914:
/* B7114 800C6914 4270000C */  jal        FUN_8001c108
/* B7118 800C6918 00000000 */   nop
/* B711C 800C691C 0800228E */  lw         $v0, 8($s1)
/* B7120 800C6920 00000000 */  nop
/* B7124 800C6924 FBFF5010 */  beq        $v0, $s0, .L800C6914
/* B7128 800C6928 00000000 */   nop
.L800C692C:
/* B712C 800C692C 0800238E */  lw         $v1, 8($s1)
.L800C6930:
/* B7130 800C6930 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B7134 800C6934 1800B28F */  lw         $s2, 0x18($sp)
/* B7138 800C6938 1400B18F */  lw         $s1, 0x14($sp)
/* B713C 800C693C 1000B08F */  lw         $s0, 0x10($sp)
/* B7140 800C6940 21106000 */  addu       $v0, $v1, $zero
/* B7144 800C6944 0800E003 */  jr         $ra
/* B7148 800C6948 2000BD27 */   addiu     $sp, $sp, 0x20
