.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c7074
/* B7874 800C7074 80200400 */  sll        $a0, $a0, 2
/* B7878 800C7078 1F80053C */  lui        $a1, %hi(D_801F7418)
/* B787C 800C707C 1874A524 */  addiu      $a1, $a1, %lo(D_801F7418)
/* B7880 800C7080 04000224 */  addiu      $v0, $zero, 4
/* B7884 800C7084 04108200 */  sllv       $v0, $v0, $a0
/* B7888 800C7088 1800A38C */  lw         $v1, 0x18($a1)
/* B788C 800C708C 27100200 */  nor        $v0, $zero, $v0
/* B7890 800C7090 24186200 */  and        $v1, $v1, $v0
/* B7894 800C7094 08000224 */  addiu      $v0, $zero, 8
/* B7898 800C7098 04108200 */  sllv       $v0, $v0, $a0
/* B789C 800C709C 25186200 */  or         $v1, $v1, $v0
/* B78A0 800C70A0 0800E003 */  jr         $ra
/* B78A4 800C70A4 1800A3AC */   sw        $v1, 0x18($a1)
