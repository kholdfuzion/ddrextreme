.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be280
/* AEA80 800BE280 FEFF023C */  lui        $v0, 0xfffe
/* AEA84 800BE284 24208200 */  and        $a0, $a0, $v0
/* AEA88 800BE288 FFFF0234 */  ori        $v0, $zero, 0xffff
/* AEA8C 800BE28C 000082A4 */  sh         $v0, ($a0)
/* AEA90 800BE290 20200224 */  addiu      $v0, $zero, 0x2020
/* AEA94 800BE294 000082A4 */  sh         $v0, ($a0)
/* AEA98 800BE298 D0D00234 */  ori        $v0, $zero, 0xd0d0
/* AEA9C 800BE29C 000082A4 */  sh         $v0, ($a0)
/* AEAA0 800BE2A0 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEAA4 800BE2A4 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEAA8 800BE2A8 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEAAC 800BE2AC 0800E003 */  jr         $ra
/* AEAB0 800BE2B0 FEFF0224 */   addiu     $v0, $zero, -2
