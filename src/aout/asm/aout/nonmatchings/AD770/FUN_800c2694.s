.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2694
/* B2E94 800C2694 10008224 */  addiu      $v0, $a0, 0x10
/* B2E98 800C2698 0A000324 */  addiu      $v1, $zero, 0xa
/* B2E9C 800C269C 0C0082AC */  sw         $v0, 0xc($a0)
/* B2EA0 800C26A0 20008224 */  addiu      $v0, $a0, 0x20
/* B2EA4 800C26A4 000080AC */  sw         $zero, ($a0)
/* B2EA8 800C26A8 040080AC */  sw         $zero, 4($a0)
/* B2EAC 800C26AC 080080AC */  sw         $zero, 8($a0)
/* B2EB0 800C26B0 1A0080A0 */  sb         $zero, 0x1a($a0)
/* B2EB4 800C26B4 1B0083A0 */  sb         $v1, 0x1b($a0)
/* B2EB8 800C26B8 1C0082AC */  sw         $v0, 0x1c($a0)
/* B2EBC 800C26BC 2A0080A0 */  sb         $zero, 0x2a($a0)
/* B2EC0 800C26C0 0800E003 */  jr         $ra
/* B2EC4 800C26C4 2B0083A0 */   sb        $v1, 0x2b($a0)
