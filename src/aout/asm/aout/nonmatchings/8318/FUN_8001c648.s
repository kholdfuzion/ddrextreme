.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c648
/* CE48 8001C648 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* CE4C 8001C64C 1380023C */  lui        $v0, 0x8013
/* CE50 8001C650 1000B0AF */  sw         $s0, 0x10($sp)
/* CE54 8001C654 21808000 */  addu       $s0, $a0, $zero
/* CE58 8001C658 21200000 */  addu       $a0, $zero, $zero
/* CE5C 8001C65C 1800BFAF */  sw         $ra, 0x18($sp)
/* CE60 8001C660 1400B1AF */  sw         $s1, 0x14($sp)
/* CE64 8001C664 5ACB020C */  jal        FUN_800b2d68
/* CE68 8001C668 58AB40A0 */   sb        $zero, -0x54a8($v0)
/* CE6C 8001C66C 47CB020C */  jal        FUN_800b2d1c
/* CE70 8001C670 21200000 */   addu      $a0, $zero, $zero
/* CE74 8001C674 7CAA000C */  jal        vsync_8002a9f0
/* CE78 8001C678 00000000 */   nop
/* CE7C 8001C67C 02CB020C */  jal        FUN_800b2c08
/* CE80 8001C680 00000000 */   nop
/* CE84 8001C684 7CAA000C */  jal        vsync_8002a9f0
/* CE88 8001C688 00000000 */   nop
/* CE8C 8001C68C F8AE020C */  jal        FUN_800abbe0
/* CE90 8001C690 00000000 */   nop
/* CE94 8001C694 05004010 */  beqz       $v0, .L8001C6AC
/* CE98 8001C698 00000000 */   nop
/* CE9C 8001C69C 6618030C */  jal        FUN_800c6198
/* CEA0 8001C6A0 21200000 */   addu      $a0, $zero, $zero
/* CEA4 8001C6A4 6618030C */  jal        FUN_800c6198
/* CEA8 8001C6A8 01000424 */   addiu     $a0, $zero, 1
.L8001C6AC:
/* CEAC 8001C6AC 7470000C */  jal        getcoinslot1_8001c1d0
/* CEB0 8001C6B0 00000000 */   nop
/* CEB4 8001C6B4 09004010 */  beqz       $v0, .L8001C6DC
/* CEB8 8001C6B8 00000000 */   nop
/* CEBC 8001C6BC B8C1020C */  jal        FUN_800b06e0
/* CEC0 8001C6C0 FE000424 */   addiu     $a0, $zero, 0xfe
/* CEC4 8001C6C4 35C5020C */  jal        FUN_800b14d4
/* CEC8 8001C6C8 01000424 */   addiu     $a0, $zero, 1
/* CECC 8001C6CC 4CC5020C */  jal        FUN_800b1530
/* CED0 8001C6D0 FFFF0424 */   addiu     $a0, $zero, -1
/* CED4 8001C6D4 BE710008 */  j          .L8001C6F8
/* CED8 8001C6D8 04001026 */   addiu     $s0, $s0, 4
.L8001C6DC:
/* CEDC 8001C6DC B8C1020C */  jal        FUN_800b06e0
/* CEE0 8001C6E0 FE000424 */   addiu     $a0, $zero, 0xfe
/* CEE4 8001C6E4 35C5020C */  jal        FUN_800b14d4
/* CEE8 8001C6E8 21200000 */   addu      $a0, $zero, $zero
/* CEEC 8001C6EC 4CC5020C */  jal        FUN_800b1530
/* CEF0 8001C6F0 21200000 */   addu      $a0, $zero, $zero
/* CEF4 8001C6F4 04001026 */  addiu      $s0, $s0, 4
.L8001C6F8:
/* CEF8 8001C6F8 0E000524 */  addiu      $a1, $zero, 0xe
/* CEFC 8001C6FC 0F80113C */  lui        $s1, %hi(D_800F0028)
/* CF00 8001C700 28002226 */  addiu      $v0, $s1, %lo(D_800F0028)
/* CF04 8001C704 0100033C */  lui        $v1, 1
/* CF08 8001C708 7C426334 */  ori        $v1, $v1, 0x427c
/* CF0C 8001C70C 01000424 */  addiu      $a0, $zero, 1
.L8001C710:
/* CF10 8001C710 400045A0 */  sb         $a1, 0x40($v0)
/* CF14 8001C714 410045A0 */  sb         $a1, 0x41($v0)
/* CF18 8001C718 420045A0 */  sb         $a1, 0x42($v0)
/* CF1C 8001C71C FFFF8424 */  addiu      $a0, $a0, -1
/* CF20 8001C720 FBFF8104 */  bgez       $a0, .L8001C710
/* CF24 8001C724 21104300 */   addu      $v0, $v0, $v1
/* CF28 8001C728 1580023C */  lui        $v0, %hi(D_8014BA50)
/* CF2C 8001C72C 50BA4224 */  addiu      $v0, $v0, %lo(D_8014BA50)
/* CF30 8001C730 3A004484 */  lh         $a0, 0x3a($v0)
/* CF34 8001C734 BE77000C */  jal        FUN_8001def8
/* CF38 8001C738 00000000 */   nop
/* CF3C 8001C73C 8374000C */  jal        FUN_8001d20c
/* CF40 8001C740 00000000 */   nop
/* CF44 8001C744 C67A000C */  jal        FUN_8001eb18
/* CF48 8001C748 00000000 */   nop
/* CF4C 8001C74C 21200002 */  addu       $a0, $s0, $zero
/* CF50 8001C750 2B000224 */  addiu      $v0, $zero, 0x2b
/* CF54 8001C754 F87E000C */  jal        FUN_8001fbe0
/* CF58 8001C758 280022A6 */   sh        $v0, 0x28($s1)
/* CF5C 8001C75C 1800BF8F */  lw         $ra, 0x18($sp)
/* CF60 8001C760 1400B18F */  lw         $s1, 0x14($sp)
/* CF64 8001C764 1000B08F */  lw         $s0, 0x10($sp)
/* CF68 8001C768 0800E003 */  jr         $ra
/* CF6C 8001C76C 2000BD27 */   addiu     $sp, $sp, 0x20
