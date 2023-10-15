.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b096c
/* A116C 800B096C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A1170 800B0970 1D80023C */  lui        $v0, %hi(D_801D0048)
/* A1174 800B0974 1000B0AF */  sw         $s0, 0x10($sp)
/* A1178 800B0978 48005024 */  addiu      $s0, $v0, %lo(D_801D0048)
/* A117C 800B097C 1400BFAF */  sw         $ra, 0x14($sp)
/* A1180 800B0980 0A000382 */  lb         $v1, 0xa($s0)
/* A1184 800B0984 00000000 */  nop
/* A1188 800B0988 17006014 */  bnez       $v1, .L800B09E8
/* A118C 800B098C 00000000 */   nop
/* A1190 800B0990 FFC5020C */  jal        FUN_800b17fc
/* A1194 800B0994 00000000 */   nop
/* A1198 800B0998 746F053C */  lui        $a1, 0x6f74
/* A119C 800B099C 27AEA534 */  ori        $a1, $a1, 0xae27
/* A11A0 800B09A0 18004500 */  mult       $v0, $a1
/* A11A4 800B09A4 6210063C */  lui        $a2, 0x1062
/* A11A8 800B09A8 3000078E */  lw         $a3, 0x30($s0)
/* A11AC 800B09AC D34DC634 */  ori        $a2, $a2, 0x4dd3
/* A11B0 800B09B0 80200700 */  sll        $a0, $a3, 2
/* A11B4 800B09B4 21208700 */  addu       $a0, $a0, $a3
/* A11B8 800B09B8 00190400 */  sll        $v1, $a0, 4
/* A11BC 800B09BC 10280000 */  mfhi       $a1
/* A11C0 800B09C0 23186400 */  subu       $v1, $v1, $a0
/* A11C4 800B09C4 40180300 */  sll        $v1, $v1, 1
/* A11C8 800B09C8 19006600 */  multu      $v1, $a2
/* A11CC 800B09CC C3170200 */  sra        $v0, $v0, 0x1f
/* A11D0 800B09D0 C3290500 */  sra        $a1, $a1, 7
/* A11D4 800B09D4 2328A200 */  subu       $a1, $a1, $v0
/* A11D8 800B09D8 10180000 */  mfhi       $v1
/* A11DC 800B09DC 821A0300 */  srl        $v1, $v1, 0xa
/* A11E0 800B09E0 7BC20208 */  j          .L800B09EC
/* A11E4 800B09E4 2110A300 */   addu      $v0, $a1, $v1
.L800B09E8:
/* A11E8 800B09E8 21100000 */  addu       $v0, $zero, $zero
.L800B09EC:
/* A11EC 800B09EC 1400BF8F */  lw         $ra, 0x14($sp)
/* A11F0 800B09F0 1000B08F */  lw         $s0, 0x10($sp)
/* A11F4 800B09F4 0800E003 */  jr         $ra
/* A11F8 800B09F8 1800BD27 */   addiu     $sp, $sp, 0x18
