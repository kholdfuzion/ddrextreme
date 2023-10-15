.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8006cbec
/* 5D3EC 8006CBEC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5D3F0 8006CBF0 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5D3F4 8006CBF4 40100400 */  sll        $v0, $a0, 1
/* 5D3F8 8006CBF8 21104400 */  addu       $v0, $v0, $a0
/* 5D3FC 8006CBFC 80100200 */  sll        $v0, $v0, 2
/* 5D400 8006CC00 23104400 */  subu       $v0, $v0, $a0
/* 5D404 8006CC04 80100200 */  sll        $v0, $v0, 2
/* 5D408 8006CC08 23104400 */  subu       $v0, $v0, $a0
/* 5D40C 8006CC0C 80100200 */  sll        $v0, $v0, 2
/* 5D410 8006CC10 21104400 */  addu       $v0, $v0, $a0
/* 5D414 8006CC14 80100200 */  sll        $v0, $v0, 2
/* 5D418 8006CC18 23104400 */  subu       $v0, $v0, $a0
/* 5D41C 8006CC1C 80100200 */  sll        $v0, $v0, 2
/* 5D420 8006CC20 80390700 */  sll        $a3, $a3, 6
/* 5D424 8006CC24 03310600 */  sra        $a2, $a2, 4
/* 5D428 8006CC28 3F00C630 */  andi       $a2, $a2, 0x3f
/* 5D42C 8006CC2C 2538E600 */  or         $a3, $a3, $a2
/* 5D430 8006CC30 80410300 */  sll        $t0, $v1, 6
/* 5D434 8006CC34 21400301 */  addu       $t0, $t0, $v1
/* 5D438 8006CC38 80400800 */  sll        $t0, $t0, 2
/* 5D43C 8006CC3C 23400301 */  subu       $t0, $t0, $v1
/* 5D440 8006CC40 C0400800 */  sll        $t0, $t0, 3
/* 5D444 8006CC44 21400301 */  addu       $t0, $t0, $v1
/* 5D448 8006CC48 C0400800 */  sll        $t0, $t0, 3
/* 5D44C 8006CC4C 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D450 8006CC50 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D454 8006CC54 21104300 */  addu       $v0, $v0, $v1
/* 5D458 8006CC58 21400201 */  addu       $t0, $t0, $v0
/* 5D45C 8006CC5C C0180500 */  sll        $v1, $a1, 3
/* 5D460 8006CC60 23186500 */  subu       $v1, $v1, $a1
/* 5D464 8006CC64 80180300 */  sll        $v1, $v1, 2
/* 5D468 8006CC68 21400301 */  addu       $t0, $t0, $v1
/* 5D46C 8006CC6C 0800E003 */  jr         $ra
/* 5D470 8006CC70 4A0007A5 */   sh        $a3, 0x4a($t0)
