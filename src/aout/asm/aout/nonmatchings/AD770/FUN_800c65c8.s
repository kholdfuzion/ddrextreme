.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c65c8
/* B6DC8 800C65C8 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B6DCC 800C65CC 18744224 */  addiu      $v0, $v0, %lo(D_801F7418)
/* B6DD0 800C65D0 22008430 */  andi       $a0, $a0, 0x22
/* B6DD4 800C65D4 1800438C */  lw         $v1, 0x18($v0)
/* B6DD8 800C65D8 27200400 */  nor        $a0, $zero, $a0
/* B6DDC 800C65DC 24186400 */  and        $v1, $v1, $a0
/* B6DE0 800C65E0 0800E003 */  jr         $ra
/* B6DE4 800C65E4 180043AC */   sw        $v1, 0x18($v0)
