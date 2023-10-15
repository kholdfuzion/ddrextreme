.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800C3950
/* B4150 800C3950 1F80023C */  lui        $v0, %hi(D_801F72F8)
/* B4154 800C3954 0800E003 */  jr         $ra
/* B4158 800C3958 F8724224 */   addiu     $v0, $v0, %lo(D_801F72F8)
