.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CB71C
/* BBF1C 800CB71C 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BBF20 800CB720 27200400 */  nor        $a0, $zero, $a0
/* BBF24 800CB724 A0BCA294 */  lhu        $v0, %lo(D_801FBCA0)($a1)
/* BBF28 800CB728 6A1F033C */  lui        $v1, 0x1f6a
/* BBF2C 800CB72C 24104400 */  and        $v0, $v0, $a0
/* BBF30 800CB730 000062A4 */  sh         $v0, ($v1)
/* BBF34 800CB734 00006394 */  lhu        $v1, ($v1)
/* BBF38 800CB738 F8FFBD27 */  addiu      $sp, $sp, -8
/* BBF3C 800CB73C A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BBF40 800CB740 0000A3A7 */  sh         $v1, ($sp)
/* BBF44 800CB744 0800E003 */  jr         $ra
/* BBF48 800CB748 0800BD27 */   addiu     $sp, $sp, 8
