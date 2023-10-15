.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042d20
/* 33520 80042D20 D8EFBD27 */  addiu      $sp, $sp, -0x1028
/* 33524 80042D24 21480000 */  addu       $t1, $zero, $zero
/* 33528 80042D28 100EAE27 */  addiu      $t6, $sp, 0xe10
/* 3352C 80042D2C 1810B0AF */  sw         $s0, 0x1018($sp)
/* 33530 80042D30 1780103C */  lui        $s0, 0x8017
/* 33534 80042D34 1C10B1AF */  sw         $s1, 0x101c($sp)
/* 33538 80042D38 1010B127 */  addiu      $s1, $sp, 0x1010
/* 3353C 80042D3C 1000AC27 */  addiu      $t4, $sp, 0x10
/* 33540 80042D40 21588001 */  addu       $t3, $t4, $zero
/* 33544 80042D44 0E80023C */  lui        $v0, %hi(D_800D99BC)
/* 33548 80042D48 BC994D24 */  addiu      $t5, $v0, %lo(D_800D99BC)
/* 3354C 80042D4C 21500000 */  addu       $t2, $zero, $zero
/* 33550 80042D50 2010BFAF */  sw         $ra, 0x1020($sp)
.L80042D54:
/* 33554 80042D54 21380000 */  addu       $a3, $zero, $zero
/* 33558 80042D58 21404D01 */  addu       $t0, $t2, $t5
.L80042D5C:
/* 3355C 80042D5C 02002105 */  bgez       $t1, .L80042D68
/* 33560 80042D60 21102001 */   addu      $v0, $t1, $zero
/* 33564 80042D64 0F002225 */  addiu      $v0, $t1, 0xf
.L80042D68:
/* 33568 80042D68 00000695 */  lhu        $a2, ($t0)
/* 3356C 80042D6C 02000825 */  addiu      $t0, $t0, 2
/* 33570 80042D70 C2270700 */  srl        $a0, $a3, 0x1f
/* 33574 80042D74 2120E400 */  addu       $a0, $a3, $a0
/* 33578 80042D78 43200400 */  sra        $a0, $a0, 1
/* 3357C 80042D7C 40280400 */  sll        $a1, $a0, 1
/* 33580 80042D80 2328E500 */  subu       $a1, $a3, $a1
/* 33584 80042D84 0100E724 */  addiu      $a3, $a3, 1
/* 33588 80042D88 03110200 */  sra        $v0, $v0, 4
/* 3358C 80042D8C 001A0200 */  sll        $v1, $v0, 8
/* 33590 80042D90 00110200 */  sll        $v0, $v0, 4
/* 33594 80042D94 23102201 */  subu       $v0, $t1, $v0
/* 33598 80042D98 40100200 */  sll        $v0, $v0, 1
/* 3359C 80042D9C 21186200 */  addu       $v1, $v1, $v0
/* 335A0 80042DA0 40210400 */  sll        $a0, $a0, 5
/* 335A4 80042DA4 21186400 */  addu       $v1, $v1, $a0
/* 335A8 80042DA8 21186500 */  addu       $v1, $v1, $a1
/* 335AC 80042DAC 40180300 */  sll        $v1, $v1, 1
/* 335B0 80042DB0 21186301 */  addu       $v1, $t3, $v1
/* 335B4 80042DB4 1000E228 */  slti       $v0, $a3, 0x10
/* 335B8 80042DB8 E8FF4014 */  bnez       $v0, .L80042D5C
/* 335BC 80042DBC 000066A4 */   sh        $a2, ($v1)
/* 335C0 80042DC0 01002925 */  addiu      $t1, $t1, 1
/* 335C4 80042DC4 61002229 */  slti       $v0, $t1, 0x61
/* 335C8 80042DC8 E2FF4014 */  bnez       $v0, .L80042D54
/* 335CC 80042DCC 20004A25 */   addiu     $t2, $t2, 0x20
/* 335D0 80042DD0 FF000924 */  addiu      $t1, $zero, 0xff
/* 335D4 80042DD4 FE01C225 */  addiu      $v0, $t6, 0x1fe
.L80042DD8:
/* 335D8 80042DD8 000040A4 */  sh         $zero, ($v0)
/* 335DC 80042DDC FFFF2925 */  addiu      $t1, $t1, -1
/* 335E0 80042DE0 FDFF2105 */  bgez       $t1, .L80042DD8
/* 335E4 80042DE4 FEFF4224 */   addiu     $v0, $v0, -2
/* 335E8 80042DE8 21202002 */  addu       $a0, $s1, $zero
/* 335EC 80042DEC 21288001 */  addu       $a1, $t4, $zero
/* 335F0 80042DF0 FF7F0224 */  addiu      $v0, $zero, 0x7fff
/* 335F4 80042DF4 007C0324 */  addiu      $v1, $zero, 0x7c00
/* 335F8 80042DF8 120EA2A7 */  sh         $v0, 0xe12($sp)
/* 335FC 80042DFC 1F000224 */  addiu      $v0, $zero, 0x1f
/* 33600 80042E00 320EA3A7 */  sh         $v1, 0xe32($sp)
/* 33604 80042E04 E0030324 */  addiu      $v1, $zero, 0x3e0
/* 33608 80042E08 FF030824 */  addiu      $t0, $zero, 0x3ff
/* 3360C 80042E0C 520EA2A7 */  sh         $v0, 0xe52($sp)
/* 33610 80042E10 E07F0224 */  addiu      $v0, $zero, 0x7fe0
/* 33614 80042E14 720EA3A7 */  sh         $v1, 0xe72($sp)
/* 33618 80042E18 1F7C0324 */  addiu      $v1, $zero, 0x7c1f
/* 3361C 80042E1C B20EA2A7 */  sh         $v0, 0xeb2($sp)
/* 33620 80042E20 EF3D0224 */  addiu      $v0, $zero, 0x3def
/* 33624 80042E24 D20EA3A7 */  sh         $v1, 0xed2($sp)
/* 33628 80042E28 003C0324 */  addiu      $v1, $zero, 0x3c00
/* 3362C 80042E2C 120FA2A7 */  sh         $v0, 0xf12($sp)
/* 33630 80042E30 0F000224 */  addiu      $v0, $zero, 0xf
/* 33634 80042E34 320FA3A7 */  sh         $v1, 0xf32($sp)
/* 33638 80042E38 E0010324 */  addiu      $v1, $zero, 0x1e0
/* 3363C 80042E3C 10EB00A6 */  sh         $zero, -0x14f0($s0)
/* 33640 80042E40 10EB1026 */  addiu      $s0, $s0, -0x14f0
/* 33644 80042E44 00030724 */  addiu      $a3, $zero, 0x300
/* 33648 80042E48 20000624 */  addiu      $a2, $zero, 0x20
/* 3364C 80042E4C 720FA3A7 */  sh         $v1, 0xf72($sp)
/* 33650 80042E50 38000324 */  addiu      $v1, $zero, 0x38
/* 33654 80042E54 520FA2A7 */  sh         $v0, 0xf52($sp)
/* 33658 80042E58 10000224 */  addiu      $v0, $zero, 0x10
/* 3365C 80042E5C 920EA8A7 */  sh         $t0, 0xe92($sp)
/* 33660 80042E60 F20EA0A7 */  sh         $zero, 0xef2($sp)
/* 33664 80042E64 100002AE */  sw         $v0, 0x10($s0)
/* 33668 80042E68 0E80023C */  lui        $v0, %hi(D_800DA5DC)
/* 3366C 80042E6C DCA54224 */  addiu      $v0, $v0, %lo(D_800DA5DC)
/* 33670 80042E70 020007A6 */  sh         $a3, 2($s0)
/* 33674 80042E74 040006A6 */  sh         $a2, 4($s0)
/* 33678 80042E78 060003A6 */  sh         $v1, 6($s0)
/* 3367C 80042E7C 08000CAE */  sw         $t4, 8($s0)
/* 33680 80042E80 0C0000A6 */  sh         $zero, 0xc($s0)
/* 33684 80042E84 0E0008A6 */  sh         $t0, 0xe($s0)
/* 33688 80042E88 14000EAE */  sw         $t6, 0x14($s0)
/* 3368C 80042E8C 180002AE */  sw         $v0, 0x18($s0)
/* 33690 80042E90 1010A0A7 */  sh         $zero, 0x1010($sp)
/* 33694 80042E94 1210A7A7 */  sh         $a3, 0x1012($sp)
/* 33698 80042E98 1410A6A7 */  sh         $a2, 0x1014($sp)
/* 3369C 80042E9C 8361000C */  jal        LoadImage
/* 336A0 80042EA0 1610A3A7 */   sh        $v1, 0x1016($sp)
/* 336A4 80042EA4 D860000C */  jal        DrawSync
/* 336A8 80042EA8 21200000 */   addu      $a0, $zero, $zero
/* 336AC 80042EAC 7CAA000C */  jal        vsync_8002a9f0
/* 336B0 80042EB0 00000000 */   nop
/* 336B4 80042EB4 21202002 */  addu       $a0, $s1, $zero
/* 336B8 80042EB8 1400058E */  lw         $a1, 0x14($s0)
/* 336BC 80042EBC 0C000696 */  lhu        $a2, 0xc($s0)
/* 336C0 80042EC0 0E000796 */  lhu        $a3, 0xe($s0)
/* 336C4 80042EC4 1000038E */  lw         $v1, 0x10($s0)
/* 336C8 80042EC8 01000224 */  addiu      $v0, $zero, 1
/* 336CC 80042ECC 1610A2A7 */  sh         $v0, 0x1016($sp)
/* 336D0 80042ED0 00190300 */  sll        $v1, $v1, 4
/* 336D4 80042ED4 1010A6A7 */  sh         $a2, 0x1010($sp)
/* 336D8 80042ED8 1210A7A7 */  sh         $a3, 0x1012($sp)
/* 336DC 80042EDC 8361000C */  jal        LoadImage
/* 336E0 80042EE0 1410A3A7 */   sh        $v1, 0x1014($sp)
/* 336E4 80042EE4 D860000C */  jal        DrawSync
/* 336E8 80042EE8 21200000 */   addu      $a0, $zero, $zero
/* 336EC 80042EEC 7CAA000C */  jal        vsync_8002a9f0
/* 336F0 80042EF0 00000000 */   nop
/* 336F4 80042EF4 2010BF8F */  lw         $ra, 0x1020($sp)
/* 336F8 80042EF8 1C10B18F */  lw         $s1, 0x101c($sp)
/* 336FC 80042EFC 1810B08F */  lw         $s0, 0x1018($sp)
/* 33700 80042F00 0800E003 */  jr         $ra
/* 33704 80042F04 2810BD27 */   addiu     $sp, $sp, 0x1028
