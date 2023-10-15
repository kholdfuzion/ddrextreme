.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005AB10
/* 4B310 8005AB10 FFFF0524 */  addiu      $a1, $zero, -1
/* 4B314 8005AB14 80100400 */  sll        $v0, $a0, 2
/* 4B318 8005AB18 21104400 */  addu       $v0, $v0, $a0
/* 4B31C 8005AB1C C0100200 */  sll        $v0, $v0, 3
/* 4B320 8005AB20 21104400 */  addu       $v0, $v0, $a0
/* 4B324 8005AB24 C0100200 */  sll        $v0, $v0, 3
/* 4B328 8005AB28 23104400 */  subu       $v0, $v0, $a0
/* 4B32C 8005AB2C 80100200 */  sll        $v0, $v0, 2
/* 4B330 8005AB30 21104400 */  addu       $v0, $v0, $a0
/* 4B334 8005AB34 C0100200 */  sll        $v0, $v0, 3
/* 4B338 8005AB38 1780033C */  lui        $v1, %hi(D_80172958)
/* 4B33C 8005AB3C 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4B340 8005AB40 21104300 */  addu       $v0, $v0, $v1
/* 4B344 8005AB44 0100033C */  lui        $v1, 1
/* 4B348 8005AB48 28706334 */  ori        $v1, $v1, 0x7028
/* 4B34C 8005AB4C 01000424 */  addiu      $a0, $zero, 1
.L8005AB50:
/* 4B350 8005AB50 A82845A4 */  sh         $a1, 0x28a8($v0)
/* 4B354 8005AB54 AA2845A4 */  sh         $a1, 0x28aa($v0)
/* 4B358 8005AB58 AC2845A4 */  sh         $a1, 0x28ac($v0)
/* 4B35C 8005AB5C FFFF8424 */  addiu      $a0, $a0, -1
/* 4B360 8005AB60 FBFF8104 */  bgez       $a0, .L8005AB50
/* 4B364 8005AB64 21104300 */   addu      $v0, $v0, $v1
/* 4B368 8005AB68 0800E003 */  jr         $ra
/* 4B36C 8005AB6C 00000000 */   nop
