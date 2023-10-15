.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b3ac
/* 4BBAC 8005B3AC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4BBB0 8005B3B0 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4BBB4 8005B3B4 80100400 */  sll        $v0, $a0, 2
/* 4BBB8 8005B3B8 21104400 */  addu       $v0, $v0, $a0
/* 4BBBC 8005B3BC C0100200 */  sll        $v0, $v0, 3
/* 4BBC0 8005B3C0 21104400 */  addu       $v0, $v0, $a0
/* 4BBC4 8005B3C4 C0100200 */  sll        $v0, $v0, 3
/* 4BBC8 8005B3C8 23104400 */  subu       $v0, $v0, $a0
/* 4BBCC 8005B3CC 80100200 */  sll        $v0, $v0, 2
/* 4BBD0 8005B3D0 21104400 */  addu       $v0, $v0, $a0
/* 4BBD4 8005B3D4 C0100200 */  sll        $v0, $v0, 3
/* 4BBD8 8005B3D8 40400300 */  sll        $t0, $v1, 1
/* 4BBDC 8005B3DC 21400301 */  addu       $t0, $t0, $v1
/* 4BBE0 8005B3E0 C0400800 */  sll        $t0, $t0, 3
/* 4BBE4 8005B3E4 23400301 */  subu       $t0, $t0, $v1
/* 4BBE8 8005B3E8 C0410800 */  sll        $t0, $t0, 7
/* 4BBEC 8005B3EC 21400301 */  addu       $t0, $t0, $v1
/* 4BBF0 8005B3F0 80400800 */  sll        $t0, $t0, 2
/* 4BBF4 8005B3F4 21400301 */  addu       $t0, $t0, $v1
/* 4BBF8 8005B3F8 C0400800 */  sll        $t0, $t0, 3
/* 4BBFC 8005B3FC 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BC00 8005B400 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BC04 8005B404 21104300 */  addu       $v0, $v0, $v1
/* 4BC08 8005B408 21400201 */  addu       $t0, $t0, $v0
/* 4BC0C 8005B40C A0000825 */  addiu      $t0, $t0, 0xa0
/* 4BC10 8005B410 80100500 */  sll        $v0, $a1, 2
/* 4BC14 8005B414 21104500 */  addu       $v0, $v0, $a1
/* 4BC18 8005B418 C0100200 */  sll        $v0, $v0, 3
/* 4BC1C 8005B41C 1000A38F */  lw         $v1, 0x10($sp)
/* 4BC20 8005B420 21104800 */  addu       $v0, $v0, $t0
/* 4BC24 8005B424 040046A0 */  sb         $a2, 4($v0)
/* 4BC28 8005B428 050047A0 */  sb         $a3, 5($v0)
/* 4BC2C 8005B42C 0800E003 */  jr         $ra
/* 4BC30 8005B430 060043A0 */   sb        $v1, 6($v0)
