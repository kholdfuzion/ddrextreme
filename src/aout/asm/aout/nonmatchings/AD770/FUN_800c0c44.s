.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0c44
/* B1444 800C0C44 1F80023C */  lui        $v0, %hi(D_801F7098)
/* B1448 800C0C48 98704324 */  addiu      $v1, $v0, %lo(D_801F7098)
/* B144C 800C0C4C 987040A0 */  sb         $zero, 0x7098($v0)
/* B1450 800C0C50 010060A0 */  sb         $zero, 1($v1)
/* B1454 800C0C54 0800E003 */  jr         $ra
/* B1458 800C0C58 020060A0 */   sb        $zero, 2($v1)
