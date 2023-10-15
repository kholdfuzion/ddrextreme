.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b0dc
/* 4B8DC 8005B0DC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4B8E0 8005B0E0 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4B8E4 8005B0E4 80100400 */  sll        $v0, $a0, 2
/* 4B8E8 8005B0E8 21104400 */  addu       $v0, $v0, $a0
/* 4B8EC 8005B0EC C0100200 */  sll        $v0, $v0, 3
/* 4B8F0 8005B0F0 21104400 */  addu       $v0, $v0, $a0
/* 4B8F4 8005B0F4 C0100200 */  sll        $v0, $v0, 3
/* 4B8F8 8005B0F8 23104400 */  subu       $v0, $v0, $a0
/* 4B8FC 8005B0FC 80100200 */  sll        $v0, $v0, 2
/* 4B900 8005B100 21104400 */  addu       $v0, $v0, $a0
/* 4B904 8005B104 C0100200 */  sll        $v0, $v0, 3
/* 4B908 8005B108 40300300 */  sll        $a2, $v1, 1
/* 4B90C 8005B10C 2130C300 */  addu       $a2, $a2, $v1
/* 4B910 8005B110 C0300600 */  sll        $a2, $a2, 3
/* 4B914 8005B114 2330C300 */  subu       $a2, $a2, $v1
/* 4B918 8005B118 C0310600 */  sll        $a2, $a2, 7
/* 4B91C 8005B11C 2130C300 */  addu       $a2, $a2, $v1
/* 4B920 8005B120 80300600 */  sll        $a2, $a2, 2
/* 4B924 8005B124 2130C300 */  addu       $a2, $a2, $v1
/* 4B928 8005B128 C0300600 */  sll        $a2, $a2, 3
/* 4B92C 8005B12C 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B930 8005B130 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B934 8005B134 21104300 */  addu       $v0, $v0, $v1
/* 4B938 8005B138 2130C200 */  addu       $a2, $a2, $v0
/* 4B93C 8005B13C 0800E003 */  jr         $ra
/* 4B940 8005B140 BC28C5A4 */   sh        $a1, 0x28bc($a2)
