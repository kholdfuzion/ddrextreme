.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel strcat
/* AD6C0 800BCEC0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AD6C4 800BCEC4 1400B1AF */  sw         $s1, 0x14($sp)
/* AD6C8 800BCEC8 21888000 */  addu       $s1, $a0, $zero
/* AD6CC 800BCECC 1800B2AF */  sw         $s2, 0x18($sp)
/* AD6D0 800BCED0 2190A000 */  addu       $s2, $a1, $zero
/* AD6D4 800BCED4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AD6D8 800BCED8 1B002012 */  beqz       $s1, .L800BCF48
/* AD6DC 800BCEDC 1000B0AF */   sw        $s0, 0x10($sp)
/* AD6E0 800BCEE0 1A004012 */  beqz       $s2, STRCAT_OBJ_8C
/* AD6E4 800BCEE4 21100000 */   addu      $v0, $zero, $zero
/* AD6E8 800BCEE8 7E81000C */  jal        strlen
/* AD6EC 800BCEEC 21202002 */   addu      $a0, $s1, $zero
/* AD6F0 800BCEF0 21204002 */  addu       $a0, $s2, $zero
/* AD6F4 800BCEF4 7E81000C */  jal        strlen
/* AD6F8 800BCEF8 21802202 */   addu      $s0, $s1, $v0
/* AD6FC 800BCEFC 21104202 */  addu       $v0, $s2, $v0
/* AD700 800BCF00 11000212 */  beq        $s0, $v0, .L800BCF48
/* AD704 800BCF04 21182002 */   addu      $v1, $s1, $zero
/* AD708 800BCF08 00006280 */  lb         $v0, ($v1)
/* AD70C 800BCF0C 00000000 */  nop
/* AD710 800BCF10 05004010 */  beqz       $v0, .L800BCF28
/* AD714 800BCF14 01007124 */   addiu     $s1, $v1, 1
.L800BCF18:
/* AD718 800BCF18 00002282 */  lb         $v0, ($s1)
/* AD71C 800BCF1C 00000000 */  nop
/* AD720 800BCF20 FDFF4014 */  bnez       $v0, .L800BCF18
/* AD724 800BCF24 01003126 */   addiu     $s1, $s1, 1
.L800BCF28:
/* AD728 800BCF28 FFFF3126 */  addiu      $s1, $s1, -1
.L800BCF2C:
/* AD72C 800BCF2C 00004292 */  lbu        $v0, ($s2)
/* AD730 800BCF30 01005226 */  addiu      $s2, $s2, 1
/* AD734 800BCF34 000022A2 */  sb         $v0, ($s1)
/* AD738 800BCF38 FCFF4014 */  bnez       $v0, .L800BCF2C
/* AD73C 800BCF3C 01003126 */   addiu     $s1, $s1, 1
/* AD740 800BCF40 D3F30208 */  j          STRCAT_OBJ_8C
/* AD744 800BCF44 21106000 */   addu      $v0, $v1, $zero
.L800BCF48:
/* AD748 800BCF48 21100000 */  addu       $v0, $zero, $zero
