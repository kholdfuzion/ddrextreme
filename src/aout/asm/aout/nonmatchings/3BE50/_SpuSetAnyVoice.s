.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _SpuSetAnyVoice
/* A8DC4 800B85C4 21488000 */  addu       $t1, $a0, $zero
/* A8DC8 800B85C8 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A8DCC 800B85CC DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A8DD0 800B85D0 00000000 */  nop
/* A8DD4 800B85D4 01004230 */  andi       $v0, $v0, 1
/* A8DD8 800B85D8 1E80043C */  lui        $a0, %hi(D_801E0D50)
/* A8DDC 800B85DC 500D8424 */  addiu      $a0, $a0, %lo(D_801E0D50)
/* A8DE0 800B85E0 03004014 */  bnez       $v0, .L800B85F0
/* A8DE4 800B85E4 2140A000 */   addu      $t0, $a1, $zero
/* A8DE8 800B85E8 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A8DEC 800B85EC F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
.L800B85F0:
/* A8DF0 800B85F0 40100700 */  sll        $v0, $a3, 1
/* A8DF4 800B85F4 21104400 */  addu       $v0, $v0, $a0
/* A8DF8 800B85F8 00004394 */  lhu        $v1, ($v0)
/* A8DFC 800B85FC 40100600 */  sll        $v0, $a2, 1
/* A8E00 800B8600 21104400 */  addu       $v0, $v0, $a0
/* A8E04 800B8604 00004294 */  lhu        $v0, ($v0)
/* A8E08 800B8608 FF006330 */  andi       $v1, $v1, 0xff
/* A8E0C 800B860C 001C0300 */  sll        $v1, $v1, 0x10
/* A8E10 800B8610 01000B24 */  addiu      $t3, $zero, 1
/* A8E14 800B8614 0C002B11 */  beq        $t1, $t3, .L800B8648
/* A8E18 800B8618 25504300 */   or        $t2, $v0, $v1
/* A8E1C 800B861C 02002229 */  slti       $v0, $t1, 2
/* A8E20 800B8620 05004010 */  beqz       $v0, .L800B8638
/* A8E24 800B8624 08000224 */   addiu     $v0, $zero, 8
/* A8E28 800B8628 36002011 */  beqz       $t1, .L800B8704
/* A8E2C 800B862C FF00023C */   lui       $v0, 0xff
/* A8E30 800B8630 1EE20208 */  j          S_SAV_OBJ_2B4
/* A8E34 800B8634 FFFF4234 */   ori       $v0, $v0, 0xffff
.L800B8638:
/* A8E38 800B8638 67002211 */  beq        $t1, $v0, .L800B87D8
/* A8E3C 800B863C FF00023C */   lui       $v0, 0xff
/* A8E40 800B8640 1EE20208 */  j          S_SAV_OBJ_2B4
/* A8E44 800B8644 FFFF4234 */   ori       $v0, $v0, 0xffff
.L800B8648:
/* A8E48 800B8648 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A8E4C 800B864C DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A8E50 800B8650 00000000 */  nop
/* A8E54 800B8654 01004230 */  andi       $v0, $v0, 1
/* A8E58 800B8658 18004010 */  beqz       $v0, .L800B86BC
/* A8E5C 800B865C 40180600 */   sll       $v1, $a2, 1
/* A8E60 800B8660 1E80053C */  lui        $a1, %hi(D_801E0D50)
/* A8E64 800B8664 500DA524 */  addiu      $a1, $a1, %lo(D_801E0D50)
/* A8E68 800B8668 21186500 */  addu       $v1, $v1, $a1
/* A8E6C 800B866C 40200700 */  sll        $a0, $a3, 1
/* A8E70 800B8670 00006294 */  lhu        $v0, ($v1)
/* A8E74 800B8674 21208500 */  addu       $a0, $a0, $a1
/* A8E78 800B8678 25104800 */  or         $v0, $v0, $t0
/* A8E7C 800B867C 000062A4 */  sh         $v0, ($v1)
/* A8E80 800B8680 02140800 */  srl        $v0, $t0, 0x10
/* A8E84 800B8684 00008394 */  lhu        $v1, ($a0)
/* A8E88 800B8688 FF004230 */  andi       $v0, $v0, 0xff
/* A8E8C 800B868C 25186200 */  or         $v1, $v1, $v0
/* A8E90 800B8690 3AFFC224 */  addiu      $v0, $a2, -0xc6
/* A8E94 800B8694 43100200 */  sra        $v0, $v0, 1
/* A8E98 800B8698 000083A4 */  sh         $v1, ($a0)
/* A8E9C 800B869C 0F80033C */  lui        $v1, %hi(D_800EC7A8)
/* A8EA0 800B86A0 A8C7638C */  lw         $v1, %lo(D_800EC7A8)($v1)
/* A8EA4 800B86A4 04104B00 */  sllv       $v0, $t3, $v0
/* A8EA8 800B86A8 25186200 */  or         $v1, $v1, $v0
/* A8EAC 800B86AC 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A8EB0 800B86B0 A8C723AC */  sw         $v1, %lo(D_800EC7A8)($at)
/* A8EB4 800B86B4 BDE10208 */  j          S_SAV_OBJ_130
/* A8EB8 800B86B8 FF00023C */   lui       $v0, 0xff
.L800B86BC:
/* A8EBC 800B86BC 0F80053C */  lui        $a1, %hi(D_800EC7F0)
/* A8EC0 800B86C0 F0C7A58C */  lw         $a1, %lo(D_800EC7F0)($a1)
/* A8EC4 800B86C4 40200700 */  sll        $a0, $a3, 1
/* A8EC8 800B86C8 21186500 */  addu       $v1, $v1, $a1
/* A8ECC 800B86CC 00006294 */  lhu        $v0, ($v1)
/* A8ED0 800B86D0 21208500 */  addu       $a0, $a0, $a1
/* A8ED4 800B86D4 25104800 */  or         $v0, $v0, $t0
/* A8ED8 800B86D8 000062A4 */  sh         $v0, ($v1)
/* A8EDC 800B86DC 02140800 */  srl        $v0, $t0, 0x10
/* A8EE0 800B86E0 00008394 */  lhu        $v1, ($a0)
/* A8EE4 800B86E4 FF004230 */  andi       $v0, $v0, 0xff
/* A8EE8 800B86E8 25186200 */  or         $v1, $v1, $v0
/* A8EEC 800B86EC 000083A4 */  sh         $v1, ($a0)
/* A8EF0 800B86F0 FF00023C */  lui        $v0, 0xff
