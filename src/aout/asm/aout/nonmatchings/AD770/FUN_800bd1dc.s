.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd1dc
/* AD9DC 800BD1DC 1E80023C */  lui        $v0, %hi(D_801E1C40)
/* AD9E0 800BD1E0 401C4324 */  addiu      $v1, $v0, %lo(D_801E1C40)
/* AD9E4 800BD1E4 21200000 */  addu       $a0, $zero, $zero
.L800BD1E8:
/* AD9E8 800BD1E8 000060A4 */  sh         $zero, ($v1)
/* AD9EC 800BD1EC 01008224 */  addiu      $v0, $a0, 1
/* AD9F0 800BD1F0 21204000 */  addu       $a0, $v0, $zero
/* AD9F4 800BD1F4 00140200 */  sll        $v0, $v0, 0x10
/* AD9F8 800BD1F8 03140200 */  sra        $v0, $v0, 0x10
/* AD9FC 800BD1FC 50004228 */  slti       $v0, $v0, 0x50
/* ADA00 800BD200 F9FF4014 */  bnez       $v0, .L800BD1E8
/* ADA04 800BD204 18006324 */   addiu     $v1, $v1, 0x18
/* ADA08 800BD208 0800E003 */  jr         $ra
/* ADA0C 800BD20C 00000000 */   nop
