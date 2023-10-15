.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab464
/* 9BC64 800AB464 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9BC68 800AB468 1800B2AF */  sw         $s2, 0x18($sp)
/* 9BC6C 800AB46C 2190A000 */  addu       $s2, $a1, $zero
/* 9BC70 800AB470 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BC74 800AB474 2188C000 */  addu       $s1, $a2, $zero
/* 9BC78 800AB478 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9BC7C 800AB47C 08A5020C */  jal        FUN_800a9420
/* 9BC80 800AB480 1000B0AF */   sw        $s0, 0x10($sp)
/* 9BC84 800AB484 0CAF020C */  jal        FUN_800abc30
/* 9BC88 800AB488 21804000 */   addu      $s0, $v0, $zero
/* 9BC8C 800AB48C 11004010 */  beqz       $v0, .L800AB4D4
/* 9BC90 800AB490 0001022E */   sltiu     $v0, $s0, 0x100
/* 9BC94 800AB494 0F004010 */  beqz       $v0, .L800AB4D4
/* 9BC98 800AB498 02000224 */   addiu     $v0, $zero, 2
/* 9BC9C 800AB49C 04004216 */  bne        $s2, $v0, .L800AB4B0
/* 9BCA0 800AB4A0 80181000 */   sll       $v1, $s0, 2
/* 9BCA4 800AB4A4 02002226 */  addiu      $v0, $s1, 2
/* 9BCA8 800AB4A8 2DAD0208 */  j          .L800AB4B4
/* 9BCAC 800AB4AC 21306200 */   addu      $a2, $v1, $v0
.L800AB4B0:
/* 9BCB0 800AB4B0 21307100 */  addu       $a2, $v1, $s1
.L800AB4B4:
/* 9BCB4 800AB4B4 1C80023C */  lui        $v0, %hi(D_801BFE88)
/* 9BCB8 800AB4B8 88FE4224 */  addiu      $v0, $v0, %lo(D_801BFE88)
/* 9BCBC 800AB4BC 00190600 */  sll        $v1, $a2, 4
/* 9BCC0 800AB4C0 21104300 */  addu       $v0, $v0, $v1
/* 9BCC4 800AB4C4 0E004484 */  lh         $a0, 0xe($v0)
/* 9BCC8 800AB4C8 00000000 */  nop
/* 9BCCC 800AB4CC 0200801C */  bgtz       $a0, .L800AB4D8
/* 9BCD0 800AB4D0 2110C000 */   addu      $v0, $a2, $zero
.L800AB4D4:
/* 9BCD4 800AB4D4 FFFF0224 */  addiu      $v0, $zero, -1
.L800AB4D8:
/* 9BCD8 800AB4D8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9BCDC 800AB4DC 1800B28F */  lw         $s2, 0x18($sp)
/* 9BCE0 800AB4E0 1400B18F */  lw         $s1, 0x14($sp)
/* 9BCE4 800AB4E4 1000B08F */  lw         $s0, 0x10($sp)
/* 9BCE8 800AB4E8 0800E003 */  jr         $ra
/* 9BCEC 800AB4EC 2000BD27 */   addiu     $sp, $sp, 0x20
