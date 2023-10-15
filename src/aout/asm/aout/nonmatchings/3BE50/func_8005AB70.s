.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005AB70
/* 4B370 8005AB70 0F000224 */  addiu      $v0, $zero, 0xf
/* 4B374 8005AB74 1E00A214 */  bne        $a1, $v0, .L8005ABF0
/* 4B378 8005AB78 21308000 */   addu      $a2, $a0, $zero
/* 4B37C 8005AB7C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B380 8005AB80 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B384 8005AB84 80100600 */  sll        $v0, $a2, 2
/* 4B388 8005AB88 21104600 */  addu       $v0, $v0, $a2
/* 4B38C 8005AB8C C0100200 */  sll        $v0, $v0, 3
/* 4B390 8005AB90 21104600 */  addu       $v0, $v0, $a2
/* 4B394 8005AB94 C0100200 */  sll        $v0, $v0, 3
/* 4B398 8005AB98 23104600 */  subu       $v0, $v0, $a2
/* 4B39C 8005AB9C 80100200 */  sll        $v0, $v0, 2
/* 4B3A0 8005ABA0 21104600 */  addu       $v0, $v0, $a2
/* 4B3A4 8005ABA4 C0100200 */  sll        $v0, $v0, 3
/* 4B3A8 8005ABA8 40200300 */  sll        $a0, $v1, 1
/* 4B3AC 8005ABAC 21208300 */  addu       $a0, $a0, $v1
/* 4B3B0 8005ABB0 C0200400 */  sll        $a0, $a0, 3
/* 4B3B4 8005ABB4 23208300 */  subu       $a0, $a0, $v1
/* 4B3B8 8005ABB8 C0210400 */  sll        $a0, $a0, 7
/* 4B3BC 8005ABBC 21208300 */  addu       $a0, $a0, $v1
/* 4B3C0 8005ABC0 80200400 */  sll        $a0, $a0, 2
/* 4B3C4 8005ABC4 21208300 */  addu       $a0, $a0, $v1
/* 4B3C8 8005ABC8 C0200400 */  sll        $a0, $a0, 3
/* 4B3CC 8005ABCC 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B3D0 8005ABD0 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B3D4 8005ABD4 21104300 */  addu       $v0, $v0, $v1
/* 4B3D8 8005ABD8 21208200 */  addu       $a0, $a0, $v0
/* 4B3DC 8005ABDC A22880A4 */  sh         $zero, 0x28a2($a0)
/* 4B3E0 8005ABE0 A42885A0 */  sb         $a1, 0x28a4($a0)
/* 4B3E4 8005ABE4 A02880A4 */  sh         $zero, 0x28a0($a0)
/* 4B3E8 8005ABE8 0800E003 */  jr         $ra
/* 4B3EC 8005ABEC A52880A0 */   sb        $zero, 0x28a5($a0)
.L8005ABF0:
/* 4B3F0 8005ABF0 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B3F4 8005ABF4 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B3F8 8005ABF8 80100600 */  sll        $v0, $a2, 2
/* 4B3FC 8005ABFC 21104600 */  addu       $v0, $v0, $a2
/* 4B400 8005AC00 C0100200 */  sll        $v0, $v0, 3
/* 4B404 8005AC04 21104600 */  addu       $v0, $v0, $a2
/* 4B408 8005AC08 C0100200 */  sll        $v0, $v0, 3
/* 4B40C 8005AC0C 23104600 */  subu       $v0, $v0, $a2
/* 4B410 8005AC10 80100200 */  sll        $v0, $v0, 2
/* 4B414 8005AC14 21104600 */  addu       $v0, $v0, $a2
/* 4B418 8005AC18 C0100200 */  sll        $v0, $v0, 3
/* 4B41C 8005AC1C 40200300 */  sll        $a0, $v1, 1
/* 4B420 8005AC20 21208300 */  addu       $a0, $a0, $v1
/* 4B424 8005AC24 C0200400 */  sll        $a0, $a0, 3
/* 4B428 8005AC28 23208300 */  subu       $a0, $a0, $v1
/* 4B42C 8005AC2C C0210400 */  sll        $a0, $a0, 7
/* 4B430 8005AC30 21208300 */  addu       $a0, $a0, $v1
/* 4B434 8005AC34 80200400 */  sll        $a0, $a0, 2
/* 4B438 8005AC38 21208300 */  addu       $a0, $a0, $v1
/* 4B43C 8005AC3C C0200400 */  sll        $a0, $a0, 3
/* 4B440 8005AC40 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B444 8005AC44 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B448 8005AC48 21104300 */  addu       $v0, $v0, $v1
/* 4B44C 8005AC4C 21208200 */  addu       $a0, $a0, $v0
/* 4B450 8005AC50 A4288390 */  lbu        $v1, 0x28a4($a0)
/* 4B454 8005AC54 00000000 */  nop
/* 4B458 8005AC58 04006510 */  beq        $v1, $a1, .L8005AC6C
/* 4B45C 8005AC5C 01000224 */   addiu     $v0, $zero, 1
/* 4B460 8005AC60 A22880A4 */  sh         $zero, 0x28a2($a0)
/* 4B464 8005AC64 A42885A0 */  sb         $a1, 0x28a4($a0)
/* 4B468 8005AC68 A52882A0 */  sb         $v0, 0x28a5($a0)
.L8005AC6C:
/* 4B46C 8005AC6C 0800E003 */  jr         $ra
/* 4B470 8005AC70 00000000 */   nop
