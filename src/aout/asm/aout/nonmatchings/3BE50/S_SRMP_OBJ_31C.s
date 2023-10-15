.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_31C
/* A8630 800B7E30 1000A2AF */  sw         $v0, 0x10($sp)
.L800B7E34:
/* A8634 800B7E34 0281043C */  lui        $a0, 0x8102
/* A8638 800B7E38 1000438E */  lw         $v1, 0x10($s2)
/* A863C 800B7E3C 09048434 */  ori        $a0, $a0, 0x409
/* A8640 800B7E40 C0110300 */  sll        $v0, $v1, 7
/* A8644 800B7E44 21104300 */  addu       $v0, $v0, $v1
/* A8648 800B7E48 00120200 */  sll        $v0, $v0, 8
/* A864C 800B7E4C 18004400 */  mult       $v0, $a0
/* A8650 800B7E50 0F80013C */  lui        $at, %hi(D_800EC7A0)
/* A8654 800B7E54 A0C723AC */  sw         $v1, %lo(D_800EC7A0)($at)
/* A8658 800B7E58 10400000 */  mfhi       $t0
/* A865C 800B7E5C 21180201 */  addu       $v1, $t0, $v0
/* A8660 800B7E60 83190300 */  sra        $v1, $v1, 6
/* A8664 800B7E64 C3170200 */  sra        $v0, $v0, 0x1f
/* A8668 800B7E68 23186200 */  subu       $v1, $v1, $v0
/* A866C 800B7E6C 2200A3A7 */  sh         $v1, 0x22($sp)
.L800B7E70:
/* A8670 800B7E70 0F008012 */  beqz       $s4, .L800B7EB0
/* A8674 800B7E74 00000000 */   nop
/* A8678 800B7E78 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A867C 800B7E7C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A8680 800B7E80 00000000 */  nop
/* A8684 800B7E84 AA016294 */  lhu        $v0, 0x1aa($v1)
/* A8688 800B7E88 00000000 */  nop
/* A868C 800B7E8C C2110200 */  srl        $v0, $v0, 7
/* A8690 800B7E90 01005730 */  andi       $s7, $v0, 1
/* A8694 800B7E94 1F00E012 */  beqz       $s7, S_SRMP_OBJ_400
/* A8698 800B7E98 00000000 */   nop
/* A869C 800B7E9C AA016294 */  lhu        $v0, 0x1aa($v1)
/* A86A0 800B7EA0 00000000 */  nop
/* A86A4 800B7EA4 7FFF4230 */  andi       $v0, $v0, 0xff7f
/* A86A8 800B7EA8 C5DF0208 */  j          S_SRMP_OBJ_400
/* A86AC 800B7EAC AA0162A4 */   sh        $v0, 0x1aa($v1)
.L800B7EB0:
/* A86B0 800B7EB0 0300A016 */  bnez       $s5, .L800B7EC0
/* A86B4 800B7EB4 02006232 */   andi      $v0, $s3, 2
/* A86B8 800B7EB8 09004010 */  beqz       $v0, .L800B7EE0
/* A86BC 800B7EBC 00000000 */   nop
.L800B7EC0:
/* A86C0 800B7EC0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A86C4 800B7EC4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A86C8 800B7EC8 08004396 */  lhu        $v1, 8($s2)
/* A86CC 800B7ECC 00000000 */  nop
/* A86D0 800B7ED0 840143A4 */  sh         $v1, 0x184($v0)
/* A86D4 800B7ED4 08004296 */  lhu        $v0, 8($s2)
/* A86D8 800B7ED8 0F80013C */  lui        $at, %hi(D_800EC798)
/* A86DC 800B7EDC 98C722A4 */  sh         $v0, %lo(D_800EC798)($at)
.L800B7EE0:
/* A86E0 800B7EE0 0300A016 */  bnez       $s5, .L800B7EF0
/* A86E4 800B7EE4 04006232 */   andi      $v0, $s3, 4
/* A86E8 800B7EE8 13004010 */  beqz       $v0, S_SRMP_OBJ_424
/* A86EC 800B7EEC 00000000 */   nop
.L800B7EF0:
/* A86F0 800B7EF0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A86F4 800B7EF4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A86F8 800B7EF8 0A004396 */  lhu        $v1, 0xa($s2)
/* A86FC 800B7EFC 00000000 */  nop
/* A8700 800B7F00 860143A4 */  sh         $v1, 0x186($v0)
/* A8704 800B7F04 0A004296 */  lhu        $v0, 0xa($s2)
/* A8708 800B7F08 0F80013C */  lui        $at, %hi(D_800EC79A)
/* A870C 800B7F0C CEDF0208 */  j          S_SRMP_OBJ_424
/* A8710 800B7F10 9AC722A4 */   sh        $v0, %lo(D_800EC79A)($at)
