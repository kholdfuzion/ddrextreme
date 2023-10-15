.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MulMatrix
/* 3BBA0 8004B3A0 0000888C */  lw         $t0, ($a0)
/* 3BBA4 8004B3A4 0400898C */  lw         $t1, 4($a0)
/* 3BBA8 8004B3A8 08008A8C */  lw         $t2, 8($a0)
/* 3BBAC 8004B3AC 0C008B8C */  lw         $t3, 0xc($a0)
/* 3BBB0 8004B3B0 10008C8C */  lw         $t4, 0x10($a0)
/* 3BBB4 8004B3B4 0000C848 */  .byte      0x00, 0x00, 0xc8, 0x48
/* 3BBB8 8004B3B8 0008C948 */  .byte      0x00, 0x08, 0xc9, 0x48
/* 3BBBC 8004B3BC 0010CA48 */  .byte      0x00, 0x10, 0xca, 0x48
/* 3BBC0 8004B3C0 0018CB48 */  .byte      0x00, 0x18, 0xcb, 0x48
/* 3BBC4 8004B3C4 0020CC48 */  .byte      0x00, 0x20, 0xcc, 0x48
/* 3BBC8 8004B3C8 0000A894 */  lhu        $t0, ($a1)
/* 3BBCC 8004B3CC 0400A98C */  lw         $t1, 4($a1)
/* 3BBD0 8004B3D0 0C00AA8C */  lw         $t2, 0xc($a1)
/* 3BBD4 8004B3D4 FFFF013C */  lui        $at, 0xffff
/* 3BBD8 8004B3D8 24482101 */  and        $t1, $t1, $at
/* 3BBDC 8004B3DC 25400901 */  or         $t0, $t0, $t1
/* 3BBE0 8004B3E0 00008848 */  mtc2       $t0, $0
/* 3BBE4 8004B3E4 00088A48 */  mtc2       $t2, $1
/* 3BBE8 8004B3E8 00000000 */  nop
/* 3BBEC 8004B3EC 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BBF0 8004B3F0 0200A894 */  lhu        $t0, 2($a1)
/* 3BBF4 8004B3F4 0800A98C */  lw         $t1, 8($a1)
/* 3BBF8 8004B3F8 0E00AA84 */  lh         $t2, 0xe($a1)
/* 3BBFC 8004B3FC 004C0900 */  sll        $t1, $t1, 0x10
/* 3BC00 8004B400 25400901 */  or         $t0, $t0, $t1
/* 3BC04 8004B404 00480B48 */  mfc2       $t3, $9
/* 3BC08 8004B408 00500C48 */  mfc2       $t4, $10
/* 3BC0C 8004B40C 00580D48 */  mfc2       $t5, $11
/* 3BC10 8004B410 00008848 */  mtc2       $t0, $0
/* 3BC14 8004B414 00088A48 */  mtc2       $t2, $1
/* 3BC18 8004B418 00000000 */  nop
/* 3BC1C 8004B41C 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BC20 8004B420 0400A894 */  lhu        $t0, 4($a1)
/* 3BC24 8004B424 0800A98C */  lw         $t1, 8($a1)
/* 3BC28 8004B428 1000AA8C */  lw         $t2, 0x10($a1)
/* 3BC2C 8004B42C FFFF013C */  lui        $at, 0xffff
/* 3BC30 8004B430 24482101 */  and        $t1, $t1, $at
/* 3BC34 8004B434 25400901 */  or         $t0, $t0, $t1
/* 3BC38 8004B438 00480E48 */  mfc2       $t6, $9
/* 3BC3C 8004B43C 00500F48 */  mfc2       $t7, $10
/* 3BC40 8004B440 00581848 */  mfc2       $t8, $11
/* 3BC44 8004B444 00008848 */  mtc2       $t0, $0
/* 3BC48 8004B448 00088A48 */  mtc2       $t2, $1
/* 3BC4C 8004B44C 00000000 */  nop
/* 3BC50 8004B450 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BC54 8004B454 FFFF6B31 */  andi       $t3, $t3, 0xffff
/* 3BC58 8004B458 00740E00 */  sll        $t6, $t6, 0x10
/* 3BC5C 8004B45C 2570CB01 */  or         $t6, $t6, $t3
/* 3BC60 8004B460 00008EAC */  sw         $t6, ($a0)
/* 3BC64 8004B464 FFFFAD31 */  andi       $t5, $t5, 0xffff
/* 3BC68 8004B468 00C41800 */  sll        $t8, $t8, 0x10
/* 3BC6C 8004B46C 25C00D03 */  or         $t8, $t8, $t5
/* 3BC70 8004B470 0C0098AC */  sw         $t8, 0xc($a0)
/* 3BC74 8004B474 00480848 */  mfc2       $t0, $9
/* 3BC78 8004B478 00500948 */  mfc2       $t1, $10
/* 3BC7C 8004B47C FFFF0831 */  andi       $t0, $t0, 0xffff
/* 3BC80 8004B480 00640C00 */  sll        $t4, $t4, 0x10
/* 3BC84 8004B484 25400C01 */  or         $t0, $t0, $t4
/* 3BC88 8004B488 040088AC */  sw         $t0, 4($a0)
/* 3BC8C 8004B48C FFFFEF31 */  andi       $t7, $t7, 0xffff
/* 3BC90 8004B490 004C0900 */  sll        $t1, $t1, 0x10
/* 3BC94 8004B494 25482F01 */  or         $t1, $t1, $t7
/* 3BC98 8004B498 080089AC */  sw         $t1, 8($a0)
/* 3BC9C 8004B49C 10008BE8 */  swc2       $11, 0x10($a0)
/* 3BCA0 8004B4A0 21108000 */  addu       $v0, $a0, $zero
/* 3BCA4 8004B4A4 0800E003 */  jr         $ra
/* 3BCA8 8004B4A8 00000000 */   nop
/* 3BCAC 8004B4AC 00000000 */  nop
