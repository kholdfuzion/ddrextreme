.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a5384
/* 95B84 800A5384 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 95B88 800A5388 21300000 */  addu       $a2, $zero, $zero
/* 95B8C 800A538C 0F80023C */  lui        $v0, %hi(D_800F01D4)
/* 95B90 800A5390 D4014D24 */  addiu      $t5, $v0, %lo(D_800F01D4)
/* 95B94 800A5394 F1D80C24 */  addiu      $t4, $zero, -0x270f
/* 95B98 800A5398 01000B24 */  addiu      $t3, $zero, 1
/* 95B9C 800A539C 08008224 */  addiu      $v0, $a0, 8
/* 95BA0 800A53A0 1000BFAF */  sw         $ra, 0x10($sp)
/* 95BA4 800A53A4 040040A0 */  sb         $zero, 4($v0)
/* 95BA8 800A53A8 080040AC */  sw         $zero, 8($v0)
/* 95BAC 800A53AC 080080AC */  sw         $zero, 8($a0)
.L800A53B0:
/* 95BB0 800A53B0 21280000 */  addu       $a1, $zero, $zero
/* 95BB4 800A53B4 0100CA24 */  addiu      $t2, $a2, 1
/* 95BB8 800A53B8 80100600 */  sll        $v0, $a2, 2
/* 95BBC 800A53BC 21104600 */  addu       $v0, $v0, $a2
/* 95BC0 800A53C0 C0190200 */  sll        $v1, $v0, 7
/* 95BC4 800A53C4 21104300 */  addu       $v0, $v0, $v1
/* 95BC8 800A53C8 40110200 */  sll        $v0, $v0, 5
/* 95BCC 800A53CC 23104600 */  subu       $v0, $v0, $a2
/* 95BD0 800A53D0 80100200 */  sll        $v0, $v0, 2
/* 95BD4 800A53D4 21204D00 */  addu       $a0, $v0, $t5
/* 95BD8 800A53D8 40008724 */  addiu      $a3, $a0, 0x40
/* 95BDC 800A53DC 44008624 */  addiu      $a2, $a0, 0x44
/* 95BE0 800A53E0 30008924 */  addiu      $t1, $a0, 0x30
/* 95BE4 800A53E4 D0008824 */  addiu      $t0, $a0, 0xd0
/* 95BE8 800A53E8 000080AC */  sw         $zero, ($a0)
/* 95BEC 800A53EC 040080AC */  sw         $zero, 4($a0)
/* 95BF0 800A53F0 080080AC */  sw         $zero, 8($a0)
/* 95BF4 800A53F4 0C0080AC */  sw         $zero, 0xc($a0)
/* 95BF8 800A53F8 A00080AC */  sw         $zero, 0xa0($a0)
/* 95BFC 800A53FC 40100500 */  sll        $v0, $a1, 1
.L800A5400:
/* 95C00 800A5400 21104500 */  addu       $v0, $v0, $a1
/* 95C04 800A5404 80100200 */  sll        $v0, $v0, 2
/* 95C08 800A5408 2118E200 */  addu       $v1, $a3, $v0
/* 95C0C 800A540C 00006CAC */  sw         $t4, ($v1)
/* 95C10 800A5410 0100A524 */  addiu      $a1, $a1, 1
/* 95C14 800A5414 07000324 */  addiu      $v1, $zero, 7
/* 95C18 800A5418 21104600 */  addu       $v0, $v0, $a2
/* 95C1C 800A541C 07004224 */  addiu      $v0, $v0, 7
.L800A5420:
/* 95C20 800A5420 00004BA0 */  sb         $t3, ($v0)
/* 95C24 800A5424 FFFF6324 */  addiu      $v1, $v1, -1
/* 95C28 800A5428 FDFF6104 */  bgez       $v1, .L800A5420
/* 95C2C 800A542C FFFF4224 */   addiu     $v0, $v0, -1
/* 95C30 800A5430 0800A228 */  slti       $v0, $a1, 8
/* 95C34 800A5434 F2FF4014 */  bnez       $v0, .L800A5400
/* 95C38 800A5438 40100500 */   sll       $v0, $a1, 1
/* 95C3C 800A543C F1D80724 */  addiu      $a3, $zero, -0x270f
/* 95C40 800A5440 21300001 */  addu       $a2, $t0, $zero
/* 95C44 800A5444 21282001 */  addu       $a1, $t1, $zero
/* 95C48 800A5448 07000324 */  addiu      $v1, $zero, 7
/* 95C4C 800A544C 64000224 */  addiu      $v0, $zero, 0x64
/* 95C50 800A5450 A40080AC */  sw         $zero, 0xa4($a0)
/* 95C54 800A5454 A80080AC */  sw         $zero, 0xa8($a0)
/* 95C58 800A5458 AC0080AC */  sw         $zero, 0xac($a0)
/* 95C5C 800A545C B00080AC */  sw         $zero, 0xb0($a0)
/* 95C60 800A5460 B40080AC */  sw         $zero, 0xb4($a0)
/* 95C64 800A5464 B80080AC */  sw         $zero, 0xb8($a0)
/* 95C68 800A5468 BC0080AC */  sw         $zero, 0xbc($a0)
/* 95C6C 800A546C E40082A4 */  sh         $v0, 0xe4($a0)
/* 95C70 800A5470 E60080A4 */  sh         $zero, 0xe6($a0)
/* 95C74 800A5474 E80080A4 */  sh         $zero, 0xe8($a0)
/* 95C78 800A5478 CE0080A0 */  sb         $zero, 0xce($a0)
.L800A547C:
/* 95C7C 800A547C 0000A7A4 */  sh         $a3, ($a1)
/* 95C80 800A5480 0000C7A4 */  sh         $a3, ($a2)
/* 95C84 800A5484 0200C624 */  addiu      $a2, $a2, 2
/* 95C88 800A5488 FFFF6324 */  addiu      $v1, $v1, -1
/* 95C8C 800A548C FBFF6104 */  bgez       $v1, .L800A547C
/* 95C90 800A5490 0200A524 */   addiu     $a1, $a1, 2
/* 95C94 800A5494 21304001 */  addu       $a2, $t2, $zero
/* 95C98 800A5498 0200C228 */  slti       $v0, $a2, 2
/* 95C9C 800A549C E00080A4 */  sh         $zero, 0xe0($a0)
/* 95CA0 800A54A0 C3FF4014 */  bnez       $v0, .L800A53B0
/* 95CA4 800A54A4 E20080A4 */   sh        $zero, 0xe2($a0)
/* 95CA8 800A54A8 6393020C */  jal        FUN_800a4d8c
/* 95CAC 800A54AC 00000000 */   nop
/* 95CB0 800A54B0 233D010C */  jal        FUN_8004f48c
/* 95CB4 800A54B4 00000000 */   nop
/* 95CB8 800A54B8 ED28010C */  jal        FUN_8004a3b4
/* 95CBC 800A54BC 00000000 */   nop
/* 95CC0 800A54C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 95CC4 800A54C4 00000000 */  nop
/* 95CC8 800A54C8 0800E003 */  jr         $ra
/* 95CCC 800A54CC 1800BD27 */   addiu     $sp, $sp, 0x18
