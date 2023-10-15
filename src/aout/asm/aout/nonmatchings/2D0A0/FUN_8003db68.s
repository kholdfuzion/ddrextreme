.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003db68
/* 2E368 8003DB68 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2E36C 8003DB6C 1400B1AF */  sw         $s1, 0x14($sp)
/* 2E370 8003DB70 21888000 */  addu       $s1, $a0, $zero
/* 2E374 8003DB74 1800BFAF */  sw         $ra, 0x18($sp)
/* 2E378 8003DB78 7DC4000C */  jal        get_astruct_800311f4
/* 2E37C 8003DB7C 1000B0AF */   sw        $s0, 0x10($sp)
/* 2E380 8003DB80 21804000 */  addu       $s0, $v0, $zero
/* 2E384 8003DB84 06000386 */  lh         $v1, 6($s0)
/* 2E388 8003DB88 00000000 */  nop
/* 2E38C 8003DB8C 0B00622C */  sltiu      $v0, $v1, 0xb
/* 2E390 8003DB90 D0004010 */  beqz       $v0, .L8003DED4
/* 2E394 8003DB94 0180023C */   lui       $v0, %hi(D_80012F90)
/* 2E398 8003DB98 902F4224 */  addiu      $v0, $v0, %lo(D_80012F90)
/* 2E39C 8003DB9C 80180300 */  sll        $v1, $v1, 2
/* 2E3A0 8003DBA0 21186200 */  addu       $v1, $v1, $v0
/* 2E3A4 8003DBA4 0000648C */  lw         $a0, ($v1)
/* 2E3A8 8003DBA8 00000000 */  nop
/* 2E3AC 8003DBAC 08008000 */  jr         $a0
/* 2E3B0 8003DBB0 00000000 */   nop
/* 2E3B4 8003DBB4 01000224 */  addiu      $v0, $zero, 1
/* 2E3B8 8003DBB8 180002A6 */  sh         $v0, 0x18($s0)
/* 2E3BC 8003DBBC 060002A6 */  sh         $v0, 6($s0)
/* 2E3C0 8003DBC0 080002A6 */  sh         $v0, 8($s0)
/* 2E3C4 8003DBC4 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E3C8 8003DBC8 00000000 */   nop
/* 2E3CC 8003DBCC 06004014 */  bnez       $v0, .L8003DBE8
/* 2E3D0 8003DBD0 00000000 */   nop
/* 2E3D4 8003DBD4 47B3000C */  jal        FUN_8002cd1c
/* 2E3D8 8003DBD8 01000424 */   addiu     $a0, $zero, 1
/* 2E3DC 8003DBDC 02004010 */  beqz       $v0, .L8003DBE8
/* 2E3E0 8003DBE0 00000000 */   nop
/* 2E3E4 8003DBE4 180000A6 */  sh         $zero, 0x18($s0)
.L8003DBE8:
/* 2E3E8 8003DBE8 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E3EC 8003DBEC 00000000 */   nop
/* 2E3F0 8003DBF0 06004014 */  bnez       $v0, .L8003DC0C
/* 2E3F4 8003DBF4 00000000 */   nop
/* 2E3F8 8003DBF8 50B3000C */  jal        FUN_8002cd40
/* 2E3FC 8003DBFC 01000424 */   addiu     $a0, $zero, 1
/* 2E400 8003DC00 02004010 */  beqz       $v0, .L8003DC0C
/* 2E404 8003DC04 01000224 */   addiu     $v0, $zero, 1
/* 2E408 8003DC08 180002A6 */  sh         $v0, 0x18($s0)
.L8003DC0C:
/* 2E40C 8003DC0C 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E410 8003DC10 00000000 */   nop
/* 2E414 8003DC14 0B004010 */  beqz       $v0, .L8003DC44
/* 2E418 8003DC18 00000000 */   nop
/* 2E41C 8003DC1C 47B3000C */  jal        FUN_8002cd1c
/* 2E420 8003DC20 21200000 */   addu      $a0, $zero, $zero
/* 2E424 8003DC24 0B004014 */  bnez       $v0, .L8003DC54
/* 2E428 8003DC28 00000000 */   nop
/* 2E42C 8003DC2C 50B3000C */  jal        FUN_8002cd40
/* 2E430 8003DC30 21200000 */   addu      $a0, $zero, $zero
/* 2E434 8003DC34 07004014 */  bnez       $v0, .L8003DC54
/* 2E438 8003DC38 00000000 */   nop
/* 2E43C 8003DC3C 19F70008 */  j          .L8003DC64
/* 2E440 8003DC40 00000000 */   nop
.L8003DC44:
/* 2E444 8003DC44 35B3000C */  jal        FUN_8002ccd4
/* 2E448 8003DC48 01000424 */   addiu     $a0, $zero, 1
/* 2E44C 8003DC4C 05004010 */  beqz       $v0, .L8003DC64
/* 2E450 8003DC50 00000000 */   nop
.L8003DC54:
/* 2E454 8003DC54 18000296 */  lhu        $v0, 0x18($s0)
/* 2E458 8003DC58 00000000 */  nop
/* 2E45C 8003DC5C 01004238 */  xori       $v0, $v0, 1
/* 2E460 8003DC60 180002A6 */  sh         $v0, 0x18($s0)
.L8003DC64:
/* 2E464 8003DC64 6BB3000C */  jal        FUN_8002cdac
/* 2E468 8003DC68 21200000 */   addu      $a0, $zero, $zero
/* 2E46C 8003DC6C 9A004014 */  bnez       $v0, .L8003DED8
/* 2E470 8003DC70 21100000 */   addu      $v0, $zero, $zero
/* 2E474 8003DC74 35B3000C */  jal        FUN_8002ccd4
/* 2E478 8003DC78 21200000 */   addu      $a0, $zero, $zero
/* 2E47C 8003DC7C 96004010 */  beqz       $v0, .L8003DED8
/* 2E480 8003DC80 21100000 */   addu      $v0, $zero, $zero
/* 2E484 8003DC84 74B3000C */  jal        FUN_8002cdd0
/* 2E488 8003DC88 21200000 */   addu      $a0, $zero, $zero
/* 2E48C 8003DC8C 92004014 */  bnez       $v0, .L8003DED8
/* 2E490 8003DC90 21100000 */   addu      $v0, $zero, $zero
/* 2E494 8003DC94 18000286 */  lh         $v0, 0x18($s0)
/* 2E498 8003DC98 00000000 */  nop
/* 2E49C 8003DC9C 45004014 */  bnez       $v0, .L8003DDB4
/* 2E4A0 8003DCA0 0A000224 */   addiu     $v0, $zero, 0xa
/* 2E4A4 8003DCA4 02000224 */  addiu      $v0, $zero, 2
/* 2E4A8 8003DCA8 01000324 */  addiu      $v1, $zero, 1
/* 2E4AC 8003DCAC 060002A6 */  sh         $v0, 6($s0)
/* 2E4B0 8003DCB0 6EF70008 */  j          .L8003DDB8
/* 2E4B4 8003DCB4 180003A6 */   sh        $v1, 0x18($s0)
/* 2E4B8 8003DCB8 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E4BC 8003DCBC 00000000 */   nop
/* 2E4C0 8003DCC0 06004014 */  bnez       $v0, .L8003DCDC
/* 2E4C4 8003DCC4 00000000 */   nop
/* 2E4C8 8003DCC8 47B3000C */  jal        FUN_8002cd1c
/* 2E4CC 8003DCCC 01000424 */   addiu     $a0, $zero, 1
/* 2E4D0 8003DCD0 02004010 */  beqz       $v0, .L8003DCDC
/* 2E4D4 8003DCD4 00000000 */   nop
/* 2E4D8 8003DCD8 180000A6 */  sh         $zero, 0x18($s0)
.L8003DCDC:
/* 2E4DC 8003DCDC 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E4E0 8003DCE0 00000000 */   nop
/* 2E4E4 8003DCE4 06004014 */  bnez       $v0, .L8003DD00
/* 2E4E8 8003DCE8 00000000 */   nop
/* 2E4EC 8003DCEC 50B3000C */  jal        FUN_8002cd40
/* 2E4F0 8003DCF0 01000424 */   addiu     $a0, $zero, 1
/* 2E4F4 8003DCF4 02004010 */  beqz       $v0, .L8003DD00
/* 2E4F8 8003DCF8 01000224 */   addiu     $v0, $zero, 1
/* 2E4FC 8003DCFC 180002A6 */  sh         $v0, 0x18($s0)
.L8003DD00:
/* 2E500 8003DD00 7470000C */  jal        getcoinslot1_8001c1d0
/* 2E504 8003DD04 00000000 */   nop
/* 2E508 8003DD08 0B004010 */  beqz       $v0, .L8003DD38
/* 2E50C 8003DD0C 00000000 */   nop
/* 2E510 8003DD10 47B3000C */  jal        FUN_8002cd1c
/* 2E514 8003DD14 21200000 */   addu      $a0, $zero, $zero
/* 2E518 8003DD18 0B004014 */  bnez       $v0, .L8003DD48
/* 2E51C 8003DD1C 00000000 */   nop
/* 2E520 8003DD20 50B3000C */  jal        FUN_8002cd40
/* 2E524 8003DD24 21200000 */   addu      $a0, $zero, $zero
/* 2E528 8003DD28 07004014 */  bnez       $v0, .L8003DD48
/* 2E52C 8003DD2C 00000000 */   nop
/* 2E530 8003DD30 56F70008 */  j          .L8003DD58
/* 2E534 8003DD34 00000000 */   nop
.L8003DD38:
/* 2E538 8003DD38 35B3000C */  jal        FUN_8002ccd4
/* 2E53C 8003DD3C 01000424 */   addiu     $a0, $zero, 1
/* 2E540 8003DD40 05004010 */  beqz       $v0, .L8003DD58
/* 2E544 8003DD44 00000000 */   nop
.L8003DD48:
/* 2E548 8003DD48 18000296 */  lhu        $v0, 0x18($s0)
/* 2E54C 8003DD4C 00000000 */  nop
/* 2E550 8003DD50 01004238 */  xori       $v0, $v0, 1
/* 2E554 8003DD54 180002A6 */  sh         $v0, 0x18($s0)
.L8003DD58:
/* 2E558 8003DD58 6BB3000C */  jal        FUN_8002cdac
/* 2E55C 8003DD5C 21200000 */   addu      $a0, $zero, $zero
/* 2E560 8003DD60 5D004014 */  bnez       $v0, .L8003DED8
/* 2E564 8003DD64 21100000 */   addu      $v0, $zero, $zero
/* 2E568 8003DD68 35B3000C */  jal        FUN_8002ccd4
/* 2E56C 8003DD6C 21200000 */   addu      $a0, $zero, $zero
/* 2E570 8003DD70 59004010 */  beqz       $v0, .L8003DED8
/* 2E574 8003DD74 21100000 */   addu      $v0, $zero, $zero
/* 2E578 8003DD78 74B3000C */  jal        FUN_8002cdd0
/* 2E57C 8003DD7C 21200000 */   addu      $a0, $zero, $zero
/* 2E580 8003DD80 55004014 */  bnez       $v0, .L8003DED8
/* 2E584 8003DD84 21100000 */   addu      $v0, $zero, $zero
/* 2E588 8003DD88 18000286 */  lh         $v0, 0x18($s0)
/* 2E58C 8003DD8C 00000000 */  nop
/* 2E590 8003DD90 08004014 */  bnez       $v0, .L8003DDB4
/* 2E594 8003DD94 0A000224 */   addiu     $v0, $zero, 0xa
/* 2E598 8003DD98 03000224 */  addiu      $v0, $zero, 3
/* 2E59C 8003DD9C 060002A6 */  sh         $v0, 6($s0)
/* 2E5A0 8003DDA0 080002A6 */  sh         $v0, 8($s0)
/* 2E5A4 8003DDA4 BC0E11AE */  sw         $s1, 0xebc($s0)
/* 2E5A8 8003DDA8 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2E5AC 8003DDAC 6EF70008 */  j          .L8003DDB8
/* 2E5B0 8003DDB0 C40E00AE */   sw        $zero, 0xec4($s0)
.L8003DDB4:
/* 2E5B4 8003DDB4 060002A6 */  sh         $v0, 6($s0)
.L8003DDB8:
/* 2E5B8 8003DDB8 3C000224 */  addiu      $v0, $zero, 0x3c
/* 2E5BC 8003DDBC B5F70008 */  j          .L8003DED4
/* 2E5C0 8003DDC0 E40E02AE */   sw        $v0, 0xee4($s0)
/* 2E5C4 8003DDC4 04000224 */  addiu      $v0, $zero, 4
/* 2E5C8 8003DDC8 060002A6 */  sh         $v0, 6($s0)
/* 2E5CC 8003DDCC A8F4000C */  jal        FUN_8003d2a0
/* 2E5D0 8003DDD0 21200000 */   addu      $a0, $zero, $zero
/* 2E5D4 8003DDD4 B6F70008 */  j          .L8003DED8
/* 2E5D8 8003DDD8 21100000 */   addu      $v0, $zero, $zero
/* 2E5DC 8003DDDC C00E028E */  lw         $v0, 0xec0($s0)
/* 2E5E0 8003DDE0 03000324 */  addiu      $v1, $zero, 3
/* 2E5E4 8003DDE4 00014228 */  slti       $v0, $v0, 0x100
/* 2E5E8 8003DDE8 18004014 */  bnez       $v0, .L8003DE4C
/* 2E5EC 8003DDEC 080003A6 */   sh        $v1, 8($s0)
/* 2E5F0 8003DDF0 8FAF020C */  jal        FUN_800abe3c
/* 2E5F4 8003DDF4 00000000 */   nop
/* 2E5F8 8003DDF8 02000324 */  addiu      $v1, $zero, 2
/* 2E5FC 8003DDFC 03004314 */  bne        $v0, $v1, .L8003DE0C
/* 2E600 8003DE00 01000224 */   addiu     $v0, $zero, 1
/* 2E604 8003DE04 84F70008 */  j          .L8003DE10
/* 2E608 8003DE08 C80E02AE */   sw        $v0, 0xec8($s0)
.L8003DE0C:
/* 2E60C 8003DE0C C80E03AE */  sw         $v1, 0xec8($s0)
.L8003DE10:
/* 2E610 8003DE10 E40E028E */  lw         $v0, 0xee4($s0)
/* 2E614 8003DE14 00000000 */  nop
/* 2E618 8003DE18 21184000 */  addu       $v1, $v0, $zero
/* 2E61C 8003DE1C FFFF4224 */  addiu      $v0, $v0, -1
/* 2E620 8003DE20 33006328 */  slti       $v1, $v1, 0x33
/* 2E624 8003DE24 2B006010 */  beqz       $v1, .L8003DED4
/* 2E628 8003DE28 E40E02AE */   sw        $v0, 0xee4($s0)
/* 2E62C 8003DE2C 21200000 */  addu       $a0, $zero, $zero
/* 2E630 8003DE30 0A000224 */  addiu      $v0, $zero, 0xa
/* 2E634 8003DE34 060002A6 */  sh         $v0, 6($s0)
/* 2E638 8003DE38 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2E63C 8003DE3C A8F4000C */  jal        FUN_8003d2a0
/* 2E640 8003DE40 C40E00AE */   sw        $zero, 0xec4($s0)
/* 2E644 8003DE44 B6F70008 */  j          .L8003DED8
/* 2E648 8003DE48 21100000 */   addu      $v0, $zero, $zero
.L8003DE4C:
/* 2E64C 8003DE4C A8F4000C */  jal        FUN_8003d2a0
/* 2E650 8003DE50 01000424 */   addiu     $a0, $zero, 1
/* 2E654 8003DE54 FFFF0324 */  addiu      $v1, $zero, -1
/* 2E658 8003DE58 05004314 */  bne        $v0, $v1, .L8003DE70
/* 2E65C 8003DE5C 02000224 */   addiu     $v0, $zero, 2
/* 2E660 8003DE60 05000324 */  addiu      $v1, $zero, 5
/* 2E664 8003DE64 C80E02AE */  sw         $v0, 0xec8($s0)
/* 2E668 8003DE68 B5F70008 */  j          .L8003DED4
/* 2E66C 8003DE6C 060003A6 */   sh        $v1, 6($s0)
.L8003DE70:
/* 2E670 8003DE70 C00E038E */  lw         $v1, 0xec0($s0)
/* 2E674 8003DE74 00000000 */  nop
/* 2E678 8003DE78 01006324 */  addiu      $v1, $v1, 1
/* 2E67C 8003DE7C 40100300 */  sll        $v0, $v1, 1
/* 2E680 8003DE80 21104300 */  addu       $v0, $v0, $v1
/* 2E684 8003DE84 C0100200 */  sll        $v0, $v0, 3
/* 2E688 8003DE88 21104300 */  addu       $v0, $v0, $v1
/* 2E68C 8003DE8C 80100200 */  sll        $v0, $v0, 2
/* 2E690 8003DE90 02004104 */  bgez       $v0, .L8003DE9C
/* 2E694 8003DE94 C00E03AE */   sw        $v1, 0xec0($s0)
/* 2E698 8003DE98 FF004224 */  addiu      $v0, $v0, 0xff
.L8003DE9C:
/* 2E69C 8003DE9C 03120200 */  sra        $v0, $v0, 8
/* 2E6A0 8003DEA0 B5F70008 */  j          .L8003DED4
/* 2E6A4 8003DEA4 C40E02AE */   sw        $v0, 0xec4($s0)
/* 2E6A8 8003DEA8 E40E028E */  lw         $v0, 0xee4($s0)
/* 2E6AC 8003DEAC 04000324 */  addiu      $v1, $zero, 4
/* 2E6B0 8003DEB0 080003A6 */  sh         $v1, 8($s0)
/* 2E6B4 8003DEB4 21204000 */  addu       $a0, $v0, $zero
/* 2E6B8 8003DEB8 FFFF4224 */  addiu      $v0, $v0, -1
/* 2E6BC 8003DEBC 0500801C */  bgtz       $a0, .L8003DED4
/* 2E6C0 8003DEC0 E40E02AE */   sw        $v0, 0xee4($s0)
/* 2E6C4 8003DEC4 05000224 */  addiu      $v0, $zero, 5
/* 2E6C8 8003DEC8 080002A6 */  sh         $v0, 8($s0)
/* 2E6CC 8003DECC B6F70008 */  j          .L8003DED8
/* 2E6D0 8003DED0 01000224 */   addiu     $v0, $zero, 1
.L8003DED4:
/* 2E6D4 8003DED4 21100000 */  addu       $v0, $zero, $zero
.L8003DED8:
/* 2E6D8 8003DED8 1800BF8F */  lw         $ra, 0x18($sp)
/* 2E6DC 8003DEDC 1400B18F */  lw         $s1, 0x14($sp)
/* 2E6E0 8003DEE0 1000B08F */  lw         $s0, 0x10($sp)
/* 2E6E4 8003DEE4 0800E003 */  jr         $ra
/* 2E6E8 8003DEE8 2000BD27 */   addiu     $sp, $sp, 0x20
