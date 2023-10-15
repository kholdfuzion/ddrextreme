.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800afdcc
/* A05CC 800AFDCC 21488000 */  addu       $t1, $a0, $zero
/* A05D0 800AFDD0 2160E000 */  addu       $t4, $a3, $zero
/* A05D4 800AFDD4 1000AB8F */  lw         $t3, 0x10($sp)
/* A05D8 800AFDD8 2B002011 */  beqz       $t1, .L800AFE88
/* A05DC 800AFDDC FFFFCA30 */   andi      $t2, $a2, 0xffff
/* A05E0 800AFDE0 01000824 */  addiu      $t0, $zero, 1
/* A05E4 800AFDE4 1D80043C */  lui        $a0, %hi(D_801CC948)
/* A05E8 800AFDE8 48C98424 */  addiu      $a0, $a0, %lo(D_801CC948)
/* A05EC 800AFDEC 40100A00 */  sll        $v0, $t2, 1
/* A05F0 800AFDF0 21104A00 */  addu       $v0, $v0, $t2
/* A05F4 800AFDF4 C0100200 */  sll        $v0, $v0, 3
/* A05F8 800AFDF8 21104400 */  addu       $v0, $v0, $a0
/* A05FC 800AFDFC 00002AA5 */  sh         $t2, ($t1)
/* A0600 800AFE00 070028A1 */  sb         $t0, 7($t1)
/* A0604 800AFE04 00004394 */  lhu        $v1, ($v0)
/* A0608 800AFE08 00000000 */  nop
/* A060C 800AFE0C 020023A5 */  sh         $v1, 2($t1)
/* A0610 800AFE10 02004494 */  lhu        $a0, 2($v0)
/* A0614 800AFE14 00000000 */  nop
/* A0618 800AFE18 040024A5 */  sh         $a0, 4($t1)
/* A061C 800AFE1C 04004390 */  lbu        $v1, 4($v0)
/* A0620 800AFE20 08002BAD */  sw         $t3, 8($t1)
/* A0624 800AFE24 060023A1 */  sb         $v1, 6($t1)
/* A0628 800AFE28 0400A48C */  lw         $a0, 4($a1)
/* A062C 800AFE2C 1D80033C */  lui        $v1, %hi(D_801D0048)
/* A0630 800AFE30 0C0024AD */  sw         $a0, 0xc($t1)
/* A0634 800AFE34 0000A48C */  lw         $a0, ($a1)
/* A0638 800AFE38 48006324 */  addiu      $v1, $v1, %lo(D_801D0048)
/* A063C 800AFE3C 1C0064AC */  sw         $a0, 0x1c($v1)
/* A0640 800AFE40 0400A98C */  lw         $t1, 4($a1)
/* A0644 800AFE44 0F004490 */  lbu        $a0, 0xf($v0)
/* A0648 800AFE48 00004594 */  lhu        $a1, ($v0)
/* A064C 800AFE4C 02004694 */  lhu        $a2, 2($v0)
/* A0650 800AFE50 04004790 */  lbu        $a3, 4($v0)
/* A0654 800AFE54 21100000 */  addu       $v0, $zero, $zero
/* A0658 800AFE58 36006AA4 */  sh         $t2, 0x36($v1)
/* A065C 800AFE5C 2A006AA4 */  sh         $t2, 0x2a($v1)
/* A0660 800AFE60 2C006BAC */  sw         $t3, 0x2c($v1)
/* A0664 800AFE64 30006CAC */  sw         $t4, 0x30($v1)
/* A0668 800AFE68 340068A0 */  sb         $t0, 0x34($v1)
/* A066C 800AFE6C 020068A0 */  sb         $t0, 2($v1)
/* A0670 800AFE70 350064A0 */  sb         $a0, 0x35($v1)
/* A0674 800AFE74 240065A4 */  sh         $a1, 0x24($v1)
/* A0678 800AFE78 260066A4 */  sh         $a2, 0x26($v1)
/* A067C 800AFE7C 280067A0 */  sb         $a3, 0x28($v1)
/* A0680 800AFE80 0800E003 */  jr         $ra
/* A0684 800AFE84 200069AC */   sw        $t1, 0x20($v1)
.L800AFE88:
/* A0688 800AFE88 0800E003 */  jr         $ra
/* A068C 800AFE8C FFFF0224 */   addiu     $v0, $zero, -1
