.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel MulMatrix2
/* 3BCB0 8004B4B0 0000888C */  lw         $t0, ($a0)
/* 3BCB4 8004B4B4 0400898C */  lw         $t1, 4($a0)
/* 3BCB8 8004B4B8 08008A8C */  lw         $t2, 8($a0)
/* 3BCBC 8004B4BC 0C008B8C */  lw         $t3, 0xc($a0)
/* 3BCC0 8004B4C0 10008C8C */  lw         $t4, 0x10($a0)
/* 3BCC4 8004B4C4 0000C848 */  .byte      0x00, 0x00, 0xc8, 0x48
/* 3BCC8 8004B4C8 0008C948 */  .byte      0x00, 0x08, 0xc9, 0x48
/* 3BCCC 8004B4CC 0010CA48 */  .byte      0x00, 0x10, 0xca, 0x48
/* 3BCD0 8004B4D0 0018CB48 */  .byte      0x00, 0x18, 0xcb, 0x48
/* 3BCD4 8004B4D4 0020CC48 */  .byte      0x00, 0x20, 0xcc, 0x48
/* 3BCD8 8004B4D8 0000A894 */  lhu        $t0, ($a1)
/* 3BCDC 8004B4DC 0400A98C */  lw         $t1, 4($a1)
/* 3BCE0 8004B4E0 0C00AA8C */  lw         $t2, 0xc($a1)
/* 3BCE4 8004B4E4 FFFF013C */  lui        $at, 0xffff
/* 3BCE8 8004B4E8 24482101 */  and        $t1, $t1, $at
/* 3BCEC 8004B4EC 25400901 */  or         $t0, $t0, $t1
/* 3BCF0 8004B4F0 00008848 */  mtc2       $t0, $0
/* 3BCF4 8004B4F4 00088A48 */  mtc2       $t2, $1
/* 3BCF8 8004B4F8 00000000 */  nop
/* 3BCFC 8004B4FC 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BD00 8004B500 0200A894 */  lhu        $t0, 2($a1)
/* 3BD04 8004B504 0800A98C */  lw         $t1, 8($a1)
/* 3BD08 8004B508 0E00AA84 */  lh         $t2, 0xe($a1)
/* 3BD0C 8004B50C 004C0900 */  sll        $t1, $t1, 0x10
/* 3BD10 8004B510 25400901 */  or         $t0, $t0, $t1
/* 3BD14 8004B514 00480B48 */  mfc2       $t3, $9
/* 3BD18 8004B518 00500C48 */  mfc2       $t4, $10
/* 3BD1C 8004B51C 00580D48 */  mfc2       $t5, $11
/* 3BD20 8004B520 00008848 */  mtc2       $t0, $0
/* 3BD24 8004B524 00088A48 */  mtc2       $t2, $1
/* 3BD28 8004B528 00000000 */  nop
/* 3BD2C 8004B52C 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BD30 8004B530 0400A894 */  lhu        $t0, 4($a1)
/* 3BD34 8004B534 0800A98C */  lw         $t1, 8($a1)
/* 3BD38 8004B538 1000AA8C */  lw         $t2, 0x10($a1)
/* 3BD3C 8004B53C FFFF013C */  lui        $at, 0xffff
/* 3BD40 8004B540 24482101 */  and        $t1, $t1, $at
/* 3BD44 8004B544 25400901 */  or         $t0, $t0, $t1
/* 3BD48 8004B548 00480E48 */  mfc2       $t6, $9
/* 3BD4C 8004B54C 00500F48 */  mfc2       $t7, $10
/* 3BD50 8004B550 00581848 */  mfc2       $t8, $11
/* 3BD54 8004B554 00008848 */  mtc2       $t0, $0
/* 3BD58 8004B558 00088A48 */  mtc2       $t2, $1
/* 3BD5C 8004B55C 00000000 */  nop
/* 3BD60 8004B560 1260484A */  .byte      0x12, 0x60, 0x48, 0x4a
/* 3BD64 8004B564 FFFF6B31 */  andi       $t3, $t3, 0xffff
/* 3BD68 8004B568 00740E00 */  sll        $t6, $t6, 0x10
/* 3BD6C 8004B56C 2570CB01 */  or         $t6, $t6, $t3
/* 3BD70 8004B570 0000AEAC */  sw         $t6, ($a1)
/* 3BD74 8004B574 FFFFAD31 */  andi       $t5, $t5, 0xffff
/* 3BD78 8004B578 00C41800 */  sll        $t8, $t8, 0x10
/* 3BD7C 8004B57C 25C00D03 */  or         $t8, $t8, $t5
/* 3BD80 8004B580 0C00B8AC */  sw         $t8, 0xc($a1)
/* 3BD84 8004B584 00480848 */  mfc2       $t0, $9
/* 3BD88 8004B588 00500948 */  mfc2       $t1, $10
/* 3BD8C 8004B58C FFFF0831 */  andi       $t0, $t0, 0xffff
/* 3BD90 8004B590 00640C00 */  sll        $t4, $t4, 0x10
/* 3BD94 8004B594 25400C01 */  or         $t0, $t0, $t4
/* 3BD98 8004B598 0400A8AC */  sw         $t0, 4($a1)
/* 3BD9C 8004B59C FFFFEF31 */  andi       $t7, $t7, 0xffff
/* 3BDA0 8004B5A0 004C0900 */  sll        $t1, $t1, 0x10
/* 3BDA4 8004B5A4 25482F01 */  or         $t1, $t1, $t7
/* 3BDA8 8004B5A8 0800A9AC */  sw         $t1, 8($a1)
/* 3BDAC 8004B5AC 1000ABE8 */  swc2       $11, 0x10($a1)
/* 3BDB0 8004B5B0 2110A000 */  addu       $v0, $a1, $zero
/* 3BDB4 8004B5B4 0800E003 */  jr         $ra
/* 3BDB8 8004B5B8 00000000 */   nop
/* 3BDBC 8004B5BC 00000000 */  nop
