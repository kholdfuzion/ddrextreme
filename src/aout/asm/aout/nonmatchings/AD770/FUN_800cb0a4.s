.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cb0a4
/* BB8A4 800CB0A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BB8A8 800CB0A8 21200000 */  addu       $a0, $zero, $zero
/* BB8AC 800CB0AC 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BB8B0 800CB0B0 6DF0020C */  jal        FUN_800bc1b4
/* BB8B4 800CB0B4 1800B0AF */   sw        $s0, 0x18($sp)
/* BB8B8 800CB0B8 21800000 */  addu       $s0, $zero, $zero
/* BB8BC 800CB0BC 21280002 */  addu       $a1, $s0, $zero
/* BB8C0 800CB0C0 2080073C */  lui        $a3, 0x8020
/* BB8C4 800CB0C4 6A1F063C */  lui        $a2, 0x1f6a
/* BB8C8 800CB0C8 401F0A3C */  lui        $t2, 0x1f40
/* BB8CC 800CB0CC 07000924 */  addiu      $t1, $zero, 7
/* BB8D0 800CB0D0 FDFF0824 */  addiu      $t0, $zero, -3
/* BB8D4 800CB0D4 21100000 */  addu       $v0, $zero, $zero
.L800CB0D8:
/* BB8D8 800CB0D8 FFFF4224 */  addiu      $v0, $v0, -1
.L800CB0DC:
/* BB8DC 800CB0DC FFFF4104 */  bgez       $v0, .L800CB0DC
/* BB8E0 800CB0E0 FFFF4224 */   addiu     $v0, $v0, -1
/* BB8E4 800CB0E4 A0BCE294 */  lhu        $v0, -0x4360($a3)
/* BB8E8 800CB0E8 00000000 */  nop
/* BB8EC 800CB0EC 02004234 */  ori        $v0, $v0, 2
/* BB8F0 800CB0F0 0000C2A4 */  sh         $v0, ($a2)
/* BB8F4 800CB0F4 0000C394 */  lhu        $v1, ($a2)
/* BB8F8 800CB0F8 21200000 */  addu       $a0, $zero, $zero
/* BB8FC 800CB0FC A0BCE2A4 */  sh         $v0, -0x4360($a3)
/* BB900 800CB100 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB904 800CB104 FFFF8424 */  addiu      $a0, $a0, -1
.L800CB108:
/* BB908 800CB108 FFFF8104 */  bgez       $a0, .L800CB108
/* BB90C 800CB10C FFFF8424 */   addiu     $a0, $a0, -1
/* BB910 800CB110 23202501 */  subu       $a0, $t1, $a1
/* BB914 800CB114 0100A524 */  addiu      $a1, $a1, 1
/* BB918 800CB118 A0BCE394 */  lhu        $v1, -0x4360($a3)
/* BB91C 800CB11C 06004295 */  lhu        $v0, 6($t2)
/* BB920 800CB120 24186800 */  and        $v1, $v1, $t0
/* BB924 800CB124 82100200 */  srl        $v0, $v0, 2
/* BB928 800CB128 01004230 */  andi       $v0, $v0, 1
/* BB92C 800CB12C 04108200 */  sllv       $v0, $v0, $a0
/* BB930 800CB130 25800202 */  or         $s0, $s0, $v0
/* BB934 800CB134 0000C3A4 */  sh         $v1, ($a2)
/* BB938 800CB138 0000C494 */  lhu        $a0, ($a2)
/* BB93C 800CB13C 0800A228 */  slti       $v0, $a1, 8
/* BB940 800CB140 A0BCE3A4 */  sh         $v1, -0x4360($a3)
/* BB944 800CB144 1000A4A7 */  sh         $a0, 0x10($sp)
/* BB948 800CB148 E3FF4014 */  bnez       $v0, .L800CB0D8
/* BB94C 800CB14C 21100000 */   addu      $v0, $zero, $zero
/* BB950 800CB150 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB954 800CB154 A0BCA294 */  lhu        $v0, %lo(D_801FBCA0)($a1)
/* BB958 800CB158 6A1F033C */  lui        $v1, 0x1f6a
/* BB95C 800CB15C FEFF4230 */  andi       $v0, $v0, 0xfffe
/* BB960 800CB160 000062A4 */  sh         $v0, ($v1)
/* BB964 800CB164 00006394 */  lhu        $v1, ($v1)
/* BB968 800CB168 A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BB96C 800CB16C 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB970 800CB170 6DF0020C */  jal        FUN_800bc1b4
/* BB974 800CB174 01000424 */   addiu     $a0, $zero, 1
/* BB978 800CB178 21100000 */  addu       $v0, $zero, $zero
/* BB97C 800CB17C FFFF4224 */  addiu      $v0, $v0, -1
.L800CB180:
/* BB980 800CB180 FFFF4104 */  bgez       $v0, .L800CB180
/* BB984 800CB184 FFFF4224 */   addiu     $v0, $v0, -1
/* BB988 800CB188 2080043C */  lui        $a0, %hi(D_801FBCA0)
/* BB98C 800CB18C A0BC8294 */  lhu        $v0, %lo(D_801FBCA0)($a0)
/* BB990 800CB190 6A1F033C */  lui        $v1, 0x1f6a
/* BB994 800CB194 02004234 */  ori        $v0, $v0, 2
/* BB998 800CB198 000062A4 */  sh         $v0, ($v1)
/* BB99C 800CB19C 00006394 */  lhu        $v1, ($v1)
/* BB9A0 800CB1A0 21280000 */  addu       $a1, $zero, $zero
/* BB9A4 800CB1A4 A0BC82A4 */  sh         $v0, -0x4360($a0)
/* BB9A8 800CB1A8 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB9AC 800CB1AC FFFFA524 */  addiu      $a1, $a1, -1
.L800CB1B0:
/* BB9B0 800CB1B0 FFFFA104 */  bgez       $a1, .L800CB1B0
/* BB9B4 800CB1B4 FFFFA524 */   addiu     $a1, $a1, -1
/* BB9B8 800CB1B8 2080053C */  lui        $a1, %hi(D_801FBCA0)
/* BB9BC 800CB1BC 6A1F033C */  lui        $v1, 0x1f6a
/* BB9C0 800CB1C0 A0BCA494 */  lhu        $a0, %lo(D_801FBCA0)($a1)
/* BB9C4 800CB1C4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BB9C8 800CB1C8 01008434 */  ori        $a0, $a0, 1
/* BB9CC 800CB1CC 000064A4 */  sh         $a0, ($v1)
/* BB9D0 800CB1D0 00006294 */  lhu        $v0, ($v1)
/* BB9D4 800CB1D4 A0BCA4A4 */  sh         $a0, -0x4360($a1)
/* BB9D8 800CB1D8 1000A2A7 */  sh         $v0, 0x10($sp)
/* BB9DC 800CB1DC FDFF8230 */  andi       $v0, $a0, 0xfffd
/* BB9E0 800CB1E0 000062A4 */  sh         $v0, ($v1)
/* BB9E4 800CB1E4 A0BCA2A4 */  sh         $v0, -0x4360($a1)
/* BB9E8 800CB1E8 21100002 */  addu       $v0, $s0, $zero
/* BB9EC 800CB1EC 00006394 */  lhu        $v1, ($v1)
/* BB9F0 800CB1F0 1800B08F */  lw         $s0, 0x18($sp)
/* BB9F4 800CB1F4 1000A3A7 */  sh         $v1, 0x10($sp)
/* BB9F8 800CB1F8 0800E003 */  jr         $ra
/* BB9FC 800CB1FC 2000BD27 */   addiu     $sp, $sp, 0x20
