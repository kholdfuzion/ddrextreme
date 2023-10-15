.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a7164
/* 97964 800A7164 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 97968 800A7168 1000B0AF */  sw         $s0, 0x10($sp)
/* 9796C 800A716C 21808000 */  addu       $s0, $a0, $zero
/* 97970 800A7170 01000226 */  addiu      $v0, $s0, 1
/* 97974 800A7174 0200422C */  sltiu      $v0, $v0, 2
/* 97978 800A7178 03004010 */  beqz       $v0, .L800A7188
/* 9797C 800A717C 1400BFAF */   sw        $ra, 0x14($sp)
/* 97980 800A7180 949A020C */  jal        FUN_800a6a50
/* 97984 800A7184 02000424 */   addiu     $a0, $zero, 2
.L800A7188:
/* 97988 800A7188 01000224 */  addiu      $v0, $zero, 1
/* 9798C 800A718C 03000212 */  beq        $s0, $v0, .L800A719C
/* 97990 800A7190 FFFF0224 */   addiu     $v0, $zero, -1
/* 97994 800A7194 04000216 */  bne        $s0, $v0, .L800A71A8
/* 97998 800A7198 01000226 */   addiu     $v0, $s0, 1
.L800A719C:
/* 9799C 800A719C 949A020C */  jal        FUN_800a6a50
/* 979A0 800A71A0 06000424 */   addiu     $a0, $zero, 6
/* 979A4 800A71A4 01000226 */  addiu      $v0, $s0, 1
.L800A71A8:
/* 979A8 800A71A8 0200422C */  sltiu      $v0, $v0, 2
/* 979AC 800A71AC 04004010 */  beqz       $v0, .L800A71C0
/* 979B0 800A71B0 01000224 */   addiu     $v0, $zero, 1
/* 979B4 800A71B4 949A020C */  jal        FUN_800a6a50
/* 979B8 800A71B8 01000424 */   addiu     $a0, $zero, 1
/* 979BC 800A71BC 01000224 */  addiu      $v0, $zero, 1
.L800A71C0:
/* 979C0 800A71C0 03000212 */  beq        $s0, $v0, .L800A71D0
/* 979C4 800A71C4 FFFF0224 */   addiu     $v0, $zero, -1
/* 979C8 800A71C8 03000216 */  bne        $s0, $v0, .L800A71D8
/* 979CC 800A71CC 00000000 */   nop
.L800A71D0:
/* 979D0 800A71D0 949A020C */  jal        FUN_800a6a50
/* 979D4 800A71D4 05000424 */   addiu     $a0, $zero, 5
.L800A71D8:
/* 979D8 800A71D8 1400BF8F */  lw         $ra, 0x14($sp)
/* 979DC 800A71DC 1000B08F */  lw         $s0, 0x10($sp)
/* 979E0 800A71E0 0800E003 */  jr         $ra
/* 979E4 800A71E4 1800BD27 */   addiu     $sp, $sp, 0x18
