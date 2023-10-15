.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be540
/* AED40 800BE540 001F023C */  lui        $v0, 0x1f00
/* AED44 800BE544 F0F00334 */  ori        $v1, $zero, 0xf0f0
/* AED48 800BE548 000043A4 */  sh         $v1, ($v0)
/* AED4C 800BE54C 00004224 */  addiu      $v0, $v0, 0
/* AED50 800BE550 AAAA0634 */  ori        $a2, $zero, 0xaaaa
/* AED54 800BE554 55550524 */  addiu      $a1, $zero, 0x5555
/* AED58 800BE558 80800334 */  ori        $v1, $zero, 0x8080
/* AED5C 800BE55C AA0A46A4 */  sh         $a2, 0xaaa($v0)
/* AED60 800BE560 540545A4 */  sh         $a1, 0x554($v0)
/* AED64 800BE564 AA0A43A4 */  sh         $v1, 0xaaa($v0)
/* AED68 800BE568 AA0A46A4 */  sh         $a2, 0xaaa($v0)
/* AED6C 800BE56C 540545A4 */  sh         $a1, 0x554($v0)
/* AED70 800BE570 FEFF023C */  lui        $v0, 0xfffe
/* AED74 800BE574 24208200 */  and        $a0, $a0, $v0
/* AED78 800BE578 30300224 */  addiu      $v0, $zero, 0x3030
/* AED7C 800BE57C 000082A4 */  sh         $v0, ($a0)
/* AED80 800BE580 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AED84 800BE584 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AED88 800BE588 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AED8C 800BE58C 0800E003 */  jr         $ra
/* AED90 800BE590 FEFF0224 */   addiu     $v0, $zero, -2
