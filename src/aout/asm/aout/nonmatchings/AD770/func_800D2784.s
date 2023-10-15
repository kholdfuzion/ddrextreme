.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800D2784
/* C2F84 800D2784 F8FFBD27 */  addiu      $sp, $sp, -8
/* C2F88 800D2788 0000A4AF */  sw         $a0, ($sp)
/* C2F8C 800D278C 0300A293 */  lbu        $v0, 3($sp)
/* C2F90 800D2790 0200A393 */  lbu        $v1, 2($sp)
/* C2F94 800D2794 0100A493 */  lbu        $a0, 1($sp)
/* C2F98 800D2798 0000A593 */  lbu        $a1, ($sp)
/* C2F9C 800D279C 0400A2A3 */  sb         $v0, 4($sp)
/* C2FA0 800D27A0 0500A3A3 */  sb         $v1, 5($sp)
/* C2FA4 800D27A4 0600A4A3 */  sb         $a0, 6($sp)
/* C2FA8 800D27A8 0700A5A3 */  sb         $a1, 7($sp)
/* C2FAC 800D27AC 0400A28F */  lw         $v0, 4($sp)
/* C2FB0 800D27B0 0800E003 */  jr         $ra
/* C2FB4 800D27B4 0800BD27 */   addiu     $sp, $sp, 8
