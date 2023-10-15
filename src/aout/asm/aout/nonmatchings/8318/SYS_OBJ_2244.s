.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2244
/* AA28 8001A228 02004104 */  bgez       $v0, .L8001A234
/* AA2C 8001A22C 00000000 */   nop
/* AA30 8001A230 03004224 */  addiu      $v0, $v0, 3
.L8001A234:
/* AA34 8001A234 83100200 */  sra        $v0, $v0, 2
/* AA38 8001A238 2A10C200 */  slt        $v0, $a2, $v0
/* AA3C 8001A23C 0E004010 */  beqz       $v0, .L8001A278
/* AA40 8001A240 80200600 */   sll       $a0, $a2, 2
/* AA44 8001A244 0000E58C */  lw         $a1, ($a3)
/* AA48 8001A248 0400E724 */  addiu      $a3, $a3, 4
/* AA4C 8001A24C 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AA50 8001A250 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AA54 8001A254 0100C624 */  addiu      $a2, $a2, 1
/* AA58 8001A258 40100300 */  sll        $v0, $v1, 1
/* AA5C 8001A25C 21104300 */  addu       $v0, $v0, $v1
/* AA60 8001A260 40110200 */  sll        $v0, $v0, 5
/* AA64 8001A264 21104800 */  addu       $v0, $v0, $t0
/* AA68 8001A268 21208200 */  addu       $a0, $a0, $v0
/* AA6C 8001A26C 000085AC */  sw         $a1, ($a0)
/* AA70 8001A270 8A680008 */  j          SYS_OBJ_2244
/* AA74 8001A274 21102002 */   addu      $v0, $s1, $zero
.L8001A278:
/* AA78 8001A278 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* AA7C 8001A27C C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* AA80 8001A280 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AA84 8001A284 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AA88 8001A288 40200200 */  sll        $a0, $v0, 1
/* AA8C 8001A28C 21208200 */  addu       $a0, $a0, $v0
/* AA90 8001A290 40210400 */  sll        $a0, $a0, 5
/* AA94 8001A294 40100300 */  sll        $v0, $v1, 1
/* AA98 8001A298 21104300 */  addu       $v0, $v0, $v1
/* AA9C 8001A29C 40110200 */  sll        $v0, $v0, 5
/* AAA0 8001A2A0 0F80033C */  lui        $v1, %hi(D_800EE7B4)
/* AAA4 8001A2A4 B4E76324 */  addiu      $v1, $v1, %lo(D_800EE7B4)
/* AAA8 8001A2A8 21104300 */  addu       $v0, $v0, $v1
/* AAAC 8001A2AC 0F80013C */  lui        $at, %hi(D_800EE7AC)
/* AAB0 8001A2B0 21082400 */  addu       $at, $at, $a0
/* AAB4 8001A2B4 B8680008 */  j          SYS_OBJ_22FC
/* AAB8 8001A2B8 ACE722AC */   sw        $v0, %lo(D_800EE7AC)($at)
.L8001A2BC:
/* AABC 8001A2BC 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AAC0 8001A2C0 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AAC4 8001A2C4 00000000 */  nop
/* AAC8 8001A2C8 40100300 */  sll        $v0, $v1, 1
/* AACC 8001A2CC 21104300 */  addu       $v0, $v0, $v1
/* AAD0 8001A2D0 40110200 */  sll        $v0, $v0, 5
/* AAD4 8001A2D4 0F80013C */  lui        $at, %hi(D_800EE7AC)
/* AAD8 8001A2D8 21082200 */  addu       $at, $at, $v0
/* AADC 8001A2DC ACE730AC */  sw         $s0, %lo(D_800EE7AC)($at)
