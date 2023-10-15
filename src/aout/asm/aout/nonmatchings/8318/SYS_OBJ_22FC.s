.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_22FC
/* AAE0 8001A2E0 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AAE4 8001A2E4 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AAE8 8001A2E8 00000000 */  nop
/* AAEC 8001A2EC 40100300 */  sll        $v0, $v1, 1
/* AAF0 8001A2F0 21104300 */  addu       $v0, $v0, $v1
/* AAF4 8001A2F4 40110200 */  sll        $v0, $v0, 5
/* AAF8 8001A2F8 0F80013C */  lui        $at, %hi(D_800EE7B0)
/* AAFC 8001A2FC 21082200 */  addu       $at, $at, $v0
/* AB00 8001A300 B0E732AC */  sw         $s2, %lo(D_800EE7B0)($at)
/* AB04 8001A304 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AB08 8001A308 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AB0C 8001A30C 00000000 */  nop
/* AB10 8001A310 40100300 */  sll        $v0, $v1, 1
/* AB14 8001A314 21104300 */  addu       $v0, $v0, $v1
/* AB18 8001A318 40110200 */  sll        $v0, $v0, 5
/* AB1C 8001A31C 0F80013C */  lui        $at, %hi(D_800EE7A8)
/* AB20 8001A320 21082200 */  addu       $at, $at, $v0
/* AB24 8001A324 A8E733AC */  sw         $s3, %lo(D_800EE7A8)($at)
/* AB28 8001A328 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* AB2C 8001A32C C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* AB30 8001A330 0D80043C */  lui        $a0, %hi(D_800D2CC8)
/* AB34 8001A334 C82C848C */  lw         $a0, %lo(D_800D2CC8)($a0)
/* AB38 8001A338 01004224 */  addiu      $v0, $v0, 1
/* AB3C 8001A33C 3F004230 */  andi       $v0, $v0, 0x3f
/* AB40 8001A340 0D80013C */  lui        $at, %hi(D_800D2CC0)
/* AB44 8001A344 B86C000C */  jal        SetIntrMask
/* AB48 8001A348 C02C22AC */   sw        $v0, %lo(D_800D2CC0)($at)
/* AB4C 8001A34C E368000C */  jal        SYS_OBJ_23A8
/* AB50 8001A350 00000000 */   nop
/* AB54 8001A354 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* AB58 8001A358 C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* AB5C 8001A35C 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* AB60 8001A360 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* AB64 8001A364 00000000 */  nop
/* AB68 8001A368 23104300 */  subu       $v0, $v0, $v1
/* AB6C 8001A36C 3F004230 */  andi       $v0, $v0, 0x3f
