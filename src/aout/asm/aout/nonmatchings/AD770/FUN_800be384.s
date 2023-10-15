.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be384
/* AEB84 800BE384 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AEB88 800BE388 1000B0AF */  sw         $s0, 0x10($sp)
/* AEB8C 800BE38C 21808000 */  addu       $s0, $a0, $zero
/* AEB90 800BE390 1800B2AF */  sw         $s2, 0x18($sp)
/* AEB94 800BE394 FFFF1224 */  addiu      $s2, $zero, -1
/* AEB98 800BE398 01000424 */  addiu      $a0, $zero, 1
/* AEB9C 800BE39C FFFF0234 */  ori        $v0, $zero, 0xffff
/* AEBA0 800BE3A0 2000BFAF */  sw         $ra, 0x20($sp)
/* AEBA4 800BE3A4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AEBA8 800BE3A8 1400B1AF */  sw         $s1, 0x14($sp)
/* AEBAC 800BE3AC 000002A6 */  sh         $v0, ($s0)
/* AEBB0 800BE3B0 50500224 */  addiu      $v0, $zero, 0x5050
/* AEBB4 800BE3B4 000002A6 */  sh         $v0, ($s0)
/* AEBB8 800BE3B8 40400224 */  addiu      $v0, $zero, 0x4040
/* AEBBC 800BE3BC 000002A6 */  sh         $v0, ($s0)
/* AEBC0 800BE3C0 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEBC4 800BE3C4 000005A6 */  sh         $a1, ($s0)
/* AEBC8 800BE3C8 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEBCC 800BE3CC F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEBD0 800BE3D0 CD6B000C */  jal        VSync
/* AEBD4 800BE3D4 80801334 */   ori       $s3, $zero, 0x8080
/* AEBD8 800BE3D8 21884000 */  addu       $s1, $v0, $zero
.L800BE3DC:
/* AEBDC 800BE3DC CD6B000C */  jal        VSync
/* AEBE0 800BE3E0 01000424 */   addiu     $a0, $zero, 1
/* AEBE4 800BE3E4 00000396 */  lhu        $v1, ($s0)
/* AEBE8 800BE3E8 00000000 */  nop
/* AEBEC 800BE3EC 80806330 */  andi       $v1, $v1, 0x8080
/* AEBF0 800BE3F0 08007314 */  bne        $v1, $s3, .L800BE414
/* AEBF4 800BE3F4 23205100 */   subu      $a0, $v0, $s1
/* AEBF8 800BE3F8 00000296 */  lhu        $v0, ($s0)
/* AEBFC 800BE3FC 00000000 */  nop
/* AEC00 800BE400 10104230 */  andi       $v0, $v0, 0x1010
/* AEC04 800BE404 07004014 */  bnez       $v0, .L800BE424
/* AEC08 800BE408 1F80053C */   lui       $a1, 0x801f
/* AEC0C 800BE40C 09F90208 */  j          .L800BE424
/* AEC10 800BE410 21900000 */   addu      $s2, $zero, $zero
.L800BE414:
/* AEC14 800BE414 FFFF8230 */  andi       $v0, $a0, 0xffff
/* AEC18 800BE418 0400422C */  sltiu      $v0, $v0, 4
/* AEC1C 800BE41C EFFF4014 */  bnez       $v0, .L800BE3DC
/* AEC20 800BE420 1F80053C */   lui       $a1, %hi(D_801F6FF0)
.L800BE424:
/* AEC24 800BE424 F06FA28C */  lw         $v0, %lo(D_801F6FF0)($a1)
/* AEC28 800BE428 FFFF8330 */  andi       $v1, $a0, 0xffff
/* AEC2C 800BE42C 2A104300 */  slt        $v0, $v0, $v1
/* AEC30 800BE430 02004010 */  beqz       $v0, .L800BE43C
/* AEC34 800BE434 21104002 */   addu      $v0, $s2, $zero
/* AEC38 800BE438 F06FA3AC */  sw         $v1, 0x6ff0($a1)
.L800BE43C:
/* AEC3C 800BE43C 2000BF8F */  lw         $ra, 0x20($sp)
/* AEC40 800BE440 1C00B38F */  lw         $s3, 0x1c($sp)
/* AEC44 800BE444 1800B28F */  lw         $s2, 0x18($sp)
/* AEC48 800BE448 1400B18F */  lw         $s1, 0x14($sp)
/* AEC4C 800BE44C 1000B08F */  lw         $s0, 0x10($sp)
/* AEC50 800BE450 0800E003 */  jr         $ra
/* AEC54 800BE454 2800BD27 */   addiu     $sp, $sp, 0x28
