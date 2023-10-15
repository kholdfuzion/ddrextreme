.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b5310
/* A5B10 800B5310 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* A5B14 800B5314 1400B1AF */  sw         $s1, 0x14($sp)
/* A5B18 800B5318 21888000 */  addu       $s1, $a0, $zero
/* A5B1C 800B531C 1000222E */  sltiu      $v0, $s1, 0x10
/* A5B20 800B5320 2800BFAF */  sw         $ra, 0x28($sp)
/* A5B24 800B5324 2400B5AF */  sw         $s5, 0x24($sp)
/* A5B28 800B5328 2000B4AF */  sw         $s4, 0x20($sp)
/* A5B2C 800B532C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A5B30 800B5330 1800B2AF */  sw         $s2, 0x18($sp)
/* A5B34 800B5334 03004014 */  bnez       $v0, .L800B5344
/* A5B38 800B5338 1000B0AF */   sw        $s0, 0x10($sp)
/* A5B3C 800B533C 32D50208 */  j          .L800B54C8
/* A5B40 800B5340 FFFF0224 */   addiu     $v0, $zero, -1
.L800B5344:
/* A5B44 800B5344 AE6C000C */  jal        CheckCallback
/* A5B48 800B5348 00000000 */   nop
/* A5B4C 800B534C 0D004014 */  bnez       $v0, .L800B5384
/* A5B50 800B5350 1E80023C */   lui       $v0, 0x801e
/* A5B54 800B5354 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A5B58 800B5358 B0070292 */  lbu        $v0, %lo(D_801E07B0)($s0)
/* A5B5C 800B535C 00000000 */  nop
/* A5B60 800B5360 03004014 */  bnez       $v0, .L800B5370
/* A5B64 800B5364 00000000 */   nop
/* A5B68 800B5368 1D6E000C */  jal        FUN_8001b874
/* A5B6C 800B536C 00000000 */   nop
.L800B5370:
/* A5B70 800B5370 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A5B74 800B5374 00000000 */  nop
/* A5B78 800B5378 01004224 */  addiu      $v0, $v0, 1
/* A5B7C 800B537C B00702A2 */  sb         $v0, 0x7b0($s0)
/* A5B80 800B5380 1E80023C */  lui        $v0, %hi(D_801E09F8)
.L800B5384:
/* A5B84 800B5384 F8095024 */  addiu      $s0, $v0, %lo(D_801E09F8)
/* A5B88 800B5388 E0010326 */  addiu      $v1, $s0, 0x1e0
/* A5B8C 800B538C 2B100302 */  sltu       $v0, $s0, $v1
/* A5B90 800B5390 1E80123C */  lui        $s2, 0x801e
/* A5B94 800B5394 1A004010 */  beqz       $v0, .L800B5400
/* A5B98 800B5398 40A91100 */   sll       $s5, $s1, 5
/* A5B9C 800B539C 02001424 */  addiu      $s4, $zero, 2
/* A5BA0 800B53A0 21986000 */  addu       $s3, $v1, $zero
.L800B53A4:
/* A5BA4 800B53A4 1000038E */  lw         $v1, 0x10($s0)
/* A5BA8 800B53A8 00000000 */  nop
/* A5BAC 800B53AC 06006284 */  lh         $v0, 6($v1)
/* A5BB0 800B53B0 06006494 */  lhu        $a0, 6($v1)
/* A5BB4 800B53B4 0E005114 */  bne        $v0, $s1, .L800B53F0
/* A5BB8 800B53B8 00000000 */   nop
/* A5BBC 800B53BC FF008430 */  andi       $a0, $a0, 0xff
/* A5BC0 800B53C0 02006294 */  lhu        $v0, 2($v1)
/* A5BC4 800B53C4 00240400 */  sll        $a0, $a0, 0x10
/* A5BC8 800B53C8 2BDA020C */  jal        FUN_800b68ac
/* A5BCC 800B53CC 25208200 */   or        $a0, $a0, $v0
/* A5BD0 800B53D0 00000292 */  lbu        $v0, ($s0)
/* A5BD4 800B53D4 00000000 */  nop
/* A5BD8 800B53D8 05004010 */  beqz       $v0, .L800B53F0
/* A5BDC 800B53DC 00000000 */   nop
/* A5BE0 800B53E0 1000028E */  lw         $v0, 0x10($s0)
/* A5BE4 800B53E4 00000000 */  nop
/* A5BE8 800B53E8 000054A4 */  sh         $s4, ($v0)
/* A5BEC 800B53EC 000000A2 */  sb         $zero, ($s0)
.L800B53F0:
/* A5BF0 800B53F0 14001026 */  addiu      $s0, $s0, 0x14
/* A5BF4 800B53F4 2B101302 */  sltu       $v0, $s0, $s3
/* A5BF8 800B53F8 EAFF4014 */  bnez       $v0, .L800B53A4
/* A5BFC 800B53FC 00000000 */   nop
.L800B5400:
/* A5C00 800B5400 D807438E */  lw         $v1, 0x7d8($s2)
/* A5C04 800B5404 00000000 */  nop
/* A5C08 800B5408 00006294 */  lhu        $v0, ($v1)
/* A5C0C 800B540C 0800708C */  lw         $s0, 8($v1)
/* A5C10 800B5410 40110200 */  sll        $v0, $v0, 5
/* A5C14 800B5414 21100202 */  addu       $v0, $s0, $v0
/* A5C18 800B5418 2B100202 */  sltu       $v0, $s0, $v0
/* A5C1C 800B541C 18004010 */  beqz       $v0, .L800B5480
/* A5C20 800B5420 1E80023C */   lui       $v0, 0x801e
.L800B5424:
/* A5C24 800B5424 06000286 */  lh         $v0, 6($s0)
/* A5C28 800B5428 00000000 */  nop
/* A5C2C 800B542C 0B005114 */  bne        $v0, $s1, .L800B545C
/* A5C30 800B5430 00000000 */   nop
/* A5C34 800B5434 00000296 */  lhu        $v0, ($s0)
/* A5C38 800B5438 00000000 */  nop
/* A5C3C 800B543C FEFF4224 */  addiu      $v0, $v0, -2
/* A5C40 800B5440 0200422C */  sltiu      $v0, $v0, 2
/* A5C44 800B5444 05004010 */  beqz       $v0, .L800B545C
/* A5C48 800B5448 00000000 */   nop
/* A5C4C 800B544C 1000048E */  lw         $a0, 0x10($s0)
/* A5C50 800B5450 28D1020C */  jal        FUN_800b44a0
/* A5C54 800B5454 00000000 */   nop
/* A5C58 800B5458 000000A6 */  sh         $zero, ($s0)
.L800B545C:
/* A5C5C 800B545C D807448E */  lw         $a0, 0x7d8($s2)
/* A5C60 800B5460 20001026 */  addiu      $s0, $s0, 0x20
/* A5C64 800B5464 00008394 */  lhu        $v1, ($a0)
/* A5C68 800B5468 0800828C */  lw         $v0, 8($a0)
/* A5C6C 800B546C 40190300 */  sll        $v1, $v1, 5
/* A5C70 800B5470 21104300 */  addu       $v0, $v0, $v1
/* A5C74 800B5474 2B100202 */  sltu       $v0, $s0, $v0
/* A5C78 800B5478 EAFF4014 */  bnez       $v0, .L800B5424
/* A5C7C 800B547C 1E80023C */   lui       $v0, %hi(D_801E07E0)
.L800B5480:
/* A5C80 800B5480 E0074224 */  addiu      $v0, $v0, %lo(D_801E07E0)
/* A5C84 800B5484 21105500 */  addu       $v0, $v0, $s5
/* A5C88 800B5488 AE6C000C */  jal        CheckCallback
/* A5C8C 800B548C 1C0040AC */   sw        $zero, 0x1c($v0)
/* A5C90 800B5490 0D004014 */  bnez       $v0, .L800B54C8
/* A5C94 800B5494 21100000 */   addu      $v0, $zero, $zero
/* A5C98 800B5498 1E80103C */  lui        $s0, %hi(D_801E07B0)
/* A5C9C 800B549C B0070392 */  lbu        $v1, %lo(D_801E07B0)($s0)
/* A5CA0 800B54A0 01000224 */  addiu      $v0, $zero, 1
/* A5CA4 800B54A4 03006214 */  bne        $v1, $v0, .L800B54B4
/* A5CA8 800B54A8 00000000 */   nop
/* A5CAC 800B54AC 216E000C */  jal        FUN_8001b884
/* A5CB0 800B54B0 00000000 */   nop
.L800B54B4:
/* A5CB4 800B54B4 B0070292 */  lbu        $v0, 0x7b0($s0)
/* A5CB8 800B54B8 00000000 */  nop
/* A5CBC 800B54BC FFFF4224 */  addiu      $v0, $v0, -1
/* A5CC0 800B54C0 B00702A2 */  sb         $v0, 0x7b0($s0)
/* A5CC4 800B54C4 21100000 */  addu       $v0, $zero, $zero
.L800B54C8:
/* A5CC8 800B54C8 2800BF8F */  lw         $ra, 0x28($sp)
/* A5CCC 800B54CC 2400B58F */  lw         $s5, 0x24($sp)
/* A5CD0 800B54D0 2000B48F */  lw         $s4, 0x20($sp)
/* A5CD4 800B54D4 1C00B38F */  lw         $s3, 0x1c($sp)
/* A5CD8 800B54D8 1800B28F */  lw         $s2, 0x18($sp)
/* A5CDC 800B54DC 1400B18F */  lw         $s1, 0x14($sp)
/* A5CE0 800B54E0 1000B08F */  lw         $s0, 0x10($sp)
/* A5CE4 800B54E4 0800E003 */  jr         $ra
/* A5CE8 800B54E8 3000BD27 */   addiu     $sp, $sp, 0x30
