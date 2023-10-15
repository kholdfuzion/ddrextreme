.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd848
/* AE048 800BD848 03008624 */  addiu      $a2, $a0, 3
/* AE04C 800BD84C 0200C104 */  bgez       $a2, .L800BD858
/* AE050 800BD850 2110C000 */   addu      $v0, $a2, $zero
/* AE054 800BD854 06008224 */  addiu      $v0, $a0, 6
.L800BD858:
/* AE058 800BD858 83100200 */  sra        $v0, $v0, 2
/* AE05C 800BD85C 80300200 */  sll        $a2, $v0, 2
/* AE060 800BD860 1E80023C */  lui        $v0, %hi(D_801E17A8)
/* AE064 800BD864 A8174224 */  addiu      $v0, $v0, %lo(D_801E17A8)
/* AE068 800BD868 2810448C */  lw         $a0, 0x1028($v0)
/* AE06C 800BD86C 00000000 */  nop
/* AE070 800BD870 40180400 */  sll        $v1, $a0, 1
/* AE074 800BD874 21186400 */  addu       $v1, $v1, $a0
/* AE078 800BD878 80180300 */  sll        $v1, $v1, 2
/* AE07C 800BD87C 21186200 */  addu       $v1, $v1, $v0
/* AE080 800BD880 0100023C */  lui        $v0, 1
/* AE084 800BD884 21186200 */  addu       $v1, $v1, $v0
/* AE088 800BD888 3458648C */  lw         $a0, 0x5834($v1)
/* AE08C 800BD88C 00000000 */  nop
/* AE090 800BD890 80280400 */  sll        $a1, $a0, 2
/* AE094 800BD894 3858628C */  lw         $v0, 0x5838($v1)
/* AE098 800BD898 2120C400 */  addu       $a0, $a2, $a0
/* AE09C 800BD89C 345864AC */  sw         $a0, 0x5834($v1)
/* AE0A0 800BD8A0 0800E003 */  jr         $ra
/* AE0A4 800BD8A4 2110A200 */   addu      $v0, $a1, $v0
