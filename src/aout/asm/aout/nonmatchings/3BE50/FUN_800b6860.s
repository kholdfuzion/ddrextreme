.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b6860
/* A7060 800B6860 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* A7064 800B6864 1E80023C */  lui        $v0, %hi(D_801E07D8)
/* A7068 800B6868 D807468C */  lw         $a2, %lo(D_801E07D8)($v0)
/* A706C 800B686C 03000524 */  addiu      $a1, $zero, 3
/* A7070 800B6870 3800BFAF */  sw         $ra, 0x38($sp)
/* A7074 800B6874 1000A5AF */  sw         $a1, 0x10($sp)
/* A7078 800B6878 1C00C38C */  lw         $v1, 0x1c($a2)
/* A707C 800B687C FF008430 */  andi       $a0, $a0, 0xff
/* A7080 800B6880 21186400 */  addu       $v1, $v1, $a0
/* A7084 800B6884 00006290 */  lbu        $v0, ($v1)
/* A7088 800B6888 1000A427 */  addiu      $a0, $sp, 0x10
/* A708C 800B688C C0110200 */  sll        $v0, $v0, 7
/* A7090 800B6890 1600A2A7 */  sh         $v0, 0x16($sp)
/* A7094 800B6894 B5E5020C */  jal        SpuSetCommonAttr
/* A7098 800B6898 1400A2A7 */   sh        $v0, 0x14($sp)
/* A709C 800B689C 3800BF8F */  lw         $ra, 0x38($sp)
/* A70A0 800B68A0 00000000 */  nop
/* A70A4 800B68A4 0800E003 */  jr         $ra
/* A70A8 800B68A8 4000BD27 */   addiu     $sp, $sp, 0x40
