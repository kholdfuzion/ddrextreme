.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_29F8
/* B1DC 8001A9DC 0010033C */  lui        $v1, 0x1000
/* B1E0 8001A9E0 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B1E4 8001A9E4 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B1E8 8001A9E8 07006334 */  ori        $v1, $v1, 7
/* B1EC 8001A9EC 000043AC */  sw         $v1, ($v0)
/* B1F0 8001A9F0 0D80053C */  lui        $a1, %hi(D_800D2C9C)
/* B1F4 8001A9F4 9C2CA58C */  lw         $a1, %lo(D_800D2C9C)($a1)
/* B1F8 8001A9F8 FF00033C */  lui        $v1, 0xff
/* B1FC 8001A9FC 0000A28C */  lw         $v0, ($a1)
/* B200 8001AA00 FFFF6334 */  ori        $v1, $v1, 0xffff
/* B204 8001AA04 24104300 */  and        $v0, $v0, $v1
/* B208 8001AA08 02000324 */  addiu      $v1, $zero, 2
/* B20C 8001AA0C 0F004310 */  beq        $v0, $v1, .L8001AA4C
/* B210 8001AA10 00E1033C */   lui       $v1, 0xe100
/* B214 8001AA14 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B218 8001AA18 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B21C 8001AA1C 00000000 */  nop
/* B220 8001AA20 0000428C */  lw         $v0, ($v0)
/* B224 8001AA24 00106334 */  ori        $v1, $v1, 0x1000
/* B228 8001AA28 FF3F4230 */  andi       $v0, $v0, 0x3fff
/* B22C 8001AA2C 25104300 */  or         $v0, $v0, $v1
/* B230 8001AA30 0000A2AC */  sw         $v0, ($a1)
/* B234 8001AA34 0D80033C */  lui        $v1, %hi(D_800D2C9C)
/* B238 8001AA38 9C2C638C */  lw         $v1, %lo(D_800D2C9C)($v1)
/* B23C 8001AA3C 21100000 */  addu       $v0, $zero, $zero
/* B240 8001AA40 0000638C */  lw         $v1, ($v1)
/* B244 8001AA44 9D6A0008 */  j          SYS_OBJ_2A90
/* B248 8001AA48 00000000 */   nop
.L8001AA4C:
/* B24C 8001AA4C 08008230 */  andi       $v0, $a0, 8
/* B250 8001AA50 07004010 */  beqz       $v0, .L8001AA70
/* B254 8001AA54 0009043C */   lui       $a0, 0x900
/* B258 8001AA58 01008434 */  ori        $a0, $a0, 1
/* B25C 8001AA5C 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* B260 8001AA60 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* B264 8001AA64 02000224 */  addiu      $v0, $zero, 2
/* B268 8001AA68 9D6A0008 */  j          SYS_OBJ_2A90
/* B26C 8001AA6C 000064AC */   sw        $a0, ($v1)
.L8001AA70:
/* B270 8001AA70 01000224 */  addiu      $v0, $zero, 1
