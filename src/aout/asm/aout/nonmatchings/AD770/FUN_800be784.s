.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be784
/* AEF84 800BE784 001F033C */  lui        $v1, 0x1f00
/* AEF88 800BE788 F0F00234 */  ori        $v0, $zero, 0xf0f0
/* AEF8C 800BE78C 011F063C */  lui        $a2, 0x1f01
/* AEF90 800BE790 000062A4 */  sh         $v0, ($v1)
/* AEF94 800BE794 AAAA0234 */  ori        $v0, $zero, 0xaaaa
/* AEF98 800BE798 00006324 */  addiu      $v1, $v1, 0
/* AEF9C 800BE79C AAAAC2A4 */  sh         $v0, -0x5556($a2)
/* AEFA0 800BE7A0 55550224 */  addiu      $v0, $zero, 0x5555
/* AEFA4 800BE7A4 545562A4 */  sh         $v0, 0x5554($v1)
/* AEFA8 800BE7A8 A0A00234 */  ori        $v0, $zero, 0xa0a0
/* AEFAC 800BE7AC AAAAC2A4 */  sh         $v0, -0x5556($a2)
/* AEFB0 800BE7B0 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEFB4 800BE7B4 000085A4 */  sh         $a1, ($a0)
/* AEFB8 800BE7B8 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEFBC 800BE7BC F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEFC0 800BE7C0 0800E003 */  jr         $ra
/* AEFC4 800BE7C4 FEFF0224 */   addiu     $v0, $zero, -2
