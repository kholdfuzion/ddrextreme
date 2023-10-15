.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel rcos
/* 2D0A0 8003C8A0 02008104 */  bgez       $a0, .L8003C8AC
/* 2D0A4 8003C8A4 00000000 */   nop
/* 2D0A8 8003C8A8 23200400 */  negu       $a0, $a0
.L8003C8AC:
/* 2D0AC 8003C8AC FF0F8430 */  andi       $a0, $a0, 0xfff
/* 2D0B0 8003C8B0 01088228 */  slti       $v0, $a0, 0x801
/* 2D0B4 8003C8B4 10004010 */  beqz       $v0, .L8003C8F8
/* 2D0B8 8003C8B8 01048228 */   slti      $v0, $a0, 0x401
/* 2D0BC 8003C8BC 08004010 */  beqz       $v0, .L8003C8E0
/* 2D0C0 8003C8C0 00040224 */   addiu     $v0, $zero, 0x400
/* 2D0C4 8003C8C4 23104400 */  subu       $v0, $v0, $a0
/* 2D0C8 8003C8C8 40100200 */  sll        $v0, $v0, 1
/* 2D0CC 8003C8CC 0E80013C */  lui        $at, %hi(D_800D9140)
/* 2D0D0 8003C8D0 21082200 */  addu       $at, $at, $v0
/* 2D0D4 8003C8D4 40912284 */  lh         $v0, %lo(D_800D9140)($at)
/* 2D0D8 8003C8D8 4EF20008 */  j          GEO_01_OBJ_98
/* 2D0DC 8003C8DC 00000000 */   nop
.L8003C8E0:
/* 2D0E0 8003C8E0 40100400 */  sll        $v0, $a0, 1
/* 2D0E4 8003C8E4 0E80013C */  lui        $at, %hi(D_800D8940)
/* 2D0E8 8003C8E8 21082200 */  addu       $at, $at, $v0
/* 2D0EC 8003C8EC 40892284 */  lh         $v0, %lo(D_800D8940)($at)
/* 2D0F0 8003C8F0 4EF20008 */  j          GEO_01_OBJ_98
/* 2D0F4 8003C8F4 23100200 */   negu      $v0, $v0
.L8003C8F8:
/* 2D0F8 8003C8F8 010C8228 */  slti       $v0, $a0, 0xc01
/* 2D0FC 8003C8FC 07004014 */  bnez       $v0, .L8003C91C
/* 2D100 8003C900 000C0224 */   addiu     $v0, $zero, 0xc00
/* 2D104 8003C904 40100400 */  sll        $v0, $a0, 1
/* 2D108 8003C908 0D80013C */  lui        $at, %hi(D_800D7940)
/* 2D10C 8003C90C 21082200 */  addu       $at, $at, $v0
/* 2D110 8003C910 40792284 */  lh         $v0, %lo(D_800D7940)($at)
/* 2D114 8003C914 4EF20008 */  j          GEO_01_OBJ_98
/* 2D118 8003C918 00000000 */   nop
.L8003C91C:
/* 2D11C 8003C91C 23104400 */  subu       $v0, $v0, $a0
/* 2D120 8003C920 40100200 */  sll        $v0, $v0, 1
/* 2D124 8003C924 0E80013C */  lui        $at, %hi(D_800D9140)
/* 2D128 8003C928 21082200 */  addu       $at, $at, $v0
/* 2D12C 8003C92C 40912284 */  lh         $v0, %lo(D_800D9140)($at)
/* 2D130 8003C930 00000000 */  nop
/* 2D134 8003C934 23100200 */  negu       $v0, $v0
