.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3940
/* B4140 800C3940 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B4144 800C3944 F8724224 */  addiu      $v0, $v0, %lo(D_801F72F8)
/* B4148 800C3948 0800E003 */  jr         $ra
/* B414C 800C394C 18004224 */   addiu     $v0, $v0, 0x18
