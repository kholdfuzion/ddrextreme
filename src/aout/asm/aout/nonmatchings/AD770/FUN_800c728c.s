.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c728c
/* B7A8C 800C728C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B7A90 800C7290 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B7A94 800C7294 F0B74324 */  addiu      $v1, $v0, %lo(D_801FB7F0)
/* B7A98 800C7298 1400BFAF */  sw         $ra, 0x14($sp)
/* B7A9C 800C729C 1000B0AF */  sw         $s0, 0x10($sp)
/* B7AA0 800C72A0 2400628C */  lw         $v0, 0x24($v1)
/* B7AA4 800C72A4 00000000 */  nop
/* B7AA8 800C72A8 4A00401C */  bgtz       $v0, .L800C73D4
/* B7AAC 800C72AC 00000000 */   nop
/* B7AB0 800C72B0 0400708C */  lw         $s0, 4($v1)
/* B7AB4 800C72B4 00000000 */  nop
/* B7AB8 800C72B8 0F00022E */  sltiu      $v0, $s0, 0xf
/* B7ABC 800C72BC 3D004010 */  beqz       $v0, .L800C73B4
/* B7AC0 800C72C0 0180023C */   lui       $v0, %hi(D_80017908)
/* B7AC4 800C72C4 08794224 */  addiu      $v0, $v0, %lo(D_80017908)
/* B7AC8 800C72C8 80181000 */  sll        $v1, $s0, 2
/* B7ACC 800C72CC 21186200 */  addu       $v1, $v1, $v0
/* B7AD0 800C72D0 0000628C */  lw         $v0, ($v1)
/* B7AD4 800C72D4 00000000 */  nop
/* B7AD8 800C72D8 08004000 */  jr         $v0
/* B7ADC 800C72DC 00000000 */   nop
/* B7AE0 800C72E0 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B7AE4 800C72E4 F0B7448C */  lw         $a0, %lo(D_801FB7F0)($v0)
/* B7AE8 800C72E8 110A030C */  jal        FUN_800c2844
/* B7AEC 800C72EC 00000000 */   nop
/* B7AF0 800C72F0 31004014 */  bnez       $v0, .L800C73B8
/* B7AF4 800C72F4 2080023C */   lui       $v0, 0x8020
/* B7AF8 800C72F8 EE1C0308 */  j          .L800C73B8
/* B7AFC 800C72FC 0D001024 */   addiu     $s0, $zero, 0xd
/* B7B00 800C7300 F91C030C */  jal        FUN_800c73e4
/* B7B04 800C7304 00000000 */   nop
/* B7B08 800C7308 ED1C0308 */  j          .L800C73B4
/* B7B0C 800C730C 21804000 */   addu      $s0, $v0, $zero
/* B7B10 800C7310 111E030C */  jal        FUN_800c7844
/* B7B14 800C7314 00000000 */   nop
/* B7B18 800C7318 ED1C0308 */  j          .L800C73B4
/* B7B1C 800C731C 21804000 */   addu      $s0, $v0, $zero
/* B7B20 800C7320 F71E030C */  jal        FUN_800c7bdc
/* B7B24 800C7324 00000000 */   nop
/* B7B28 800C7328 ED1C0308 */  j          .L800C73B4
/* B7B2C 800C732C 21804000 */   addu      $s0, $v0, $zero
/* B7B30 800C7330 AF1F030C */  jal        FUN_800c7ebc
/* B7B34 800C7334 00000000 */   nop
/* B7B38 800C7338 ED1C0308 */  j          .L800C73B4
/* B7B3C 800C733C 21804000 */   addu      $s0, $v0, $zero
/* B7B40 800C7340 E823030C */  jal        FUN_800c8fa0
/* B7B44 800C7344 00000000 */   nop
/* B7B48 800C7348 ED1C0308 */  j          .L800C73B4
/* B7B4C 800C734C 21804000 */   addu      $s0, $v0, $zero
/* B7B50 800C7350 3224030C */  jal        FUN_800c90c8
/* B7B54 800C7354 00000000 */   nop
/* B7B58 800C7358 ED1C0308 */  j          .L800C73B4
/* B7B5C 800C735C 21804000 */   addu      $s0, $v0, $zero
/* B7B60 800C7360 2620030C */  jal        FUN_800c8098
/* B7B64 800C7364 00000000 */   nop
/* B7B68 800C7368 ED1C0308 */  j          .L800C73B4
/* B7B6C 800C736C 21804000 */   addu      $s0, $v0, $zero
/* B7B70 800C7370 F420030C */  jal        FUN_800c83d0
/* B7B74 800C7374 00000000 */   nop
/* B7B78 800C7378 ED1C0308 */  j          .L800C73B4
/* B7B7C 800C737C 21804000 */   addu      $s0, $v0, $zero
/* B7B80 800C7380 2E22030C */  jal        FUN_800c88b8
/* B7B84 800C7384 00000000 */   nop
/* B7B88 800C7388 ED1C0308 */  j          .L800C73B4
/* B7B8C 800C738C 21804000 */   addu      $s0, $v0, $zero
/* B7B90 800C7390 C622030C */  jal        FUN_800c8b18
/* B7B94 800C7394 00000000 */   nop
/* B7B98 800C7398 ED1C0308 */  j          .L800C73B4
/* B7B9C 800C739C 21804000 */   addu      $s0, $v0, $zero
/* B7BA0 800C73A0 5623030C */  jal        FUN_800c8d58
/* B7BA4 800C73A4 00000000 */   nop
/* B7BA8 800C73A8 ED1C0308 */  j          .L800C73B4
/* B7BAC 800C73AC 21804000 */   addu      $s0, $v0, $zero
/* B7BB0 800C73B0 0E001024 */  addiu      $s0, $zero, 0xe
.L800C73B4:
/* B7BB4 800C73B4 2080023C */  lui        $v0, %hi(D_801FB7F0)
.L800C73B8:
/* B7BB8 800C73B8 F0B74324 */  addiu      $v1, $v0, %lo(D_801FB7F0)
/* B7BBC 800C73BC 0400628C */  lw         $v0, 4($v1)
/* B7BC0 800C73C0 00000000 */  nop
/* B7BC4 800C73C4 02005010 */  beq        $v0, $s0, .L800C73D0
/* B7BC8 800C73C8 00000000 */   nop
/* B7BCC 800C73CC 080060AC */  sw         $zero, 8($v1)
.L800C73D0:
/* B7BD0 800C73D0 040070AC */  sw         $s0, 4($v1)
.L800C73D4:
/* B7BD4 800C73D4 1400BF8F */  lw         $ra, 0x14($sp)
/* B7BD8 800C73D8 1000B08F */  lw         $s0, 0x10($sp)
/* B7BDC 800C73DC 0800E003 */  jr         $ra
/* B7BE0 800C73E0 1800BD27 */   addiu     $sp, $sp, 0x18
