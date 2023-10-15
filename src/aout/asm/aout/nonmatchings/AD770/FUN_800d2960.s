.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800d2960
/* C3160 800D2960 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C3164 800D2964 2080023C */  lui        $v0, %hi(D_801FBD10)
/* C3168 800D2968 2400B1AF */  sw         $s1, 0x24($sp)
/* C316C 800D296C 10BD5124 */  addiu      $s1, $v0, %lo(D_801FBD10)
/* C3170 800D2970 2C00BFAF */  sw         $ra, 0x2c($sp)
/* C3174 800D2974 2800B2AF */  sw         $s2, 0x28($sp)
/* C3178 800D2978 2000B0AF */  sw         $s0, 0x20($sp)
/* C317C 800D297C DF112392 */  lbu        $v1, 0x11df($s1)
/* C3180 800D2980 00000000 */  nop
/* C3184 800D2984 16006014 */  bnez       $v1, .L800D29E0
/* C3188 800D2988 21908000 */   addu      $s2, $a0, $zero
/* C318C 800D298C 1000B027 */  addiu      $s0, $sp, 0x10
/* C3190 800D2990 21200002 */  addu       $a0, $s0, $zero
/* C3194 800D2994 21280000 */  addu       $a1, $zero, $zero
/* C3198 800D2998 F6A2000C */  jal        memset
/* C319C 800D299C 0C000624 */   addiu     $a2, $zero, 0xc
/* C31A0 800D29A0 21200000 */  addu       $a0, $zero, $zero
/* C31A4 800D29A4 21280002 */  addu       $a1, $s0, $zero
/* C31A8 800D29A8 BB000224 */  addiu      $v0, $zero, 0xbb
/* C31AC 800D29AC 031A1200 */  sra        $v1, $s2, 8
/* C31B0 800D29B0 1000A2A3 */  sb         $v0, 0x10($sp)
/* C31B4 800D29B4 01000224 */  addiu      $v0, $zero, 1
/* C31B8 800D29B8 1200A3A3 */  sb         $v1, 0x12($sp)
/* C31BC 800D29BC 1300B2A3 */  sb         $s2, 0x13($sp)
/* C31C0 800D29C0 DF1122A2 */  sb         $v0, 0x11df($s1)
/* C31C4 800D29C4 E01120AE */  sw         $zero, 0x11e0($s1)
/* C31C8 800D29C8 E41120AE */  sw         $zero, 0x11e4($s1)
/* C31CC 800D29CC E81120AE */  sw         $zero, 0x11e8($s1)
/* C31D0 800D29D0 AC41030C */  jal        FUN_800d06b0
/* C31D4 800D29D4 00000000 */   nop
/* C31D8 800D29D8 794A0308 */  j          .L800D29E4
/* C31DC 800D29DC 00000000 */   nop
.L800D29E0:
/* C31E0 800D29E0 FBFF0224 */  addiu      $v0, $zero, -5
.L800D29E4:
/* C31E4 800D29E4 2C00BF8F */  lw         $ra, 0x2c($sp)
/* C31E8 800D29E8 2800B28F */  lw         $s2, 0x28($sp)
/* C31EC 800D29EC 2400B18F */  lw         $s1, 0x24($sp)
/* C31F0 800D29F0 2000B08F */  lw         $s0, 0x20($sp)
/* C31F4 800D29F4 0800E003 */  jr         $ra
/* C31F8 800D29F8 3000BD27 */   addiu     $sp, $sp, 0x30
