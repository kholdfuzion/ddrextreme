.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bcf70
/* AD770 800BCF70 1E80073C */  lui        $a3, %hi(D_801E17A8)
/* AD774 800BCF74 A817E724 */  addiu      $a3, $a3, %lo(D_801E17A8)
/* AD778 800BCF78 2810E38C */  lw         $v1, 0x1028($a3)
/* AD77C 800BCF7C 00000000 */  nop
/* AD780 800BCF80 40100300 */  sll        $v0, $v1, 1
/* AD784 800BCF84 21104300 */  addu       $v0, $v0, $v1
/* AD788 800BCF88 C0100200 */  sll        $v0, $v0, 3
/* AD78C 800BCF8C 23104300 */  subu       $v0, $v0, $v1
/* AD790 800BCF90 80100200 */  sll        $v0, $v0, 2
/* AD794 800BCF94 21104700 */  addu       $v0, $v0, $a3
/* AD798 800BCF98 190044A0 */  sb         $a0, 0x19($v0)
/* AD79C 800BCF9C 2810E38C */  lw         $v1, 0x1028($a3)
/* AD7A0 800BCFA0 00000000 */  nop
/* AD7A4 800BCFA4 40100300 */  sll        $v0, $v1, 1
/* AD7A8 800BCFA8 21104300 */  addu       $v0, $v0, $v1
/* AD7AC 800BCFAC C0100200 */  sll        $v0, $v0, 3
/* AD7B0 800BCFB0 23104300 */  subu       $v0, $v0, $v1
/* AD7B4 800BCFB4 80100200 */  sll        $v0, $v0, 2
/* AD7B8 800BCFB8 21104700 */  addu       $v0, $v0, $a3
/* AD7BC 800BCFBC 1A0045A0 */  sb         $a1, 0x1a($v0)
/* AD7C0 800BCFC0 2810E38C */  lw         $v1, 0x1028($a3)
/* AD7C4 800BCFC4 00000000 */  nop
/* AD7C8 800BCFC8 40100300 */  sll        $v0, $v1, 1
/* AD7CC 800BCFCC 21104300 */  addu       $v0, $v0, $v1
/* AD7D0 800BCFD0 C0100200 */  sll        $v0, $v0, 3
/* AD7D4 800BCFD4 23104300 */  subu       $v0, $v0, $v1
/* AD7D8 800BCFD8 80100200 */  sll        $v0, $v0, 2
/* AD7DC 800BCFDC 21104700 */  addu       $v0, $v0, $a3
/* AD7E0 800BCFE0 0800E003 */  jr         $ra
/* AD7E4 800BCFE4 1B0046A0 */   sb        $a2, 0x1b($v0)
