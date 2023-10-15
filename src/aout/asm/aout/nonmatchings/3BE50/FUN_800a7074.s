.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7074
/* 97874 800A7074 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97878 800A7078 1000B0AF */  sw         $s0, 0x10($sp)
/* 9787C 800A707C 21808000 */  addu       $s0, $a0, $zero
/* 97880 800A7080 01000226 */  addiu      $v0, $s0, 1
/* 97884 800A7084 0200422C */  sltiu      $v0, $v0, 2
/* 97888 800A7088 03004010 */  beqz       $v0, .L800A7098
/* 9788C 800A708C 1400BFAF */   sw        $ra, 0x14($sp)
/* 97890 800A7090 949A020C */  jal        FUN_800a6a50
/* 97894 800A7094 01000424 */   addiu     $a0, $zero, 1
.L800A7098:
/* 97898 800A7098 01000224 */  addiu      $v0, $zero, 1
/* 9789C 800A709C 03000212 */  beq        $s0, $v0, .L800A70AC
/* 978A0 800A70A0 FFFF0224 */   addiu     $v0, $zero, -1
/* 978A4 800A70A4 03000216 */  bne        $s0, $v0, .L800A70B4
/* 978A8 800A70A8 00000000 */   nop
.L800A70AC:
/* 978AC 800A70AC 949A020C */  jal        FUN_800a6a50
/* 978B0 800A70B0 05000424 */   addiu     $a0, $zero, 5
.L800A70B4:
/* 978B4 800A70B4 1400BF8F */  lw         $ra, 0x14($sp)
/* 978B8 800A70B8 1000B08F */  lw         $s0, 0x10($sp)
/* 978BC 800A70BC 0800E003 */  jr         $ra
/* 978C0 800A70C0 1800BD27 */   addiu     $sp, $sp, 0x18
