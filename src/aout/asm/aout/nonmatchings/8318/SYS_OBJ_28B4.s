.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_28B4
/* B098 8001A898 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B09C 8001A89C 1800BFAF */  sw         $ra, 0x18($sp)
/* B0A0 8001A8A0 CD6B000C */  jal        VSync
/* B0A4 8001A8A4 FFFF0424 */   addiu     $a0, $zero, -1
/* B0A8 8001A8A8 0D80033C */  lui        $v1, %hi(D_800D2CD4)
/* B0AC 8001A8AC D42C638C */  lw         $v1, %lo(D_800D2CD4)($v1)
/* B0B0 8001A8B0 00000000 */  nop
/* B0B4 8001A8B4 2A186200 */  slt        $v1, $v1, $v0
/* B0B8 8001A8B8 0C006014 */  bnez       $v1, .L8001A8EC
/* B0BC 8001A8BC 00000000 */   nop
/* B0C0 8001A8C0 0D80033C */  lui        $v1, %hi(D_800D2CD8)
/* B0C4 8001A8C4 D82C6324 */  addiu      $v1, $v1, %lo(D_800D2CD8)
/* B0C8 8001A8C8 0000628C */  lw         $v0, ($v1)
/* B0CC 8001A8CC 00000000 */  nop
/* B0D0 8001A8D0 21204000 */  addu       $a0, $v0, $zero
/* B0D4 8001A8D4 01004224 */  addiu      $v0, $v0, 1
/* B0D8 8001A8D8 000062AC */  sw         $v0, ($v1)
/* B0DC 8001A8DC 0F00023C */  lui        $v0, 0xf
/* B0E0 8001A8E0 2A104400 */  slt        $v0, $v0, $a0
/* B0E4 8001A8E4 38004010 */  beqz       $v0, .L8001A9C8
/* B0E8 8001A8E8 00000000 */   nop
.L8001A8EC:
/* B0EC 8001A8EC 0D80063C */  lui        $a2, %hi(D_800D2CA0)
/* B0F0 8001A8F0 A02CC68C */  lw         $a2, %lo(D_800D2CA0)($a2)
/* B0F4 8001A8F4 0180043C */  lui        $a0, %hi(D_80010280)
/* B0F8 8001A8F8 80028424 */  addiu      $a0, $a0, %lo(D_80010280)
/* B0FC 8001A8FC 0000C28C */  lw         $v0, ($a2)
/* B100 8001A900 0D80053C */  lui        $a1, %hi(D_800D2CC0)
/* B104 8001A904 C02CA58C */  lw         $a1, %lo(D_800D2CC0)($a1)
/* B108 8001A908 0D80023C */  lui        $v0, %hi(D_800D2CA4)
/* B10C 8001A90C A42C428C */  lw         $v0, %lo(D_800D2CA4)($v0)
/* B110 8001A910 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* B114 8001A914 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* B118 8001A918 0000428C */  lw         $v0, ($v0)
/* B11C 8001A91C 2328A300 */  subu       $a1, $a1, $v1
/* B120 8001A920 1000A2AF */  sw         $v0, 0x10($sp)
/* B124 8001A924 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B128 8001A928 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B12C 8001A92C 0000C68C */  lw         $a2, ($a2)
/* B130 8001A930 0000478C */  lw         $a3, ($v0)
/* B134 8001A934 755F000C */  jal        FUN_80017dd4
/* B138 8001A938 3F00A530 */   andi      $a1, $a1, 0x3f
/* B13C 8001A93C B86C000C */  jal        SetIntrMask
/* B140 8001A940 21200000 */   addu      $a0, $zero, $zero
/* B144 8001A944 0D80013C */  lui        $at, %hi(D_800D2CC4)
/* B148 8001A948 C42C20AC */  sw         $zero, %lo(D_800D2CC4)($at)
/* B14C 8001A94C 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* B150 8001A950 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* B154 8001A954 0D80013C */  lui        $at, %hi(D_800D2CD0)
/* B158 8001A958 D02C22AC */  sw         $v0, %lo(D_800D2CD0)($at)
/* B15C 8001A95C 0D80013C */  lui        $at, %hi(D_800D2CC0)
/* B160 8001A960 C02C23AC */  sw         $v1, %lo(D_800D2CC0)($at)
/* B164 8001A964 0D80033C */  lui        $v1, %hi(D_800D2CAC)
/* B168 8001A968 AC2C638C */  lw         $v1, %lo(D_800D2CAC)($v1)
/* B16C 8001A96C 01040224 */  addiu      $v0, $zero, 0x401
/* B170 8001A970 000062AC */  sw         $v0, ($v1)
/* B174 8001A974 0D80033C */  lui        $v1, %hi(D_800D2CBC)
/* B178 8001A978 BC2C638C */  lw         $v1, %lo(D_800D2CBC)($v1)
/* B17C 8001A97C 00000000 */  nop
/* B180 8001A980 0000628C */  lw         $v0, ($v1)
/* B184 8001A984 00000000 */  nop
/* B188 8001A988 00084234 */  ori        $v0, $v0, 0x800
/* B18C 8001A98C 000062AC */  sw         $v0, ($v1)
/* B190 8001A990 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* B194 8001A994 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* B198 8001A998 0002023C */  lui        $v0, 0x200
/* B19C 8001A99C 000062AC */  sw         $v0, ($v1)
/* B1A0 8001A9A0 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* B1A4 8001A9A4 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* B1A8 8001A9A8 0001023C */  lui        $v0, 0x100
/* B1AC 8001A9AC 000062AC */  sw         $v0, ($v1)
/* B1B0 8001A9B0 0D80043C */  lui        $a0, %hi(D_800D2CD0)
/* B1B4 8001A9B4 D02C848C */  lw         $a0, %lo(D_800D2CD0)($a0)
/* B1B8 8001A9B8 B86C000C */  jal        SetIntrMask
/* B1BC 8001A9BC 00000000 */   nop
/* B1C0 8001A9C0 736A0008 */  j          SYS_OBJ_29E8
/* B1C4 8001A9C4 FFFF0224 */   addiu     $v0, $zero, -1
.L8001A9C8:
/* B1C8 8001A9C8 21100000 */  addu       $v0, $zero, $zero
