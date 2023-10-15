.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be924
/* AF124 800BE924 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF128 800BE928 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AF12C 800BE92C 21988000 */  addu       $s3, $a0, $zero
/* AF130 800BE930 1000B0AF */  sw         $s0, 0x10($sp)
/* AF134 800BE934 FEFF1024 */  addiu      $s0, $zero, -2
/* AF138 800BE938 01000424 */  addiu      $a0, $zero, 1
/* AF13C 800BE93C 1800B2AF */  sw         $s2, 0x18($sp)
/* AF140 800BE940 2190C000 */  addu       $s2, $a2, $zero
/* AF144 800BE944 1400B1AF */  sw         $s1, 0x14($sp)
/* AF148 800BE948 2188A000 */  addu       $s1, $a1, $zero
/* AF14C 800BE94C 2400BFAF */  sw         $ra, 0x24($sp)
/* AF150 800BE950 CD6B000C */  jal        VSync
/* AF154 800BE954 2000B4AF */   sw        $s4, 0x20($sp)
/* AF158 800BE958 21A04000 */  addu       $s4, $v0, $zero
.L800BE95C:
/* AF15C 800BE95C CD6B000C */  jal        VSync
/* AF160 800BE960 01000424 */   addiu     $a0, $zero, 1
/* AF164 800BE964 00006396 */  lhu        $v1, ($s3)
/* AF168 800BE968 23205400 */  subu       $a0, $v0, $s4
/* AF16C 800BE96C FFFF6330 */  andi       $v1, $v1, 0xffff
/* AF170 800BE970 26107100 */  xor        $v0, $v1, $s1
/* AF174 800BE974 00804230 */  andi       $v0, $v0, 0x8000
/* AF178 800BE978 09004010 */  beqz       $v0, .L800BE9A0
/* AF17C 800BE97C 00206230 */   andi      $v0, $v1, 0x2000
/* AF180 800BE980 09004010 */  beqz       $v0, .L800BE9A8
/* AF184 800BE984 00000000 */   nop
/* AF188 800BE988 00006296 */  lhu        $v0, ($s3)
/* AF18C 800BE98C 00000000 */  nop
/* AF190 800BE990 26102202 */  xor        $v0, $s1, $v0
/* AF194 800BE994 00804230 */  andi       $v0, $v0, 0x8000
/* AF198 800BE998 08004014 */  bnez       $v0, .L800BE9BC
/* AF19C 800BE99C FFFF1024 */   addiu     $s0, $zero, -1
.L800BE9A0:
/* AF1A0 800BE9A0 6FFA0208 */  j          .L800BE9BC
/* AF1A4 800BE9A4 21800000 */   addu      $s0, $zero, $zero
.L800BE9A8:
/* AF1A8 800BE9A8 04004012 */  beqz       $s2, .L800BE9BC
/* AF1AC 800BE9AC FFFF8230 */   andi      $v0, $a0, 0xffff
/* AF1B0 800BE9B0 2A105200 */  slt        $v0, $v0, $s2
/* AF1B4 800BE9B4 E9FF4014 */  bnez       $v0, .L800BE95C
/* AF1B8 800BE9B8 00000000 */   nop
.L800BE9BC:
/* AF1BC 800BE9BC 1F80053C */  lui        $a1, %hi(D_801F6FF0)
/* AF1C0 800BE9C0 F06FA28C */  lw         $v0, %lo(D_801F6FF0)($a1)
/* AF1C4 800BE9C4 FFFF8330 */  andi       $v1, $a0, 0xffff
/* AF1C8 800BE9C8 2A104300 */  slt        $v0, $v0, $v1
/* AF1CC 800BE9CC 02004010 */  beqz       $v0, .L800BE9D8
/* AF1D0 800BE9D0 21100002 */   addu      $v0, $s0, $zero
/* AF1D4 800BE9D4 F06FA3AC */  sw         $v1, 0x6ff0($a1)
.L800BE9D8:
/* AF1D8 800BE9D8 2400BF8F */  lw         $ra, 0x24($sp)
/* AF1DC 800BE9DC 2000B48F */  lw         $s4, 0x20($sp)
/* AF1E0 800BE9E0 1C00B38F */  lw         $s3, 0x1c($sp)
/* AF1E4 800BE9E4 1800B28F */  lw         $s2, 0x18($sp)
/* AF1E8 800BE9E8 1400B18F */  lw         $s1, 0x14($sp)
/* AF1EC 800BE9EC 1000B08F */  lw         $s0, 0x10($sp)
/* AF1F0 800BE9F0 0800E003 */  jr         $ra
/* AF1F4 800BE9F4 2800BD27 */   addiu     $sp, $sp, 0x28
