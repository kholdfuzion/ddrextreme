.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be744
/* AEF44 800BE744 001F033C */  lui        $v1, 0x1f00
/* AEF48 800BE748 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AEF4C 800BE74C 000062A4 */  sh         $v0, ($v1)
/* AEF50 800BE750 00006324 */  addiu      $v1, $v1, 0
/* AEF54 800BE754 AAAA0234 */  ori        $v0, $zero, 0xaaaa
/* AEF58 800BE758 AA0A62A4 */  sh         $v0, 0xaaa($v1)
/* AEF5C 800BE75C 55550224 */  addiu      $v0, $zero, 0x5555
/* AEF60 800BE760 540562A4 */  sh         $v0, 0x554($v1)
/* AEF64 800BE764 A0A00234 */  ori        $v0, $zero, 0xa0a0
/* AEF68 800BE768 AA0A62A4 */  sh         $v0, 0xaaa($v1)
/* AEF6C 800BE76C 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEF70 800BE770 000085A4 */  sh         $a1, ($a0)
/* AEF74 800BE774 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEF78 800BE778 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEF7C 800BE77C 0800E003 */  jr         $ra
/* AEF80 800BE780 FEFF0224 */   addiu     $v0, $zero, -2
