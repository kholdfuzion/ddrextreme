.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0c08
/* B1408 800C0C08 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B140C 800C0C0C 1000BFAF */  sw         $ra, 0x10($sp)
/* B1410 800C0C10 FF008430 */  andi       $a0, $a0, 0xff
/* B1414 800C0C14 FF00A530 */  andi       $a1, $a1, 0xff
/* B1418 800C0C18 FF00C630 */  andi       $a2, $a2, 0xff
/* B141C 800C0C1C 1F80023C */  lui        $v0, %hi(D_801F7098)
/* B1420 800C0C20 98704324 */  addiu      $v1, $v0, %lo(D_801F7098)
/* B1424 800C0C24 987044A0 */  sb         $a0, 0x7098($v0)
/* B1428 800C0C28 010065A0 */  sb         $a1, 1($v1)
/* B142C 800C0C2C 0CFE020C */  jal        FUN_800bf830
/* B1430 800C0C30 020066A0 */   sb        $a2, 2($v1)
/* B1434 800C0C34 1000BF8F */  lw         $ra, 0x10($sp)
/* B1438 800C0C38 00000000 */  nop
/* B143C 800C0C3C 0800E003 */  jr         $ra
/* B1440 800C0C40 1800BD27 */   addiu     $sp, $sp, 0x18
