.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c570
/* CD70 8001C570 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* CD74 8001C574 1400B1AF */  sw         $s1, 0x14($sp)
/* CD78 8001C578 0F80113C */  lui        $s1, 0x800f
/* CD7C 8001C57C 2A000224 */  addiu      $v0, $zero, 0x2a
/* CD80 8001C580 1000B0AF */  sw         $s0, 0x10($sp)
/* CD84 8001C584 21808000 */  addu       $s0, $a0, $zero
/* CD88 8001C588 1800BFAF */  sw         $ra, 0x18($sp)
/* CD8C 8001C58C EDC1020C */  jal        FUN_800b07b4
/* CD90 8001C590 280022A6 */   sh        $v0, 0x28($s1)
/* CD94 8001C594 5ACB020C */  jal        FUN_800b2d68
/* CD98 8001C598 21200000 */   addu      $a0, $zero, $zero
/* CD9C 8001C59C 47CB020C */  jal        FUN_800b2d1c
/* CDA0 8001C5A0 21200000 */   addu      $a0, $zero, $zero
/* CDA4 8001C5A4 7CAA000C */  jal        vsync_8002a9f0
/* CDA8 8001C5A8 00000000 */   nop
/* CDAC 8001C5AC F8AE020C */  jal        FUN_800abbe0
/* CDB0 8001C5B0 00000000 */   nop
/* CDB4 8001C5B4 05004010 */  beqz       $v0, .L8001C5CC
/* CDB8 8001C5B8 00000000 */   nop
/* CDBC 8001C5BC 6618030C */  jal        FUN_800c6198
/* CDC0 8001C5C0 21200000 */   addu      $a0, $zero, $zero
/* CDC4 8001C5C4 6618030C */  jal        FUN_800c6198
/* CDC8 8001C5C8 01000424 */   addiu     $a0, $zero, 1
.L8001C5CC:
/* CDCC 8001C5CC 04001026 */  addiu      $s0, $s0, 4
/* CDD0 8001C5D0 0E000524 */  addiu      $a1, $zero, 0xe
/* CDD4 8001C5D4 28002226 */  addiu      $v0, $s1, 0x28
/* CDD8 8001C5D8 0100033C */  lui        $v1, 1
/* CDDC 8001C5DC 7C426334 */  ori        $v1, $v1, 0x427c
/* CDE0 8001C5E0 01000424 */  addiu      $a0, $zero, 1
.L8001C5E4:
/* CDE4 8001C5E4 400045A0 */  sb         $a1, 0x40($v0)
/* CDE8 8001C5E8 410045A0 */  sb         $a1, 0x41($v0)
/* CDEC 8001C5EC 420045A0 */  sb         $a1, 0x42($v0)
/* CDF0 8001C5F0 FFFF8424 */  addiu      $a0, $a0, -1
/* CDF4 8001C5F4 FBFF8104 */  bgez       $a0, .L8001C5E4
/* CDF8 8001C5F8 21104300 */   addu      $v0, $v0, $v1
/* CDFC 8001C5FC 8374000C */  jal        FUN_8001d20c
/* CE00 8001C600 00000000 */   nop
/* CE04 8001C604 02A3000C */  jal        FUN_80028c08
/* CE08 8001C608 00000000 */   nop
/* CE0C 8001C60C E8A9000C */  jal        FUN_8002a7a0
/* CE10 8001C610 21200000 */   addu      $a0, $zero, $zero
/* CE14 8001C614 1380023C */  lui        $v0, %hi(D_80129DA8)
/* CE18 8001C618 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* CE1C 8001C61C 01000324 */  addiu      $v1, $zero, 1
/* CE20 8001C620 B10D43A0 */  sb         $v1, 0xdb1($v0)
/* CE24 8001C624 D39B020C */  jal        FUN_800a6f4c
/* CE28 8001C628 B00D43A0 */   sb        $v1, 0xdb0($v0)
/* CE2C 8001C62C 67C1000C */  jal        FUN_8003059c
/* CE30 8001C630 21200002 */   addu      $a0, $s0, $zero
/* CE34 8001C634 1800BF8F */  lw         $ra, 0x18($sp)
/* CE38 8001C638 1400B18F */  lw         $s1, 0x14($sp)
/* CE3C 8001C63C 1000B08F */  lw         $s0, 0x10($sp)
/* CE40 8001C640 0800E003 */  jr         $ra
/* CE44 8001C644 2000BD27 */   addiu     $sp, $sp, 0x20
