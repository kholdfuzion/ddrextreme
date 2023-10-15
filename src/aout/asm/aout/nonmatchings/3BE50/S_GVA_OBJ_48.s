.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_48
/* AA29C 800B9A9C FFFF0224 */  addiu      $v0, $zero, -1
/* AA2A0 800B9AA0 DF002212 */  beq        $s1, $v0, .L800B9E20
/* AA2A4 800B9AA4 21300000 */   addu      $a2, $zero, $zero
/* AA2A8 800B9AA8 00191100 */  sll        $v1, $s1, 4
/* AA2AC 800B9AAC 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* AA2B0 800B9AB0 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* AA2B4 800B9AB4 40401100 */  sll        $t0, $s1, 1
/* AA2B8 800B9AB8 21186200 */  addu       $v1, $v1, $v0
/* AA2BC 800B9ABC 00006594 */  lhu        $a1, ($v1)
/* AA2C0 800B9AC0 02006794 */  lhu        $a3, 2($v1)
/* AA2C4 800B9AC4 0080A230 */  andi       $v0, $a1, 0x8000
/* AA2C8 800B9AC8 34004010 */  beqz       $v0, S_GVA_OBJ_148
/* AA2CC 800B9ACC C0901100 */   sll       $s2, $s1, 3
/* AA2D0 800B9AD0 00F0A330 */  andi       $v1, $a1, 0xf000
/* AA2D4 800B9AD4 00B00234 */  ori        $v0, $zero, 0xb000
/* AA2D8 800B9AD8 28006210 */  beq        $v1, $v0, .L800B9B7C
/* AA2DC 800B9ADC 2A104300 */   slt       $v0, $v0, $v1
/* AA2E0 800B9AE0 11004014 */  bnez       $v0, .L800B9B28
/* AA2E4 800B9AE4 00D00234 */   ori       $v0, $zero, 0xd000
/* AA2E8 800B9AE8 00900234 */  ori        $v0, $zero, 0x9000
/* AA2EC 800B9AEC 1F006210 */  beq        $v1, $v0, .L800B9B6C
/* AA2F0 800B9AF0 2A104300 */   slt       $v0, $v0, $v1
/* AA2F4 800B9AF4 08004014 */  bnez       $v0, .L800B9B18
/* AA2F8 800B9AF8 00A00234 */   ori       $v0, $zero, 0xa000
/* AA2FC 800B9AFC 00800234 */  ori        $v0, $zero, 0x8000
/* AA300 800B9B00 18006210 */  beq        $v1, $v0, .L800B9B64
/* AA304 800B9B04 00000000 */   nop
/* AA308 800B9B08 E7E60208 */  j          S_GVA_OBJ_148
/* AA30C 800B9B0C FF0FA530 */   andi      $a1, $a1, 0xfff
.L800B9B10:
/* AA310 800B9B10 A7E60208 */  j          S_GVA_OBJ_48
/* AA314 800B9B14 21886000 */   addu      $s1, $v1, $zero
.L800B9B18:
/* AA318 800B9B18 16006210 */  beq        $v1, $v0, .L800B9B74
/* AA31C 800B9B1C 00000000 */   nop
/* AA320 800B9B20 E7E60208 */  j          S_GVA_OBJ_148
/* AA324 800B9B24 FF0FA530 */   andi      $a1, $a1, 0xfff
.L800B9B28:
/* AA328 800B9B28 18006210 */  beq        $v1, $v0, .L800B9B8C
/* AA32C 800B9B2C 2A104300 */   slt       $v0, $v0, $v1
/* AA330 800B9B30 06004014 */  bnez       $v0, .L800B9B4C
/* AA334 800B9B34 00E00234 */   ori       $v0, $zero, 0xe000
/* AA338 800B9B38 00C00234 */  ori        $v0, $zero, 0xc000
/* AA33C 800B9B3C 11006210 */  beq        $v1, $v0, .L800B9B84
/* AA340 800B9B40 00000000 */   nop
/* AA344 800B9B44 E7E60208 */  j          S_GVA_OBJ_148
/* AA348 800B9B48 FF0FA530 */   andi      $a1, $a1, 0xfff
.L800B9B4C:
/* AA34C 800B9B4C 11006210 */  beq        $v1, $v0, .L800B9B94
/* AA350 800B9B50 00F00234 */   ori       $v0, $zero, 0xf000
/* AA354 800B9B54 0F006210 */  beq        $v1, $v0, .L800B9B94
/* AA358 800B9B58 00000000 */   nop
/* AA35C 800B9B5C E7E60208 */  j          S_GVA_OBJ_148
/* AA360 800B9B60 FF0FA530 */   andi      $a1, $a1, 0xfff
.L800B9B64:
/* AA364 800B9B64 E6E60208 */  j          S_GVA_OBJ_144
/* AA368 800B9B68 01000624 */   addiu     $a2, $zero, 1
.L800B9B6C:
/* AA36C 800B9B6C E6E60208 */  j          S_GVA_OBJ_144
/* AA370 800B9B70 02000624 */   addiu     $a2, $zero, 2
.L800B9B74:
/* AA374 800B9B74 E6E60208 */  j          S_GVA_OBJ_144
/* AA378 800B9B78 03000624 */   addiu     $a2, $zero, 3
.L800B9B7C:
/* AA37C 800B9B7C E6E60208 */  j          S_GVA_OBJ_144
/* AA380 800B9B80 04000624 */   addiu     $a2, $zero, 4
.L800B9B84:
/* AA384 800B9B84 E6E60208 */  j          S_GVA_OBJ_144
/* AA388 800B9B88 05000624 */   addiu     $a2, $zero, 5
.L800B9B8C:
/* AA38C 800B9B8C E6E60208 */  j          S_GVA_OBJ_144
/* AA390 800B9B90 06000624 */   addiu     $a2, $zero, 6
.L800B9B94:
/* AA394 800B9B94 07000624 */  addiu      $a2, $zero, 7
