.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005a2f8
/* 4AAF8 8005A2F8 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4AAFC 8005A2FC A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4AB00 8005A300 80100400 */  sll        $v0, $a0, 2
/* 4AB04 8005A304 21104400 */  addu       $v0, $v0, $a0
/* 4AB08 8005A308 C0100200 */  sll        $v0, $v0, 3
/* 4AB0C 8005A30C 21104400 */  addu       $v0, $v0, $a0
/* 4AB10 8005A310 C0100200 */  sll        $v0, $v0, 3
/* 4AB14 8005A314 23104400 */  subu       $v0, $v0, $a0
/* 4AB18 8005A318 80100200 */  sll        $v0, $v0, 2
/* 4AB1C 8005A31C 21104400 */  addu       $v0, $v0, $a0
/* 4AB20 8005A320 C0100200 */  sll        $v0, $v0, 3
/* 4AB24 8005A324 40280300 */  sll        $a1, $v1, 1
/* 4AB28 8005A328 2128A300 */  addu       $a1, $a1, $v1
/* 4AB2C 8005A32C C0280500 */  sll        $a1, $a1, 3
/* 4AB30 8005A330 2328A300 */  subu       $a1, $a1, $v1
/* 4AB34 8005A334 C0290500 */  sll        $a1, $a1, 7
/* 4AB38 8005A338 2128A300 */  addu       $a1, $a1, $v1
/* 4AB3C 8005A33C 80280500 */  sll        $a1, $a1, 2
/* 4AB40 8005A340 2128A300 */  addu       $a1, $a1, $v1
/* 4AB44 8005A344 C0280500 */  sll        $a1, $a1, 3
/* 4AB48 8005A348 1780033C */  lui        $v1, %hi(D_80172958)
/* 4AB4C 8005A34C 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4AB50 8005A350 21104300 */  addu       $v0, $v0, $v1
/* 4AB54 8005A354 2128A200 */  addu       $a1, $a1, $v0
/* 4AB58 8005A358 A428A390 */  lbu        $v1, 0x28a4($a1)
/* 4AB5C 8005A35C 00000000 */  nop
/* 4AB60 8005A360 1200622C */  sltiu      $v0, $v1, 0x12
/* 4AB64 8005A364 1E004010 */  beqz       $v0, .L8005A3E0
/* 4AB68 8005A368 A000A824 */   addiu     $t0, $a1, 0xa0
/* 4AB6C 8005A36C 0180023C */  lui        $v0, %hi(D_80013FE4)
/* 4AB70 8005A370 E43F4224 */  addiu      $v0, $v0, %lo(D_80013FE4)
/* 4AB74 8005A374 80180300 */  sll        $v1, $v1, 2
/* 4AB78 8005A378 21186200 */  addu       $v1, $v1, $v0
/* 4AB7C 8005A37C 0000648C */  lw         $a0, ($v1)
/* 4AB80 8005A380 00000000 */  nop
/* 4AB84 8005A384 08008000 */  jr         $a0
/* 4AB88 8005A388 00000000 */   nop
/* 4AB8C 8005A38C 21300000 */  addu       $a2, $zero, $zero
/* 4AB90 8005A390 C028A28C */  lw         $v0, 0x28c0($a1)
/* 4AB94 8005A394 A028A384 */  lh         $v1, 0x28a0($a1)
/* 4AB98 8005A398 00000000 */  nop
/* 4AB9C 8005A39C 10006018 */  blez       $v1, .L8005A3E0
/* 4ABA0 8005A3A0 07004730 */   andi      $a3, $v0, 7
/* 4ABA4 8005A3A4 0E000425 */  addiu      $a0, $t0, 0xe
.L8005A3A8:
/* 4ABA8 8005A3A8 0100C624 */  addiu      $a2, $a2, 1
/* 4ABAC 8005A3AC BA28A294 */  lhu        $v0, 0x28ba($a1)
/* 4ABB0 8005A3B0 B828A394 */  lhu        $v1, 0x28b8($a1)
/* 4ABB4 8005A3B4 21104700 */  addu       $v0, $v0, $a3
/* 4ABB8 8005A3B8 80110200 */  sll        $v0, $v0, 6
/* 4ABBC 8005A3BC 02190300 */  srl        $v1, $v1, 4
/* 4ABC0 8005A3C0 3F006330 */  andi       $v1, $v1, 0x3f
/* 4ABC4 8005A3C4 25104300 */  or         $v0, $v0, $v1
/* 4ABC8 8005A3C8 000082A4 */  sh         $v0, ($a0)
/* 4ABCC 8005A3CC A028A384 */  lh         $v1, 0x28a0($a1)
/* 4ABD0 8005A3D0 00000000 */  nop
/* 4ABD4 8005A3D4 2A18C300 */  slt        $v1, $a2, $v1
/* 4ABD8 8005A3D8 F3FF6014 */  bnez       $v1, .L8005A3A8
/* 4ABDC 8005A3DC 28008424 */   addiu     $a0, $a0, 0x28
.L8005A3E0:
/* 4ABE0 8005A3E0 0800E003 */  jr         $ra
/* 4ABE4 8005A3E4 00000000 */   nop
/* 4ABE8 8005A3E8 B828A28C */  lw         $v0, 0x28b8($a1)
/* 4ABEC 8005A3EC 00000000 */  nop
/* 4ABF0 8005A3F0 09004014 */  bnez       $v0, .L8005A418
/* 4ABF4 8005A3F4 21300000 */   addu      $a2, $zero, $zero
/* 4ABF8 8005A3F8 FF000624 */  addiu      $a2, $zero, 0xff
/* 4ABFC 8005A3FC E6270225 */  addiu      $v0, $t0, 0x27e6
.L8005A400:
/* 4AC00 8005A400 000040A4 */  sh         $zero, ($v0)
/* 4AC04 8005A404 FFFFC624 */  addiu      $a2, $a2, -1
/* 4AC08 8005A408 FDFFC104 */  bgez       $a2, .L8005A400
/* 4AC0C 8005A40C D8FF4224 */   addiu     $v0, $v0, -0x28
/* 4AC10 8005A410 0800E003 */  jr         $ra
/* 4AC14 8005A414 00000000 */   nop
.L8005A418:
/* 4AC18 8005A418 BA28A284 */  lh         $v0, 0x28ba($a1)
/* 4AC1C 8005A41C B828A394 */  lhu        $v1, 0x28b8($a1)
/* 4AC20 8005A420 A028A484 */  lh         $a0, 0x28a0($a1)
/* 4AC24 8005A424 80110200 */  sll        $v0, $v0, 6
/* 4AC28 8005A428 02190300 */  srl        $v1, $v1, 4
/* 4AC2C 8005A42C 3F006330 */  andi       $v1, $v1, 0x3f
/* 4AC30 8005A430 EBFF8018 */  blez       $a0, .L8005A3E0
/* 4AC34 8005A434 25384300 */   or        $a3, $v0, $v1
/* 4AC38 8005A438 0E000325 */  addiu      $v1, $t0, 0xe
.L8005A43C:
/* 4AC3C 8005A43C 000067A4 */  sh         $a3, ($v1)
/* 4AC40 8005A440 A028A284 */  lh         $v0, 0x28a0($a1)
/* 4AC44 8005A444 0100C624 */  addiu      $a2, $a2, 1
/* 4AC48 8005A448 2A10C200 */  slt        $v0, $a2, $v0
/* 4AC4C 8005A44C FBFF4014 */  bnez       $v0, .L8005A43C
/* 4AC50 8005A450 28006324 */   addiu     $v1, $v1, 0x28
/* 4AC54 8005A454 0800E003 */  jr         $ra
/* 4AC58 8005A458 00000000 */   nop
