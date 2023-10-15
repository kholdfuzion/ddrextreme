.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C395C
/* B415C 800C395C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B4160 800C3960 2000B0AF */  sw         $s0, 0x20($sp)
/* B4164 800C3964 21808000 */  addu       $s0, $a0, $zero
/* B4168 800C3968 2400B1AF */  sw         $s1, 0x24($sp)
/* B416C 800C396C 21880000 */  addu       $s1, $zero, $zero
/* B4170 800C3970 1000A527 */  addiu      $a1, $sp, 0x10
/* B4174 800C3974 08000624 */  addiu      $a2, $zero, 8
/* B4178 800C3978 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B417C 800C397C 2800B2AF */  sw         $s2, 0x28($sp)
/* B4180 800C3980 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B4184 800C3984 650C030C */  jal        checkseccassette_800c3194
/* B4188 800C3988 F8725224 */   addiu     $s2, $v0, %lo(D_801F72F8)
/* B418C 800C398C 21184000 */  addu       $v1, $v0, $zero
/* B4190 800C3990 01000224 */  addiu      $v0, $zero, 1
/* B4194 800C3994 05000212 */  beq        $s0, $v0, .L800C39AC
/* B4198 800C3998 03000224 */   addiu     $v0, $zero, 3
/* B419C 800C399C 07000212 */  beq        $s0, $v0, .L800C39BC
/* B41A0 800C39A0 00000000 */   nop
/* B41A4 800C39A4 770E0308 */  j          .L800C39DC
/* B41A8 800C39A8 FEFF1124 */   addiu     $s1, $zero, -2
.L800C39AC:
/* B41AC 800C39AC 0A006004 */  bltz       $v1, .L800C39D8
/* B41B0 800C39B0 1000A427 */   addiu     $a0, $sp, 0x10
/* B41B4 800C39B4 720E0308 */  j          .L800C39C8
/* B41B8 800C39B8 50004526 */   addiu     $a1, $s2, 0x50
.L800C39BC:
/* B41BC 800C39BC 06006004 */  bltz       $v1, .L800C39D8
/* B41C0 800C39C0 1000A427 */   addiu     $a0, $sp, 0x10
/* B41C4 800C39C4 B8004526 */  addiu      $a1, $s2, 0xb8
.L800C39C8:
/* B41C8 800C39C8 0905010C */  jal        bcmp
/* B41CC 800C39CC 08000624 */   addiu     $a2, $zero, 8
/* B41D0 800C39D0 03004010 */  beqz       $v0, .L800C39E0
/* B41D4 800C39D4 21102002 */   addu      $v0, $s1, $zero
.L800C39D8:
/* B41D8 800C39D8 FFFF1124 */  addiu      $s1, $zero, -1
.L800C39DC:
/* B41DC 800C39DC 21102002 */  addu       $v0, $s1, $zero
.L800C39E0:
/* B41E0 800C39E0 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B41E4 800C39E4 2800B28F */  lw         $s2, 0x28($sp)
/* B41E8 800C39E8 2400B18F */  lw         $s1, 0x24($sp)
/* B41EC 800C39EC 2000B08F */  lw         $s0, 0x20($sp)
/* B41F0 800C39F0 0800E003 */  jr         $ra
/* B41F4 800C39F4 3000BD27 */   addiu     $sp, $sp, 0x30
