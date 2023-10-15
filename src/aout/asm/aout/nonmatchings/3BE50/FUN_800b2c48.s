.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2c48
/* A3448 800B2C48 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A344C 800B2C4C 1400B1AF */  sw         $s1, 0x14($sp)
/* A3450 800B2C50 1E80113C */  lui        $s1, %hi(D_801E0764)
/* A3454 800B2C54 64072226 */  addiu      $v0, $s1, %lo(D_801E0764)
/* A3458 800B2C58 1800BFAF */  sw         $ra, 0x18($sp)
/* A345C 800B2C5C 1000B0AF */  sw         $s0, 0x10($sp)
/* A3460 800B2C60 02004390 */  lbu        $v1, 2($v0)
/* A3464 800B2C64 00000000 */  nop
/* A3468 800B2C68 13006010 */  beqz       $v1, .L800B2CB8
/* A346C 800B2C6C 21808000 */   addu      $s0, $a0, $zero
/* A3470 800B2C70 97000224 */  addiu      $v0, $zero, 0x97
/* A3474 800B2C74 10000212 */  beq        $s0, $v0, .L800B2CB8
/* A3478 800B2C78 9700022E */   sltiu     $v0, $s0, 0x97
/* A347C 800B2C7C 0E004010 */  beqz       $v0, .L800B2CB8
/* A3480 800B2C80 00000000 */   nop
/* A3484 800B2C84 2373000C */  jal        FUN_8001cc8c
/* A3488 800B2C88 00000000 */   nop
/* A348C 800B2C8C 0A004014 */  bnez       $v0, .L800B2CB8
/* A3490 800B2C90 1E80063C */   lui       $a2, %hi(D_801E0760)
/* A3494 800B2C94 FFFF0532 */  andi       $a1, $s0, 0xffff
/* A3498 800B2C98 0001023C */  lui        $v0, 0x100
/* A349C 800B2C9C 2528A200 */  or         $a1, $a1, $v0
/* A34A0 800B2CA0 64072392 */  lbu        $v1, 0x764($s1)
/* A34A4 800B2CA4 6007C48C */  lw         $a0, %lo(D_801E0760)($a2)
/* A34A8 800B2CA8 7F006330 */  andi       $v1, $v1, 0x7f
/* A34AC 800B2CAC 001C0300 */  sll        $v1, $v1, 0x10
/* A34B0 800B2CB0 FED5020C */  jal        FUN_800b57f8
/* A34B4 800B2CB4 25286500 */   or        $a1, $v1, $a1
.L800B2CB8:
/* A34B8 800B2CB8 1800BF8F */  lw         $ra, 0x18($sp)
/* A34BC 800B2CBC 1400B18F */  lw         $s1, 0x14($sp)
/* A34C0 800B2CC0 1000B08F */  lw         $s0, 0x10($sp)
/* A34C4 800B2CC4 0800E003 */  jr         $ra
/* A34C8 800B2CC8 2000BD27 */   addiu     $sp, $sp, 0x20
