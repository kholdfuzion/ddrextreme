.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd0b4
/* AD8B4 800BD0B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AD8B8 800BD0B8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AD8BC 800BD0BC 1800B0AF */  sw         $s0, 0x18($sp)
/* AD8C0 800BD0C0 F95F000C */  jal        ResetGraph
/* AD8C4 800BD0C4 21200000 */   addu      $a0, $zero, $zero
/* AD8C8 800BD0C8 5660000C */  jal        SetGraphDebug
/* AD8CC 800BD0CC 21200000 */   addu      $a0, $zero, $zero
/* AD8D0 800BD0D0 77F4020C */  jal        FUN_800bd1dc
/* AD8D4 800BD0D4 1E80103C */   lui       $s0, %hi(D_801E17A8)
/* AD8D8 800BD0D8 A8171026 */  addiu      $s0, $s0, %lo(D_801E17A8)
/* AD8DC 800BD0DC 40010224 */  addiu      $v0, $zero, 0x140
/* AD8E0 800BD0E0 181002A6 */  sh         $v0, 0x1018($s0)
/* AD8E4 800BD0E4 F0000224 */  addiu      $v0, $zero, 0xf0
/* AD8E8 800BD0E8 1A1002A6 */  sh         $v0, 0x101a($s0)
/* AD8EC 800BD0EC 1C1000A2 */  sb         $zero, 0x101c($s0)
/* AD8F0 800BD0F0 1D1000A2 */  sb         $zero, 0x101d($s0)
/* AD8F4 800BD0F4 1E1000A2 */  sb         $zero, 0x101e($s0)
/* AD8F8 800BD0F8 00080224 */  addiu      $v0, $zero, 0x800
/* AD8FC 800BD0FC 201002A6 */  sh         $v0, 0x1020($s0)
/* AD900 800BD100 221002A6 */  sh         $v0, 0x1022($s0)
/* AD904 800BD104 241002A6 */  sh         $v0, 0x1024($s0)
/* AD908 800BD108 F0000224 */  addiu      $v0, $zero, 0xf0
/* AD90C 800BD10C 1000A2AF */  sw         $v0, 0x10($sp)
/* AD910 800BD110 21200002 */  addu       $a0, $s0, $zero
/* AD914 800BD114 21280000 */  addu       $a1, $zero, $zero
/* AD918 800BD118 2130A000 */  addu       $a2, $a1, $zero
/* AD91C 800BD11C E5C9020C */  jal        SetDefDrawEnv
/* AD920 800BD120 40010724 */   addiu     $a3, $zero, 0x140
/* AD924 800BD124 1A100696 */  lhu        $a2, 0x101a($s0)
/* AD928 800BD128 18100796 */  lhu        $a3, 0x1018($s0)
/* AD92C 800BD12C 1000A6AF */  sw         $a2, 0x10($sp)
/* AD930 800BD130 5C000426 */  addiu      $a0, $s0, 0x5c
/* AD934 800BD134 E5C9020C */  jal        SetDefDrawEnv
/* AD938 800BD138 21280000 */   addu      $a1, $zero, $zero
/* AD93C 800BD13C 1A100696 */  lhu        $a2, 0x101a($s0)
/* AD940 800BD140 18100796 */  lhu        $a3, 0x1018($s0)
/* AD944 800BD144 1000A6AF */  sw         $a2, 0x10($sp)
/* AD948 800BD148 B8000426 */  addiu      $a0, $s0, 0xb8
/* AD94C 800BD14C 15CA020C */  jal        SetDefDispEnv
/* AD950 800BD150 21280000 */   addu      $a1, $zero, $zero
/* AD954 800BD154 18100796 */  lhu        $a3, 0x1018($s0)
/* AD958 800BD158 1A100296 */  lhu        $v0, 0x101a($s0)
/* AD95C 800BD15C 00000000 */  nop
/* AD960 800BD160 1000A2AF */  sw         $v0, 0x10($sp)
/* AD964 800BD164 CC000426 */  addiu      $a0, $s0, 0xcc
/* AD968 800BD168 21280000 */  addu       $a1, $zero, $zero
/* AD96C 800BD16C 15CA020C */  jal        SetDefDispEnv
/* AD970 800BD170 2130A000 */   addu      $a2, $a1, $zero
/* AD974 800BD174 01000224 */  addiu      $v0, $zero, 1
/* AD978 800BD178 180002A2 */  sb         $v0, 0x18($s0)
/* AD97C 800BD17C 190000A2 */  sb         $zero, 0x19($s0)
/* AD980 800BD180 1A0000A2 */  sb         $zero, 0x1a($s0)
/* AD984 800BD184 1B0000A2 */  sb         $zero, 0x1b($s0)
/* AD988 800BD188 740002A2 */  sb         $v0, 0x74($s0)
/* AD98C 800BD18C 750000A2 */  sb         $zero, 0x75($s0)
/* AD990 800BD190 760000A2 */  sb         $zero, 0x76($s0)
/* AD994 800BD194 FAF3020C */  jal        FUN_800bcfe8
/* AD998 800BD198 770000A2 */   sb        $zero, 0x77($s0)
/* AD99C 800BD19C B260000C */  jal        SetDispMask
/* AD9A0 800BD1A0 01000424 */   addiu     $a0, $zero, 1
/* AD9A4 800BD1A4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* AD9A8 800BD1A8 1800B08F */  lw         $s0, 0x18($sp)
/* AD9AC 800BD1AC 0800E003 */  jr         $ra
/* AD9B0 800BD1B0 2000BD27 */   addiu     $sp, $sp, 0x20
