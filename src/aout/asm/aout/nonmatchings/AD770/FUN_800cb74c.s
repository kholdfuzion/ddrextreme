.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb74c
/* BBF4C 800CB74C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BBF50 800CB750 1800B0AF */  sw         $s0, 0x18($sp)
/* BBF54 800CB754 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BBF58 800CB758 162B030C */  jal        FUN_800cac58
/* BBF5C 800CB75C 21808000 */   addu      $s0, $a0, $zero
/* BBF60 800CB760 04000424 */  addiu      $a0, $zero, 4
/* BBF64 800CB764 6A1F023C */  lui        $v0, 0x1f6a
/* BBF68 800CB768 000044A4 */  sh         $a0, ($v0)
/* BBF6C 800CB76C 00004394 */  lhu        $v1, ($v0)
/* BBF70 800CB770 2080023C */  lui        $v0, %hi(D_801FBCA0)
/* BBF74 800CB774 A0BC44A4 */  sh         $a0, %lo(D_801FBCA0)($v0)
/* BBF78 800CB778 21100002 */  addu       $v0, $s0, $zero
/* BBF7C 800CB77C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BBF80 800CB780 1800B08F */  lw         $s0, 0x18($sp)
/* BBF84 800CB784 1000A3A7 */  sh         $v1, 0x10($sp)
/* BBF88 800CB788 0800E003 */  jr         $ra
/* BBF8C 800CB78C 2000BD27 */   addiu     $sp, $sp, 0x20
