.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001EB80
/* F380 8001EB80 E0FDBD27 */  addiu      $sp, $sp, -0x220
/* F384 8001EB84 1002B0AF */  sw         $s0, 0x210($sp)
/* F388 8001EB88 21808000 */  addu       $s0, $a0, $zero
/* F38C 8001EB8C 1402B1AF */  sw         $s1, 0x214($sp)
/* F390 8001EB90 2188A000 */  addu       $s1, $a1, $zero
/* F394 8001EB94 1802BFAF */  sw         $ra, 0x218($sp)
/* F398 8001EB98 9B61000C */  jal        StoreImage
/* F39C 8001EB9C 1000A527 */   addiu     $a1, $sp, 0x10
/* F3A0 8001EBA0 D860000C */  jal        DrawSync
/* F3A4 8001EBA4 21200000 */   addu      $a0, $zero, $zero
/* F3A8 8001EBA8 04000386 */  lh         $v1, 4($s0)
/* F3AC 8001EBAC 06000286 */  lh         $v0, 6($s0)
/* F3B0 8001EBB0 00000000 */  nop
/* F3B4 8001EBB4 18006200 */  mult       $v1, $v0
/* F3B8 8001EBB8 12180000 */  mflo       $v1
/* F3BC 8001EBBC 0A006018 */  blez       $v1, .L8001EBE8
/* F3C0 8001EBC0 FFFF0534 */   ori       $a1, $zero, 0xffff
/* F3C4 8001EBC4 1000A427 */  addiu      $a0, $sp, 0x10
.L8001EBC8:
/* F3C8 8001EBC8 00008294 */  lhu        $v0, ($a0)
/* F3CC 8001EBCC 00000000 */  nop
/* F3D0 8001EBD0 02004010 */  beqz       $v0, .L8001EBDC
/* F3D4 8001EBD4 00000000 */   nop
/* F3D8 8001EBD8 000085A4 */  sh         $a1, ($a0)
.L8001EBDC:
/* F3DC 8001EBDC FFFF6324 */  addiu      $v1, $v1, -1
/* F3E0 8001EBE0 F9FF6014 */  bnez       $v1, .L8001EBC8
/* F3E4 8001EBE4 02008424 */   addiu     $a0, $a0, 2
.L8001EBE8:
/* F3E8 8001EBE8 21202002 */  addu       $a0, $s1, $zero
/* F3EC 8001EBEC 8361000C */  jal        LoadImage
/* F3F0 8001EBF0 1000A527 */   addiu     $a1, $sp, 0x10
/* F3F4 8001EBF4 D860000C */  jal        DrawSync
/* F3F8 8001EBF8 21200000 */   addu      $a0, $zero, $zero
/* F3FC 8001EBFC 1802BF8F */  lw         $ra, 0x218($sp)
/* F400 8001EC00 1402B18F */  lw         $s1, 0x214($sp)
/* F404 8001EC04 1002B08F */  lw         $s0, 0x210($sp)
/* F408 8001EC08 0800E003 */  jr         $ra
/* F40C 8001EC0C 2002BD27 */   addiu     $sp, $sp, 0x220
