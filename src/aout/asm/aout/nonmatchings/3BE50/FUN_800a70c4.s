.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a70c4
/* 978C4 800A70C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 978C8 800A70C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 978CC 800A70CC 21808000 */  addu       $s0, $a0, $zero
/* 978D0 800A70D0 01000226 */  addiu      $v0, $s0, 1
/* 978D4 800A70D4 0200422C */  sltiu      $v0, $v0, 2
/* 978D8 800A70D8 03004010 */  beqz       $v0, .L800A70E8
/* 978DC 800A70DC 1400BFAF */   sw        $ra, 0x14($sp)
/* 978E0 800A70E0 949A020C */  jal        FUN_800a6a50
/* 978E4 800A70E4 02000424 */   addiu     $a0, $zero, 2
.L800A70E8:
/* 978E8 800A70E8 01000224 */  addiu      $v0, $zero, 1
/* 978EC 800A70EC 03000212 */  beq        $s0, $v0, .L800A70FC
/* 978F0 800A70F0 FFFF0224 */   addiu     $v0, $zero, -1
/* 978F4 800A70F4 03000216 */  bne        $s0, $v0, .L800A7104
/* 978F8 800A70F8 00000000 */   nop
.L800A70FC:
/* 978FC 800A70FC 949A020C */  jal        FUN_800a6a50
/* 97900 800A7100 06000424 */   addiu     $a0, $zero, 6
.L800A7104:
/* 97904 800A7104 1400BF8F */  lw         $ra, 0x14($sp)
/* 97908 800A7108 1000B08F */  lw         $s0, 0x10($sp)
/* 9790C 800A710C 0800E003 */  jr         $ra
/* 97910 800A7110 1800BD27 */   addiu     $sp, $sp, 0x18
