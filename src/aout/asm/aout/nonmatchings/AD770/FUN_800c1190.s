.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1190
/* B1990 800C1190 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1994 800C1194 1400BFAF */  sw         $ra, 0x14($sp)
/* B1998 800C1198 1000B0AF */  sw         $s0, 0x10($sp)
/* B199C 800C119C 21808000 */  addu       $s0, $a0, $zero
/* B19A0 800C11A0 0000028E */  lw         $v0, ($s0)
/* B19A4 800C11A4 00000000 */  nop
/* B19A8 800C11A8 05004010 */  beqz       $v0, .L800C11C0
/* B19AC 800C11AC 00000000 */   nop
/* B19B0 800C11B0 25FE020C */  jal        FUN_800bf894
/* B19B4 800C11B4 00000000 */   nop
/* B19B8 800C11B8 73040308 */  j          .L800C11CC
/* B19BC 800C11BC 040002A6 */   sh        $v0, 4($s0)
.L800C11C0:
/* B19C0 800C11C0 20FE020C */  jal        FUN_800bf880
/* B19C4 800C11C4 00000000 */   nop
/* B19C8 800C11C8 040002A6 */  sh         $v0, 4($s0)
.L800C11CC:
/* B19CC 800C11CC 21100000 */  addu       $v0, $zero, $zero
/* B19D0 800C11D0 1400BF8F */  lw         $ra, 0x14($sp)
/* B19D4 800C11D4 1000B08F */  lw         $s0, 0x10($sp)
/* B19D8 800C11D8 0800E003 */  jr         $ra
/* B19DC 800C11DC 1800BD27 */   addiu     $sp, $sp, 0x18
