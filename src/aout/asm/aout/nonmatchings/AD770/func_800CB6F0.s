.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CB6F0
/* BBEF0 800CB6F0 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BBEF4 800CB6F4 A0BCA294 */  lhu        $v0, %lo(D_801FBCA0)($a1)
/* BBEF8 800CB6F8 6A1F033C */  lui        $v1, 0x1f6a
/* BBEFC 800CB6FC 25104400 */  or         $v0, $v0, $a0
/* BBF00 800CB700 000062A4 */  sh         $v0, ($v1)
/* BBF04 800CB704 00006394 */  lhu        $v1, ($v1)
/* BBF08 800CB708 F8FFBD27 */  addiu      $sp, $sp, -8
/* BBF0C 800CB70C A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BBF10 800CB710 0000A3A7 */  sh         $v1, ($sp)
/* BBF14 800CB714 0800E003 */  jr         $ra
/* BBF18 800CB718 0800BD27 */   addiu     $sp, $sp, 8
