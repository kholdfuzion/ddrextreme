.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be594
/* AED94 800BE594 001F033C */  lui        $v1, 0x1f00
/* AED98 800BE598 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AED9C 800BE59C 011F053C */  lui        $a1, 0x1f01
/* AEDA0 800BE5A0 AAAA0734 */  ori        $a3, $zero, 0xaaaa
/* AEDA4 800BE5A4 000062A4 */  sh         $v0, ($v1)
/* AEDA8 800BE5A8 00006324 */  addiu      $v1, $v1, 0
/* AEDAC 800BE5AC 55550624 */  addiu      $a2, $zero, 0x5555
/* AEDB0 800BE5B0 80800234 */  ori        $v0, $zero, 0x8080
/* AEDB4 800BE5B4 AAAAA7A4 */  sh         $a3, -0x5556($a1)
/* AEDB8 800BE5B8 545566A4 */  sh         $a2, 0x5554($v1)
/* AEDBC 800BE5BC AAAAA2A4 */  sh         $v0, -0x5556($a1)
/* AEDC0 800BE5C0 FEFF023C */  lui        $v0, 0xfffe
/* AEDC4 800BE5C4 24208200 */  and        $a0, $a0, $v0
/* AEDC8 800BE5C8 30300224 */  addiu      $v0, $zero, 0x3030
/* AEDCC 800BE5CC AAAAA7A4 */  sh         $a3, -0x5556($a1)
/* AEDD0 800BE5D0 545566A4 */  sh         $a2, 0x5554($v1)
/* AEDD4 800BE5D4 000082A4 */  sh         $v0, ($a0)
/* AEDD8 800BE5D8 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEDDC 800BE5DC F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEDE0 800BE5E0 F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEDE4 800BE5E4 0800E003 */  jr         $ra
/* AEDE8 800BE5E8 FEFF0224 */   addiu     $v0, $zero, -2
