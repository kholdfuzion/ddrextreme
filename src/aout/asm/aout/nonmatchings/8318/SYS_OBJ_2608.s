.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2608
/* ADEC 8001A5EC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* ADF0 8001A5F0 1000B0AF */  sw         $s0, 0x10($sp)
/* ADF4 8001A5F4 21808000 */  addu       $s0, $a0, $zero
/* ADF8 8001A5F8 1400BFAF */  sw         $ra, 0x14($sp)
/* ADFC 8001A5FC B86C000C */  jal        SetIntrMask
/* AE00 8001A600 21200000 */   addu      $a0, $zero, $zero
/* AE04 8001A604 0D80013C */  lui        $at, %hi(D_800D2CC4)
/* AE08 8001A608 C42C20AC */  sw         $zero, %lo(D_800D2CC4)($at)
/* AE0C 8001A60C 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* AE10 8001A610 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* AE14 8001A614 0D80013C */  lui        $at, %hi(D_800D2CD0)
/* AE18 8001A618 D02C22AC */  sw         $v0, %lo(D_800D2CD0)($at)
/* AE1C 8001A61C 01000224 */  addiu      $v0, $zero, 1
/* AE20 8001A620 0D80013C */  lui        $at, %hi(D_800D2CC0)
/* AE24 8001A624 C02C23AC */  sw         $v1, %lo(D_800D2CC0)($at)
/* AE28 8001A628 07000332 */  andi       $v1, $s0, 7
/* AE2C 8001A62C 1E006210 */  beq        $v1, $v0, .L8001A6A8
/* AE30 8001A630 02006228 */   slti      $v0, $v1, 2
/* AE34 8001A634 05004010 */  beqz       $v0, .L8001A64C
/* AE38 8001A638 03000224 */   addiu     $v0, $zero, 3
/* AE3C 8001A63C 07006010 */  beqz       $v1, .L8001A65C
/* AE40 8001A640 00000000 */   nop
/* AE44 8001A644 BD690008 */  j          SYS_OBJ_2710
/* AE48 8001A648 00000000 */   nop
.L8001A64C:
/* AE4C 8001A64C 16006210 */  beq        $v1, $v0, .L8001A6A8
/* AE50 8001A650 05000224 */   addiu     $v0, $zero, 5
/* AE54 8001A654 27006214 */  bne        $v1, $v0, SYS_OBJ_2710
/* AE58 8001A658 00000000 */   nop
.L8001A65C:
/* AE5C 8001A65C 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* AE60 8001A660 AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* AE64 8001A664 01040224 */  addiu      $v0, $zero, 0x401
/* AE68 8001A668 000062AC */  sw         $v0, ($v1)
/* AE6C 8001A66C 0D80033C */  lui        $v1, %hi(D_800D2CBC)
/* AE70 8001A670 BC2C638C */  lw         $v1, %lo(D_800D2CBC)($v1)
/* AE74 8001A674 0F80043C */  lui        $a0, %hi(D_800EE7A8)
/* AE78 8001A678 A8E78424 */  addiu      $a0, $a0, %lo(D_800EE7A8)
/* AE7C 8001A67C 0000628C */  lw         $v0, ($v1)
/* AE80 8001A680 21280000 */  addu       $a1, $zero, $zero
/* AE84 8001A684 00084234 */  ori        $v0, $v0, 0x800
/* AE88 8001A688 000062AC */  sw         $v0, ($v1)
/* AE8C 8001A68C 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* AE90 8001A690 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* AE94 8001A694 00180624 */  addiu      $a2, $zero, 0x1800
/* AE98 8001A698 AF6B000C */  jal        SYS_OBJ_2ED8
/* AE9C 8001A69C 000040AC */   sw        $zero, ($v0)
/* AEA0 8001A6A0 BD690008 */  j          SYS_OBJ_2710
/* AEA4 8001A6A4 00000000 */   nop
.L8001A6A8:
/* AEA8 8001A6A8 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* AEAC 8001A6AC AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* AEB0 8001A6B0 01040224 */  addiu      $v0, $zero, 0x401
/* AEB4 8001A6B4 000062AC */  sw         $v0, ($v1)
/* AEB8 8001A6B8 0D80033C */  lui        $v1, %hi(D_800D2CBC)
/* AEBC 8001A6BC BC2C638C */  lw         $v1, %lo(D_800D2CBC)($v1)
/* AEC0 8001A6C0 00000000 */  nop
/* AEC4 8001A6C4 0000628C */  lw         $v0, ($v1)
/* AEC8 8001A6C8 00000000 */  nop
/* AECC 8001A6CC 00084234 */  ori        $v0, $v0, 0x800
/* AED0 8001A6D0 000062AC */  sw         $v0, ($v1)
/* AED4 8001A6D4 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* AED8 8001A6D8 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* AEDC 8001A6DC 0002023C */  lui        $v0, 0x200
/* AEE0 8001A6E0 000062AC */  sw         $v0, ($v1)
/* AEE4 8001A6E4 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* AEE8 8001A6E8 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* AEEC 8001A6EC 0001023C */  lui        $v0, 0x100
/* AEF0 8001A6F0 000062AC */  sw         $v0, ($v1)
