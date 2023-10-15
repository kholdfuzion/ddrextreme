.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd8a8
/* AE0A8 800BD8A8 1E80053C */  lui        $a1, %hi(D_801E17A8)
/* AE0AC 800BD8AC A817A524 */  addiu      $a1, $a1, %lo(D_801E17A8)
/* AE0B0 800BD8B0 2810A38C */  lw         $v1, 0x1028($a1)
/* AE0B4 800BD8B4 00000000 */  nop
/* AE0B8 800BD8B8 40100300 */  sll        $v0, $v1, 1
/* AE0BC 800BD8BC 21104300 */  addu       $v0, $v0, $v1
/* AE0C0 800BD8C0 80100200 */  sll        $v0, $v0, 2
/* AE0C4 800BD8C4 21104500 */  addu       $v0, $v0, $a1
/* AE0C8 800BD8C8 0100063C */  lui        $a2, 1
/* AE0CC 800BD8CC 21104600 */  addu       $v0, $v0, $a2
/* AE0D0 800BD8D0 385844AC */  sw         $a0, 0x5838($v0)
/* AE0D4 800BD8D4 2810A38C */  lw         $v1, 0x1028($a1)
/* AE0D8 800BD8D8 00000000 */  nop
/* AE0DC 800BD8DC 40100300 */  sll        $v0, $v1, 1
/* AE0E0 800BD8E0 21104300 */  addu       $v0, $v0, $v1
/* AE0E4 800BD8E4 80100200 */  sll        $v0, $v0, 2
/* AE0E8 800BD8E8 21104500 */  addu       $v0, $v0, $a1
/* AE0EC 800BD8EC 21104600 */  addu       $v0, $v0, $a2
/* AE0F0 800BD8F0 00A00334 */  ori        $v1, $zero, 0xa000
/* AE0F4 800BD8F4 305843AC */  sw         $v1, 0x5830($v0)
/* AE0F8 800BD8F8 2810A38C */  lw         $v1, 0x1028($a1)
/* AE0FC 800BD8FC 00000000 */  nop
/* AE100 800BD900 40100300 */  sll        $v0, $v1, 1
/* AE104 800BD904 21104300 */  addu       $v0, $v0, $v1
/* AE108 800BD908 80100200 */  sll        $v0, $v0, 2
/* AE10C 800BD90C 21104500 */  addu       $v0, $v0, $a1
/* AE110 800BD910 21104600 */  addu       $v0, $v0, $a2
/* AE114 800BD914 0800E003 */  jr         $ra
/* AE118 800BD918 345840AC */   sw        $zero, 0x5834($v0)
