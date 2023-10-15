.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_20F8
/* A8DC 8001A0DC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A8E0 8001A0E0 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A8E4 8001A0E4 21988000 */  addu       $s3, $a0, $zero
/* A8E8 8001A0E8 1000B0AF */  sw         $s0, 0x10($sp)
/* A8EC 8001A0EC 2180A000 */  addu       $s0, $a1, $zero
/* A8F0 8001A0F0 1400B1AF */  sw         $s1, 0x14($sp)
/* A8F4 8001A0F4 2188C000 */  addu       $s1, $a2, $zero
/* A8F8 8001A0F8 1800B2AF */  sw         $s2, 0x18($sp)
/* A8FC 8001A0FC 2000BFAF */  sw         $ra, 0x20($sp)
/* A900 8001A100 196A000C */  jal        SYS_OBJ_2880
/* A904 8001A104 2190E000 */   addu      $s2, $a3, $zero
/* A908 8001A108 4A680008 */  j          SYS_OBJ_2144
/* A90C 8001A10C 00000000 */   nop
.L8001A110:
/* A910 8001A110 266A000C */  jal        SYS_OBJ_28B4
/* A914 8001A114 00000000 */   nop
/* A918 8001A118 95004014 */  bnez       $v0, SYS_OBJ_238C
/* A91C 8001A11C FFFF0224 */   addiu     $v0, $zero, -1
/* A920 8001A120 E368000C */  jal        SYS_OBJ_23A8
/* A924 8001A124 00000000 */   nop
