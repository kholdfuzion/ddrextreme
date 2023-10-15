.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C694C
/* B714C 800C694C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B7150 800C6950 2080083C */  lui        $t0, %hi(D_801FB764)
/* B7154 800C6954 1400B1AF */  sw         $s1, 0x14($sp)
/* B7158 800C6958 64B71125 */  addiu      $s1, $t0, %lo(D_801FB764)
/* B715C 800C695C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B7160 800C6960 1800B2AF */  sw         $s2, 0x18($sp)
/* B7164 800C6964 1000B0AF */  sw         $s0, 0x10($sp)
/* B7168 800C6968 0800228E */  lw         $v0, 8($s1)
/* B716C 800C696C FEFF1224 */  addiu      $s2, $zero, -2
/* B7170 800C6970 1D005210 */  beq        $v0, $s2, .L800C69E8
/* B7174 800C6974 FFFF0324 */   addiu     $v1, $zero, -1
/* B7178 800C6978 B4BC3026 */  addiu      $s0, $s1, -0x434c
/* B717C 800C697C 08000224 */  addiu      $v0, $zero, 8
/* B7180 800C6980 0C0024AE */  sw         $a0, 0xc($s1)
/* B7184 800C6984 1C002426 */  addiu      $a0, $s1, 0x1c
/* B7188 800C6988 100025AE */  sw         $a1, 0x10($s1)
/* B718C 800C698C 140027AE */  sw         $a3, 0x14($s1)
/* B7190 800C6990 180026AE */  sw         $a2, 0x18($s1)
/* B7194 800C6994 64B700AD */  sw         $zero, -0x489c($t0)
/* B7198 800C6998 1400038E */  lw         $v1, 0x14($s0)
/* B719C 800C699C 21282002 */  addu       $a1, $s1, $zero
/* B71A0 800C69A0 040022AE */  sw         $v0, 4($s1)
/* B71A4 800C69A4 080032AE */  sw         $s2, 8($s1)
/* B71A8 800C69A8 01006324 */  addiu      $v1, $v1, 1
/* B71AC 800C69AC FF28030C */  jal        FUN_800ca3fc
/* B71B0 800C69B0 140003AE */   sw        $v1, 0x14($s0)
/* B71B4 800C69B4 1400028E */  lw         $v0, 0x14($s0)
/* B71B8 800C69B8 0800238E */  lw         $v1, 8($s1)
/* B71BC 800C69BC FFFF4224 */  addiu      $v0, $v0, -1
/* B71C0 800C69C0 08007214 */  bne        $v1, $s2, .L800C69E4
/* B71C4 800C69C4 140002AE */   sw        $v0, 0x14($s0)
/* B71C8 800C69C8 21804002 */  addu       $s0, $s2, $zero
.L800C69CC:
/* B71CC 800C69CC 4270000C */  jal        FUN_8001c108
/* B71D0 800C69D0 00000000 */   nop
/* B71D4 800C69D4 0800228E */  lw         $v0, 8($s1)
/* B71D8 800C69D8 00000000 */  nop
/* B71DC 800C69DC FBFF5010 */  beq        $v0, $s0, .L800C69CC
/* B71E0 800C69E0 00000000 */   nop
.L800C69E4:
/* B71E4 800C69E4 0800238E */  lw         $v1, 8($s1)
.L800C69E8:
/* B71E8 800C69E8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B71EC 800C69EC 1800B28F */  lw         $s2, 0x18($sp)
/* B71F0 800C69F0 1400B18F */  lw         $s1, 0x14($sp)
/* B71F4 800C69F4 1000B08F */  lw         $s0, 0x10($sp)
/* B71F8 800C69F8 21106000 */  addu       $v0, $v1, $zero
/* B71FC 800C69FC 0800E003 */  jr         $ra
/* B7200 800C6A00 2000BD27 */   addiu     $sp, $sp, 0x20
