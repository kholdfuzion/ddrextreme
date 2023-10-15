.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a85ec
/* 98DEC 800A85EC 90FFBD27 */  addiu      $sp, $sp, -0x70
/* 98DF0 800A85F0 6000B2AF */  sw         $s2, 0x60($sp)
/* 98DF4 800A85F4 21908000 */  addu       $s2, $a0, $zero
/* 98DF8 800A85F8 6800BFAF */  sw         $ra, 0x68($sp)
/* 98DFC 800A85FC 6400B3AF */  sw         $s3, 0x64($sp)
/* 98E00 800A8600 5C00B1AF */  sw         $s1, 0x5c($sp)
/* 98E04 800A8604 05004016 */  bnez       $s2, .L800A861C
/* 98E08 800A8608 5800B0AF */   sw        $s0, 0x58($sp)
/* 98E0C 800A860C 0F80023C */  lui        $v0, %hi(D_800EC6D0)
/* 98E10 800A8610 D0C640AC */  sw         $zero, %lo(D_800EC6D0)($v0)
/* 98E14 800A8614 BDA10208 */  j          .L800A86F4
/* 98E18 800A8618 21100000 */   addu      $v0, $zero, $zero
.L800A861C:
/* 98E1C 800A861C 0F80133C */  lui        $s3, %hi(D_800EC6D0)
/* 98E20 800A8620 D0C6628E */  lw         $v0, %lo(D_800EC6D0)($s3)
/* 98E24 800A8624 00000000 */  nop
/* 98E28 800A8628 23004212 */  beq        $s2, $v0, .L800A86B8
/* 98E2C 800A862C 00000000 */   nop
/* 98E30 800A8630 5000A427 */  addiu      $a0, $sp, 0x50
/* 98E34 800A8634 21284002 */  addu       $a1, $s2, $zero
/* 98E38 800A8638 057C000C */  jal        strcpy
/* 98E3C 800A863C 1000B027 */   addiu     $s0, $sp, 0x10
/* 98E40 800A8640 21200002 */  addu       $a0, $s0, $zero
/* 98E44 800A8644 1C80113C */  lui        $s1, %hi(D_801BF758)
/* 98E48 800A8648 58F73126 */  addiu      $s1, $s1, %lo(D_801BF758)
/* 98E4C 800A864C 057C000C */  jal        strcpy
/* 98E50 800A8650 21282002 */   addu      $a1, $s1, $zero
/* 98E54 800A8654 21200002 */  addu       $a0, $s0, $zero
/* 98E58 800A8658 3F71000C */  jal        FUN_8001c4fc
/* 98E5C 800A865C 5000A527 */   addiu     $a1, $sp, 0x50
/* 98E60 800A8660 21200002 */  addu       $a0, $s0, $zero
/* 98E64 800A8664 0180053C */  lui        $a1, %hi(D_80016BDC)
/* 98E68 800A8668 3F71000C */  jal        FUN_8001c4fc
/* 98E6C 800A866C DC6BA524 */   addiu     $a1, $a1, %lo(D_80016BDC)
/* 98E70 800A8670 21200002 */  addu       $a0, $s0, $zero
/* 98E74 800A8674 3F71000C */  jal        FUN_8001c4fc
/* 98E78 800A8678 5000A527 */   addiu     $a1, $sp, 0x50
/* 98E7C 800A867C 21200002 */  addu       $a0, $s0, $zero
/* 98E80 800A8680 057C000C */  jal        strcpy
/* 98E84 800A8684 21282002 */   addu      $a1, $s1, $zero
/* 98E88 800A8688 21200002 */  addu       $a0, $s0, $zero
/* 98E8C 800A868C 3F71000C */  jal        FUN_8001c4fc
/* 98E90 800A8690 5000A527 */   addiu     $a1, $sp, 0x50
/* 98E94 800A8694 21200002 */  addu       $a0, $s0, $zero
/* 98E98 800A8698 0180053C */  lui        $a1, %hi(D_80016BE0)
/* 98E9C 800A869C 3F71000C */  jal        FUN_8001c4fc
/* 98EA0 800A86A0 E06BA524 */   addiu     $a1, $a1, %lo(D_80016BE0)
/* 98EA4 800A86A4 21200002 */  addu       $a0, $s0, $zero
/* 98EA8 800A86A8 2D80053C */  lui        $a1, 0x802d
/* 98EAC 800A86AC DDB3000C */  jal        decodefile_8002cf74
/* 98EB0 800A86B0 00E0A534 */   ori       $a1, $a1, 0xe000
/* 98EB4 800A86B4 D0C672AE */  sw         $s2, -0x3930($s3)
.L800A86B8:
/* 98EB8 800A86B8 2D80043C */  lui        $a0, 0x802d
/* 98EBC 800A86BC 2E80023C */  lui        $v0, %hi(D_802DE000)
/* 98EC0 800A86C0 00E0428C */  lw         $v0, %lo(D_802DE000)($v0)
/* 98EC4 800A86C4 00000000 */  nop
/* 98EC8 800A86C8 08004010 */  beqz       $v0, .L800A86EC
/* 98ECC 800A86CC 00E08434 */   ori       $a0, $a0, 0xe000
.L800A86D0:
/* 98ED0 800A86D0 0000828C */  lw         $v0, ($a0)
/* 98ED4 800A86D4 00000000 */  nop
/* 98ED8 800A86D8 21208200 */  addu       $a0, $a0, $v0
/* 98EDC 800A86DC 0000838C */  lw         $v1, ($a0)
/* 98EE0 800A86E0 00000000 */  nop
/* 98EE4 800A86E4 FAFF6014 */  bnez       $v1, .L800A86D0
/* 98EE8 800A86E8 00000000 */   nop
.L800A86EC:
/* 98EEC 800A86EC 2D80023C */  lui        $v0, 0x802d
/* 98EF0 800A86F0 00E04234 */  ori        $v0, $v0, 0xe000
.L800A86F4:
/* 98EF4 800A86F4 6800BF8F */  lw         $ra, 0x68($sp)
/* 98EF8 800A86F8 6400B38F */  lw         $s3, 0x64($sp)
/* 98EFC 800A86FC 6000B28F */  lw         $s2, 0x60($sp)
/* 98F00 800A8700 5C00B18F */  lw         $s1, 0x5c($sp)
/* 98F04 800A8704 5800B08F */  lw         $s0, 0x58($sp)
/* 98F08 800A8708 0800E003 */  jr         $ra
/* 98F0C 800A870C 7000BD27 */   addiu     $sp, $sp, 0x70
