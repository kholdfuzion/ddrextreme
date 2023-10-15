.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd7a8
/* ADFA8 800BD7A8 8000A530 */  andi       $a1, $a1, 0x80
/* ADFAC 800BD7AC 0500A010 */  beqz       $a1, .L800BD7C4
/* ADFB0 800BD7B0 0F80033C */   lui       $v1, 0x800f
/* ADFB4 800BD7B4 0C00A014 */  bnez       $a1, .L800BD7E8
/* ADFB8 800BD7B8 0F80033C */   lui       $v1, %hi(D_800EDE0C)
/* ADFBC 800BD7BC 0800E003 */  jr         $ra
/* ADFC0 800BD7C0 21100000 */   addu      $v0, $zero, $zero
.L800BD7C4:
/* ADFC4 800BD7C4 0CDE6324 */  addiu      $v1, $v1, %lo(D_800EDE0C)
.L800BD7C8:
/* ADFC8 800BD7C8 FF008230 */  andi       $v0, $a0, 0xff
/* ADFCC 800BD7CC E0FF4224 */  addiu      $v0, $v0, -0x20
/* ADFD0 800BD7D0 80100200 */  sll        $v0, $v0, 2
/* ADFD4 800BD7D4 02004234 */  ori        $v0, $v0, 2
/* ADFD8 800BD7D8 21104300 */  addu       $v0, $v0, $v1
/* ADFDC 800BD7DC 00004284 */  lh         $v0, ($v0)
/* ADFE0 800BD7E0 0800E003 */  jr         $ra
/* ADFE4 800BD7E4 00000000 */   nop
.L800BD7E8:
/* ADFE8 800BD7E8 F2F50208 */  j          .L800BD7C8
/* ADFEC 800BD7EC 78DF6324 */   addiu     $v1, $v1, -0x2088
