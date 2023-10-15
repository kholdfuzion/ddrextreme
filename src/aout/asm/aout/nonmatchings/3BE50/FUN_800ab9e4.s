.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab9e4
/* 9C1E4 800AB9E4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C1E8 800AB9E8 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C1EC 800AB9EC 21880000 */  addu       $s1, $zero, $zero
/* 9C1F0 800AB9F0 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C1F4 800AB9F4 1800BFAF */  sw         $ra, 0x18($sp)
/* 9C1F8 800AB9F8 0FA2020C */  jal        FUN_800a883c
/* 9C1FC 800AB9FC 2180A000 */   addu      $s0, $a1, $zero
/* 9C200 800ABA00 21284000 */  addu       $a1, $v0, $zero
/* 9C204 800ABA04 0300A014 */  bnez       $a1, .L800ABA14
/* 9C208 800ABA08 0200062A */   slti      $a2, $s0, 2
/* 9C20C 800ABA0C A2AE0208 */  j          .L800ABA88
/* 9C210 800ABA10 21100000 */   addu      $v0, $zero, $zero
.L800ABA14:
/* 9C214 800ABA14 02000724 */  addiu      $a3, $zero, 2
/* 9C218 800ABA18 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9C21C 800ABA1C B8FB4324 */  addiu      $v1, $v0, %lo(D_801BFBB8)
/* 9C220 800ABA20 1D000424 */  addiu      $a0, $zero, 0x1d
.L800ABA24:
/* 9C224 800ABA24 1400628C */  lw         $v0, 0x14($v1)
/* 9C228 800ABA28 00000000 */  nop
/* 9C22C 800ABA2C 1200A214 */  bne        $a1, $v0, .L800ABA78
/* 9C230 800ABA30 00000000 */   nop
/* 9C234 800ABA34 0F006280 */  lb         $v0, 0xf($v1)
/* 9C238 800ABA38 0B000006 */  bltz       $s0, .L800ABA68
/* 9C23C 800ABA3C 00000000 */   nop
/* 9C240 800ABA40 0500C014 */  bnez       $a2, .L800ABA58
/* 9C244 800ABA44 00000000 */   nop
/* 9C248 800ABA48 05000712 */  beq        $s0, $a3, .L800ABA60
/* 9C24C 800ABA4C 02004238 */   xori      $v0, $v0, 2
/* 9C250 800ABA50 9BAE0208 */  j          .L800ABA6C
/* 9C254 800ABA54 21100000 */   addu      $v0, $zero, $zero
.L800ABA58:
/* 9C258 800ABA58 9BAE0208 */  j          .L800ABA6C
/* 9C25C 800ABA5C 0200422C */   sltiu     $v0, $v0, 2
.L800ABA60:
/* 9C260 800ABA60 9BAE0208 */  j          .L800ABA6C
/* 9C264 800ABA64 0100422C */   sltiu     $v0, $v0, 1
.L800ABA68:
/* 9C268 800ABA68 21100000 */  addu       $v0, $zero, $zero
.L800ABA6C:
/* 9C26C 800ABA6C 02004010 */  beqz       $v0, .L800ABA78
/* 9C270 800ABA70 00000000 */   nop
/* 9C274 800ABA74 01003126 */  addiu      $s1, $s1, 1
.L800ABA78:
/* 9C278 800ABA78 FFFF8424 */  addiu      $a0, $a0, -1
/* 9C27C 800ABA7C E9FF8104 */  bgez       $a0, .L800ABA24
/* 9C280 800ABA80 18006324 */   addiu     $v1, $v1, 0x18
/* 9C284 800ABA84 21102002 */  addu       $v0, $s1, $zero
.L800ABA88:
/* 9C288 800ABA88 1800BF8F */  lw         $ra, 0x18($sp)
/* 9C28C 800ABA8C 1400B18F */  lw         $s1, 0x14($sp)
/* 9C290 800ABA90 1000B08F */  lw         $s0, 0x10($sp)
/* 9C294 800ABA94 0800E003 */  jr         $ra
/* 9C298 800ABA98 2000BD27 */   addiu     $sp, $sp, 0x20
