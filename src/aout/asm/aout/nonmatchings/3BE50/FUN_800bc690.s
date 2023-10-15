.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc690
/* ACE90 800BC690 01000224 */  addiu      $v0, $zero, 1
/* ACE94 800BC694 14008210 */  beq        $a0, $v0, .L800BC6E8
/* ACE98 800BC698 02008228 */   slti      $v0, $a0, 2
/* ACE9C 800BC69C 05004010 */  beqz       $v0, .L800BC6B4
/* ACEA0 800BC6A0 00000000 */   nop
/* ACEA4 800BC6A4 0A008010 */  beqz       $a0, .L800BC6D0
/* ACEA8 800BC6A8 FFFF0224 */   addiu     $v0, $zero, -1
/* ACEAC 800BC6AC CBF10208 */  j          .L800BC72C
/* ACEB0 800BC6B0 00000000 */   nop
.L800BC6B4:
/* ACEB4 800BC6B4 02000224 */  addiu      $v0, $zero, 2
/* ACEB8 800BC6B8 11008210 */  beq        $a0, $v0, .L800BC700
/* ACEBC 800BC6BC 03000224 */   addiu     $v0, $zero, 3
/* ACEC0 800BC6C0 15008210 */  beq        $a0, $v0, .L800BC718
/* ACEC4 800BC6C4 FFFF0224 */   addiu     $v0, $zero, -1
/* ACEC8 800BC6C8 CBF10208 */  j          .L800BC72C
/* ACECC 800BC6CC 00000000 */   nop
.L800BC6D0:
/* ACED0 800BC6D0 0F80023C */  lui        $v0, %hi(D_800ED0A4)
/* ACED4 800BC6D4 A4D0428C */  lw         $v0, %lo(D_800ED0A4)($v0)
/* ACED8 800BC6D8 00000000 */  nop
/* ACEDC 800BC6DC 0000428C */  lw         $v0, ($v0)
/* ACEE0 800BC6E0 CBF10208 */  j          .L800BC72C
/* ACEE4 800BC6E4 00000000 */   nop
.L800BC6E8:
/* ACEE8 800BC6E8 0F80023C */  lui        $v0, %hi(D_800ED09C)
/* ACEEC 800BC6EC 9CD0428C */  lw         $v0, %lo(D_800ED09C)($v0)
/* ACEF0 800BC6F0 00000000 */  nop
/* ACEF4 800BC6F4 0000428C */  lw         $v0, ($v0)
/* ACEF8 800BC6F8 CBF10208 */  j          .L800BC72C
/* ACEFC 800BC6FC 00000000 */   nop
.L800BC700:
/* ACF00 800BC700 0F80023C */  lui        $v0, %hi(D_800ED0A0)
/* ACF04 800BC704 A0D0428C */  lw         $v0, %lo(D_800ED0A0)($v0)
/* ACF08 800BC708 00000000 */  nop
/* ACF0C 800BC70C 0000428C */  lw         $v0, ($v0)
/* ACF10 800BC710 CBF10208 */  j          .L800BC72C
/* ACF14 800BC714 00000000 */   nop
.L800BC718:
/* ACF18 800BC718 0F80023C */  lui        $v0, %hi(D_800ED0A8)
/* ACF1C 800BC71C A8D0428C */  lw         $v0, %lo(D_800ED0A8)($v0)
/* ACF20 800BC720 00000000 */  nop
/* ACF24 800BC724 0000428C */  lw         $v0, ($v0)
/* ACF28 800BC728 00000000 */  nop
.L800BC72C:
/* ACF2C 800BC72C 0800E003 */  jr         $ra
/* ACF30 800BC730 00000000 */   nop
