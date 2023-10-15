.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001eeb4
/* F6B4 8001EEB4 1380033C */  lui        $v1, %hi(D_801282E0)
/* F6B8 8001EEB8 E0826724 */  addiu      $a3, $v1, %lo(D_801282E0)
/* F6BC 8001EEBC C0100400 */  sll        $v0, $a0, 3
/* F6C0 8001EEC0 23104400 */  subu       $v0, $v0, $a0
/* F6C4 8001EEC4 80280200 */  sll        $a1, $v0, 2
/* F6C8 8001EEC8 2118A700 */  addu       $v1, $a1, $a3
/* F6CC 8001EECC 14006284 */  lh         $v0, 0x14($v1)
/* F6D0 8001EED0 00000000 */  nop
/* F6D4 8001EED4 0D004010 */  beqz       $v0, .L8001EF0C
/* F6D8 8001EED8 50000624 */   addiu     $a2, $zero, 0x50
/* F6DC 8001EEDC 1400A224 */  addiu      $v0, $a1, 0x14
/* F6E0 8001EEE0 21184700 */  addu       $v1, $v0, $a3
/* F6E4 8001EEE4 01008424 */  addiu      $a0, $a0, 1
.L8001EEE8:
/* F6E8 8001EEE8 03008614 */  bne        $a0, $a2, .L8001EEF8
/* F6EC 8001EEEC 1C006324 */   addiu     $v1, $v1, 0x1c
/* F6F0 8001EEF0 0800E003 */  jr         $ra
/* F6F4 8001EEF4 FFFF0224 */   addiu     $v0, $zero, -1
.L8001EEF8:
/* F6F8 8001EEF8 00006284 */  lh         $v0, ($v1)
/* F6FC 8001EEFC 00000000 */  nop
/* F700 8001EF00 F9FF4014 */  bnez       $v0, .L8001EEE8
/* F704 8001EF04 01008424 */   addiu     $a0, $a0, 1
/* F708 8001EF08 FFFF8424 */  addiu      $a0, $a0, -1
.L8001EF0C:
/* F70C 8001EF0C 0800E003 */  jr         $ra
/* F710 8001EF10 21108000 */   addu      $v0, $a0, $zero
