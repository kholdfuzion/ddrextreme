.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb7ec
/* ABFEC 800BB7EC 1E80033C */  lui        $v1, %hi(D_801E0F40)
/* ABFF0 800BB7F0 1E80063C */  lui        $a2, 0x801e
/* ABFF4 800BB7F4 400F628C */  lw         $v0, %lo(D_801E0F40)($v1)
/* ABFF8 800BB7F8 00000000 */  nop
/* ABFFC 800BB7FC 01004224 */  addiu      $v0, $v0, 1
/* AC000 800BB800 400F62AC */  sw         $v0, 0xf40($v1)
/* AC004 800BB804 09024228 */  slti       $v0, $v0, 0x209
/* AC008 800BB808 16004014 */  bnez       $v0, .L800BB864
/* AC00C 800BB80C 21386000 */   addu      $a3, $v1, $zero
/* AC010 800BB810 500FC424 */  addiu      $a0, $a2, 0xf50
/* AC014 800BB814 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB818:
/* AC018 800BB818 0000828C */  lw         $v0, ($a0)
/* AC01C 800BB81C A407838C */  lw         $v1, 0x7a4($a0)
/* AC020 800BB820 FFFFA524 */  addiu      $a1, $a1, -1
/* AC024 800BB824 26104300 */  xor        $v0, $v0, $v1
/* AC028 800BB828 000082AC */  sw         $v0, ($a0)
/* AC02C 800BB82C FAFFA104 */  bgez       $a1, .L800BB818
/* AC030 800BB830 04008424 */   addiu     $a0, $a0, 4
/* AC034 800BB834 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* AC038 800BB838 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* AC03C 800BB83C 80004424 */  addiu      $a0, $v0, 0x80
/* AC040 800BB840 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB844:
/* AC044 800BB844 0000828C */  lw         $v0, ($a0)
/* AC048 800BB848 80FF838C */  lw         $v1, -0x80($a0)
/* AC04C 800BB84C FFFFA524 */  addiu      $a1, $a1, -1
/* AC050 800BB850 26104300 */  xor        $v0, $v0, $v1
/* AC054 800BB854 000082AC */  sw         $v0, ($a0)
/* AC058 800BB858 FAFFA104 */  bgez       $a1, .L800BB844
/* AC05C 800BB85C 04008424 */   addiu     $a0, $a0, 4
/* AC060 800BB860 400FE0AC */  sw         $zero, 0xf40($a3)
.L800BB864:
/* AC064 800BB864 400FE38C */  lw         $v1, 0xf40($a3)
/* AC068 800BB868 500FC224 */  addiu      $v0, $a2, 0xf50
/* AC06C 800BB86C 80180300 */  sll        $v1, $v1, 2
/* AC070 800BB870 21186200 */  addu       $v1, $v1, $v0
/* AC074 800BB874 0000628C */  lw         $v0, ($v1)
/* AC078 800BB878 0800E003 */  jr         $ra
/* AC07C 800BB87C 00000000 */   nop
