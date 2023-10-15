.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005af44
/* 4B744 8005AF44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4B748 8005AF48 21408000 */  addu       $t0, $a0, $zero
/* 4B74C 8005AF4C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B750 8005AF50 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B754 8005AF54 80100800 */  sll        $v0, $t0, 2
/* 4B758 8005AF58 21104800 */  addu       $v0, $v0, $t0
/* 4B75C 8005AF5C C0100200 */  sll        $v0, $v0, 3
/* 4B760 8005AF60 21104800 */  addu       $v0, $v0, $t0
/* 4B764 8005AF64 C0100200 */  sll        $v0, $v0, 3
/* 4B768 8005AF68 23104800 */  subu       $v0, $v0, $t0
/* 4B76C 8005AF6C 80100200 */  sll        $v0, $v0, 2
/* 4B770 8005AF70 21104800 */  addu       $v0, $v0, $t0
/* 4B774 8005AF74 2800A98F */  lw         $t1, 0x28($sp)
/* 4B778 8005AF78 C0100200 */  sll        $v0, $v0, 3
/* 4B77C 8005AF7C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4B780 8005AF80 40200300 */  sll        $a0, $v1, 1
/* 4B784 8005AF84 21208300 */  addu       $a0, $a0, $v1
/* 4B788 8005AF88 C0200400 */  sll        $a0, $a0, 3
/* 4B78C 8005AF8C 23208300 */  subu       $a0, $a0, $v1
/* 4B790 8005AF90 C0210400 */  sll        $a0, $a0, 7
/* 4B794 8005AF94 21208300 */  addu       $a0, $a0, $v1
/* 4B798 8005AF98 80200400 */  sll        $a0, $a0, 2
/* 4B79C 8005AF9C 21208300 */  addu       $a0, $a0, $v1
/* 4B7A0 8005AFA0 C0200400 */  sll        $a0, $a0, 3
/* 4B7A4 8005AFA4 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B7A8 8005AFA8 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B7AC 8005AFAC 21104300 */  addu       $v0, $v0, $v1
/* 4B7B0 8005AFB0 21208200 */  addu       $a0, $a0, $v0
/* 4B7B4 8005AFB4 B0288284 */  lh         $v0, 0x28b0($a0)
/* 4B7B8 8005AFB8 2C00A38F */  lw         $v1, 0x2c($sp)
/* 4B7BC 8005AFBC 11004514 */  bne        $v0, $a1, .L8005B004
/* 4B7C0 8005AFC0 00000000 */   nop
/* 4B7C4 8005AFC4 B2288284 */  lh         $v0, 0x28b2($a0)
/* 4B7C8 8005AFC8 00000000 */  nop
/* 4B7CC 8005AFCC 0D004614 */  bne        $v0, $a2, .L8005B004
/* 4B7D0 8005AFD0 00000000 */   nop
/* 4B7D4 8005AFD4 B4288284 */  lh         $v0, 0x28b4($a0)
/* 4B7D8 8005AFD8 00000000 */  nop
/* 4B7DC 8005AFDC 09004714 */  bne        $v0, $a3, .L8005B004
/* 4B7E0 8005AFE0 00000000 */   nop
/* 4B7E4 8005AFE4 B6288284 */  lh         $v0, 0x28b6($a0)
/* 4B7E8 8005AFE8 00000000 */  nop
/* 4B7EC 8005AFEC 05004914 */  bne        $v0, $t1, .L8005B004
/* 4B7F0 8005AFF0 00000000 */   nop
/* 4B7F4 8005AFF4 A6288280 */  lb         $v0, 0x28a6($a0)
/* 4B7F8 8005AFF8 00000000 */  nop
/* 4B7FC 8005AFFC 08004310 */  beq        $v0, $v1, .L8005B020
/* 4B800 8005B000 00000000 */   nop
.L8005B004:
/* 4B804 8005B004 B02885A4 */  sh         $a1, 0x28b0($a0)
/* 4B808 8005B008 B22886A4 */  sh         $a2, 0x28b2($a0)
/* 4B80C 8005B00C B42887A4 */  sh         $a3, 0x28b4($a0)
/* 4B810 8005B010 B62889A4 */  sh         $t1, 0x28b6($a0)
/* 4B814 8005B014 A62883A0 */  sb         $v1, 0x28a6($a0)
/* 4B818 8005B018 D361010C */  jal        FUN_8005874c
/* 4B81C 8005B01C 21200001 */   addu      $a0, $t0, $zero
.L8005B020:
/* 4B820 8005B020 1000BF8F */  lw         $ra, 0x10($sp)
/* 4B824 8005B024 00000000 */  nop
/* 4B828 8005B028 0800E003 */  jr         $ra
/* 4B82C 8005B02C 1800BD27 */   addiu     $sp, $sp, 0x18
