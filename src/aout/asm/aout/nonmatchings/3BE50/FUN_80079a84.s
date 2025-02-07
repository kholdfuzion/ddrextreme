.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80079a84
/* 6A284 80079A84 21508000 */  addu       $t2, $a0, $zero
/* 6A288 80079A88 2148A000 */  addu       $t1, $a1, $zero
/* 6A28C 80079A8C 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 6A290 80079A90 2800A424 */  addiu      $a0, $a1, %lo(D_800F0028)
/* 6A294 80079A94 80100900 */  sll        $v0, $t1, 2
/* 6A298 80079A98 21104900 */  addu       $v0, $v0, $t1
/* 6A29C 80079A9C C0190200 */  sll        $v1, $v0, 7
/* 6A2A0 80079AA0 21104300 */  addu       $v0, $v0, $v1
/* 6A2A4 80079AA4 40110200 */  sll        $v0, $v0, 5
/* 6A2A8 80079AA8 23104900 */  subu       $v0, $v0, $t1
/* 6A2AC 80079AAC 80100200 */  sll        $v0, $v0, 2
/* 6A2B0 80079AB0 21208200 */  addu       $a0, $a0, $v0
/* 6A2B4 80079AB4 9802848C */  lw         $a0, 0x298($a0)
/* 6A2B8 80079AB8 00000000 */  nop
/* 6A2BC 80079ABC 09008010 */  beqz       $a0, .L80079AE4
/* 6A2C0 80079AC0 21400000 */   addu      $t0, $zero, $zero
/* 6A2C4 80079AC4 10270224 */  addiu      $v0, $zero, 0x2710
/* 6A2C8 80079AC8 1A004400 */  div        $zero, $v0, $a0
/* 6A2CC 80079ACC 12100000 */  mflo       $v0
/* 6A2D0 80079AD0 02008014 */  bnez       $a0, .L80079ADC
/* 6A2D4 80079AD4 00000000 */   nop
/* 6A2D8 80079AD8 CD010000 */  break      0, 7
.L80079ADC:
/* 6A2DC 80079ADC BAE60108 */   j         .L80079AE8
/* 6A2E0 80079AE0 01004724 */   addiu     $a3, $v0, 1
.L80079AE4:
/* 6A2E4 80079AE4 21380000 */  addu       $a3, $zero, $zero
.L80079AE8:
/* 6A2E8 80079AE8 32000224 */  addiu      $v0, $zero, 0x32
/* 6A2EC 80079AEC 0600432D */  sltiu      $v1, $t2, 6
/* 6A2F0 80079AF0 39006010 */  beqz       $v1, .L80079BD8
/* 6A2F4 80079AF4 23304600 */   subu      $a2, $v0, $a2
/* 6A2F8 80079AF8 0180023C */  lui        $v0, %hi(D_800156F0)
/* 6A2FC 80079AFC F0564224 */  addiu      $v0, $v0, %lo(D_800156F0)
/* 6A300 80079B00 80180A00 */  sll        $v1, $t2, 2
/* 6A304 80079B04 21186200 */  addu       $v1, $v1, $v0
/* 6A308 80079B08 0000648C */  lw         $a0, ($v1)
/* 6A30C 80079B0C 00000000 */  nop
/* 6A310 80079B10 08008000 */  jr         $a0
/* 6A314 80079B14 00000000 */   nop
/* 6A318 80079B18 40180600 */  sll        $v1, $a2, 1
/* 6A31C 80079B1C 21186600 */  addu       $v1, $v1, $a2
/* 6A320 80079B20 0E016324 */  addiu      $v1, $v1, 0x10e
/* 6A324 80079B24 D5E60108 */  j          .L80079B54
/* 6A328 80079B28 1800E300 */   mult      $a3, $v1
/* 6A32C 80079B2C 40180600 */  sll        $v1, $a2, 1
/* 6A330 80079B30 21186600 */  addu       $v1, $v1, $a2
/* 6A334 80079B34 0E016324 */  addiu      $v1, $v1, 0x10e
/* 6A338 80079B38 D5E60108 */  j          .L80079B54
/* 6A33C 80079B3C 1800E300 */   mult      $a3, $v1
/* 6A340 80079B40 6400C324 */  addiu      $v1, $a2, 0x64
/* 6A344 80079B44 D5E60108 */  j          .L80079B54
/* 6A348 80079B48 1800E300 */   mult      $a3, $v1
/* 6A34C 80079B4C 2400C018 */  blez       $a2, .L80079BE0
/* 6A350 80079B50 1800E600 */   mult      $a3, $a2
.L80079B54:
/* 6A354 80079B54 12180000 */  mflo       $v1
/* 6A358 80079B58 EB51023C */  lui        $v0, 0x51eb
/* 6A35C 80079B5C 1F854234 */  ori        $v0, $v0, 0x851f
/* 6A360 80079B60 18006200 */  mult       $v1, $v0
/* 6A364 80079B64 C31F0300 */  sra        $v1, $v1, 0x1f
/* 6A368 80079B68 10100000 */  mfhi       $v0
/* 6A36C 80079B6C 43110200 */  sra        $v0, $v0, 5
/* 6A370 80079B70 F8E60108 */  j          .L80079BE0
/* 6A374 80079B74 23404300 */   subu      $t0, $v0, $v1
/* 6A378 80079B78 23180600 */  negu       $v1, $a2
/* 6A37C 80079B7C 80100300 */  sll        $v0, $v1, 2
/* 6A380 80079B80 21104300 */  addu       $v0, $v0, $v1
/* 6A384 80079B84 E8E60108 */  j          .L80079BA0
/* 6A388 80079B88 F4014224 */   addiu     $v0, $v0, 0x1f4
/* 6A38C 80079B8C 23180600 */  negu       $v1, $a2
/* 6A390 80079B90 80100300 */  sll        $v0, $v1, 2
/* 6A394 80079B94 21104300 */  addu       $v0, $v0, $v1
/* 6A398 80079B98 40100200 */  sll        $v0, $v0, 1
/* 6A39C 80079B9C E8034224 */  addiu      $v0, $v0, 0x3e8
.L80079BA0:
/* 6A3A0 80079BA0 03004104 */  bgez       $v0, .L80079BB0
/* 6A3A4 80079BA4 1800E200 */   mult      $a3, $v0
/* 6A3A8 80079BA8 21100000 */  addu       $v0, $zero, $zero
/* 6A3AC 80079BAC 1800E200 */  mult       $a3, $v0
.L80079BB0:
/* 6A3B0 80079BB0 12180000 */  mflo       $v1
/* 6A3B4 80079BB4 EB51023C */  lui        $v0, 0x51eb
/* 6A3B8 80079BB8 1F854234 */  ori        $v0, $v0, 0x851f
/* 6A3BC 80079BBC 18006200 */  mult       $v1, $v0
/* 6A3C0 80079BC0 C31F0300 */  sra        $v1, $v1, 0x1f
/* 6A3C4 80079BC4 10100000 */  mfhi       $v0
/* 6A3C8 80079BC8 43110200 */  sra        $v0, $v0, 5
/* 6A3CC 80079BCC 23104300 */  subu       $v0, $v0, $v1
/* 6A3D0 80079BD0 F8E60108 */  j          .L80079BE0
/* 6A3D4 80079BD4 23400200 */   negu      $t0, $v0
.L80079BD8:
/* 6A3D8 80079BD8 0800E003 */  jr         $ra
/* 6A3DC 80079BDC 21100000 */   addu      $v0, $zero, $zero
.L80079BE0:
/* 6A3E0 80079BE0 2800A424 */  addiu      $a0, $a1, 0x28
/* 6A3E4 80079BE4 80100900 */  sll        $v0, $t1, 2
/* 6A3E8 80079BE8 21104900 */  addu       $v0, $v0, $t1
/* 6A3EC 80079BEC C0190200 */  sll        $v1, $v0, 7
/* 6A3F0 80079BF0 21104300 */  addu       $v0, $v0, $v1
/* 6A3F4 80079BF4 40110200 */  sll        $v0, $v0, 5
/* 6A3F8 80079BF8 23104900 */  subu       $v0, $v0, $t1
/* 6A3FC 80079BFC 80100200 */  sll        $v0, $v0, 2
/* 6A400 80079C00 21204400 */  addu       $a0, $v0, $a0
/* 6A404 80079C04 46008394 */  lhu        $v1, 0x46($a0)
/* 6A408 80079C08 00000000 */  nop
/* 6A40C 80079C0C 21186800 */  addu       $v1, $v1, $t0
/* 6A410 80079C10 460083A4 */  sh         $v1, 0x46($a0)
/* 6A414 80079C14 001C0300 */  sll        $v1, $v1, 0x10
/* 6A418 80079C18 02006104 */  bgez       $v1, .L80079C24
/* 6A41C 80079C1C 00000000 */   nop
/* 6A420 80079C20 460080A4 */  sh         $zero, 0x46($a0)
.L80079C24:
/* 6A424 80079C24 46008284 */  lh         $v0, 0x46($a0)
/* 6A428 80079C28 00000000 */  nop
/* 6A42C 80079C2C 11274228 */  slti       $v0, $v0, 0x2711
/* 6A430 80079C30 02004014 */  bnez       $v0, .L80079C3C
/* 6A434 80079C34 10270224 */   addiu     $v0, $zero, 0x2710
/* 6A438 80079C38 460082A4 */  sh         $v0, 0x46($a0)
.L80079C3C:
/* 6A43C 80079C3C 0800E003 */  jr         $ra
/* 6A440 80079C40 21100001 */   addu      $v0, $t0, $zero
