.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001EC10
/* F410 8001EC10 21508000 */  addu       $t2, $a0, $zero
/* F414 8001EC14 0E004891 */  lbu        $t0, 0xe($t2)
/* F418 8001EC18 0F004991 */  lbu        $t1, 0xf($t2)
/* F41C 8001EC1C 0400C104 */  bgez       $a2, .L8001EC30
/* F420 8001EC20 2158A000 */   addu      $t3, $a1, $zero
/* F424 8001EC24 21300000 */  addu       $a2, $zero, $zero
/* F428 8001EC28 08004885 */  lh         $t0, 8($t2)
/* F42C 8001EC2C 0A004985 */  lh         $t1, 0xa($t2)
.L8001EC30:
/* F430 8001EC30 08004395 */  lhu        $v1, 8($t2)
/* F434 8001EC34 05000011 */  beqz       $t0, .L8001EC4C
/* F438 8001EC38 00140300 */   sll       $v0, $v1, 0x10
/* F43C 8001EC3C 03140200 */  sra        $v0, $v0, 0x10
/* F440 8001EC40 2A104800 */  slt        $v0, $v0, $t0
/* F444 8001EC44 03004010 */  beqz       $v0, .L8001EC54
/* F448 8001EC48 00000000 */   nop
.L8001EC4C:
/* F44C 8001EC4C 00140300 */  sll        $v0, $v1, 0x10
/* F450 8001EC50 03440200 */  sra        $t0, $v0, 0x10
.L8001EC54:
/* F454 8001EC54 0A004395 */  lhu        $v1, 0xa($t2)
/* F458 8001EC58 06002011 */  beqz       $t1, .L8001EC74
/* F45C 8001EC5C 00140300 */   sll       $v0, $v1, 0x10
/* F460 8001EC60 03140200 */  sra        $v0, $v0, 0x10
/* F464 8001EC64 2A104900 */  slt        $v0, $v0, $t1
/* F468 8001EC68 03004010 */  beqz       $v0, .L8001EC78
/* F46C 8001EC6C 00000000 */   nop
/* F470 8001EC70 00140300 */  sll        $v0, $v1, 0x10
.L8001EC74:
/* F474 8001EC74 034C0200 */  sra        $t1, $v0, 0x10
.L8001EC78:
/* F478 8001EC78 00004295 */  lhu        $v0, ($t2)
/* F47C 8001EC7C 00000000 */  nop
/* F480 8001EC80 000062A5 */  sh         $v0, ($t3)
/* F484 8001EC84 0C004395 */  lhu        $v1, 0xc($t2)
/* F488 8001EC88 00000000 */  nop
/* F48C 8001EC8C 0C0063A5 */  sh         $v1, 0xc($t3)
/* F490 8001EC90 16004295 */  lhu        $v0, 0x16($t2)
/* F494 8001EC94 00000000 */  nop
/* F498 8001EC98 160062A5 */  sh         $v0, 0x16($t3)
/* F49C 8001EC9C 18004495 */  lhu        $a0, 0x18($t2)
/* F4A0 8001ECA0 080068A5 */  sh         $t0, 8($t3)
/* F4A4 8001ECA4 0A0069A5 */  sh         $t1, 0xa($t3)
/* F4A8 8001ECA8 180064A5 */  sh         $a0, 0x18($t3)
/* F4AC 8001ECAC 08004385 */  lh         $v1, 8($t2)
/* F4B0 8001ECB0 00000000 */  nop
/* F4B4 8001ECB4 1A006800 */  div        $zero, $v1, $t0
/* F4B8 8001ECB8 12180000 */  mflo       $v1
/* F4BC 8001ECBC 02000015 */  bnez       $t0, .L8001ECC8
/* F4C0 8001ECC0 00000000 */   nop
/* F4C4 8001ECC4 CD010000 */  break      0, 7
.L8001ECC8:
/* F4C8 8001ECC8 0A004485 */   lh        $a0, 0xa($t2)
/* F4CC 8001ECCC 00000000 */  nop
/* F4D0 8001ECD0 1A008900 */  div        $zero, $a0, $t1
/* F4D4 8001ECD4 12200000 */  mflo       $a0
/* F4D8 8001ECD8 02002015 */  bnez       $t1, .L8001ECE4
/* F4DC 8001ECDC 00000000 */   nop
/* F4E0 8001ECE0 CD010000 */  break      0, 7
.L8001ECE4:
/* F4E4 8001ECE4 1A00C300 */   div       $zero, $a2, $v1
/* F4E8 8001ECE8 12380000 */  mflo       $a3
/* F4EC 8001ECEC 0E0063A1 */  sb         $v1, 0xe($t3)
/* F4F0 8001ECF0 10300000 */  mfhi       $a2
/* F4F4 8001ECF4 0F0064A1 */  sb         $a0, 0xf($t3)
/* F4F8 8001ECF8 02006014 */  bnez       $v1, .L8001ED04
/* F4FC 8001ECFC 00000000 */   nop
/* F500 8001ED00 CD010000 */  break      0, 7
.L8001ED04:
/* F504 8001ED04 18000601 */   mult      $t0, $a2
/* F508 8001ED08 04004295 */  lhu        $v0, 4($t2)
/* F50C 8001ED0C 12280000 */  mflo       $a1
/* F510 8001ED10 21104500 */  addu       $v0, $v0, $a1
/* F514 8001ED14 040062A5 */  sh         $v0, 4($t3)
/* F518 8001ED18 02006014 */  bnez       $v1, .L8001ED24
/* F51C 8001ED1C 00000000 */   nop
/* F520 8001ED20 CD010000 */  break      0, 7
.L8001ED24:
/* F524 8001ED24 1A00E400 */   div       $zero, $a3, $a0
/* F528 8001ED28 10280000 */  mfhi       $a1
/* F52C 8001ED2C 02008014 */  bnez       $a0, .L8001ED38
/* F530 8001ED30 00000000 */   nop
/* F534 8001ED34 CD010000 */  break      0, 7
.L8001ED38:
/* F538 8001ED38 18002501 */   mult      $t1, $a1
/* F53C 8001ED3C 06004295 */  lhu        $v0, 6($t2)
/* F540 8001ED40 12180000 */  mflo       $v1
/* F544 8001ED44 21104300 */  addu       $v0, $v0, $v1
/* F548 8001ED48 060062A5 */  sh         $v0, 6($t3)
/* F54C 8001ED4C 0800E003 */  jr         $ra
/* F550 8001ED50 21106001 */   addu      $v0, $t3, $zero
