.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6b7c
/* 9737C 800A6B7C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 97380 800A6B80 1400B1AF */  sw         $s1, 0x14($sp)
/* 97384 800A6B84 21888000 */  addu       $s1, $a0, $zero
/* 97388 800A6B88 1000B0AF */  sw         $s0, 0x10($sp)
/* 9738C 800A6B8C 2180A000 */  addu       $s0, $a1, $zero
/* 97390 800A6B90 DDDD0434 */  ori        $a0, $zero, 0xdddd
/* 97394 800A6B94 DDDD0534 */  ori        $a1, $zero, 0xdddd
/* 97398 800A6B98 1800BFAF */  sw         $ra, 0x18($sp)
/* 9739C 800A6B9C 8298020C */  jal        FUN_800a6208
/* 973A0 800A6BA0 21300000 */   addu      $a2, $zero, $zero
/* 973A4 800A6BA4 02002012 */  beqz       $s1, .L800A6BB0
/* 973A8 800A6BA8 00000000 */   nop
/* 973AC 800A6BAC 000020AE */  sw         $zero, ($s1)
.L800A6BB0:
/* 973B0 800A6BB0 02000012 */  beqz       $s0, .L800A6BBC
/* 973B4 800A6BB4 21200000 */   addu      $a0, $zero, $zero
/* 973B8 800A6BB8 000000AE */  sw         $zero, ($s0)
.L800A6BBC:
/* 973BC 800A6BBC 01000E24 */  addiu      $t6, $zero, 1
/* 973C0 800A6BC0 04001824 */  addiu      $t8, $zero, 4
/* 973C4 800A6BC4 0F80023C */  lui        $v0, %hi(D_800EC6C8)
/* 973C8 800A6BC8 C8C64F24 */  addiu      $t7, $v0, %lo(D_800EC6C8)
/* 973CC 800A6BCC 1B80033C */  lui        $v1, %hi(D_801B2F14)
/* 973D0 800A6BD0 142F6C24 */  addiu      $t4, $v1, %lo(D_801B2F14)
/* 973D4 800A6BD4 2C008D25 */  addiu      $t5, $t4, 0x2c
.L800A6BD8:
/* 973D8 800A6BD8 01008B24 */  addiu      $t3, $a0, 1
/* 973DC 800A6BDC 23380403 */  subu       $a3, $t8, $a0
/* 973E0 800A6BE0 2130E001 */  addu       $a2, $t7, $zero
/* 973E4 800A6BE4 21488000 */  addu       $t1, $a0, $zero
/* 973E8 800A6BE8 03000A24 */  addiu      $t2, $zero, 3
.L800A6BEC:
/* 973EC 800A6BEC 2110E000 */  addu       $v0, $a3, $zero
/* 973F0 800A6BF0 0200E104 */  bgez       $a3, .L800A6BFC
/* 973F4 800A6BF4 04402E01 */   sllv      $t0, $t6, $t1
/* 973F8 800A6BF8 0300E224 */  addiu      $v0, $a3, 3
.L800A6BFC:
/* 973FC 800A6BFC 83280200 */  sra        $a1, $v0, 2
/* 97400 800A6C00 80100500 */  sll        $v0, $a1, 2
/* 97404 800A6C04 0D002012 */  beqz       $s1, .L800A6C3C
/* 97408 800A6C08 2328E200 */   subu      $a1, $a3, $v0
/* 9740C 800A6C0C 40100500 */  sll        $v0, $a1, 1
/* 97410 800A6C10 21104C00 */  addu       $v0, $v0, $t4
/* 97414 800A6C14 00004394 */  lhu        $v1, ($v0)
/* 97418 800A6C18 0000C494 */  lhu        $a0, ($a2)
/* 9741C 800A6C1C 00000000 */  nop
/* 97420 800A6C20 24186400 */  and        $v1, $v1, $a0
/* 97424 800A6C24 05006010 */  beqz       $v1, .L800A6C3C
/* 97428 800A6C28 00000000 */   nop
/* 9742C 800A6C2C 0000228E */  lw         $v0, ($s1)
/* 97430 800A6C30 00000000 */  nop
/* 97434 800A6C34 25104800 */  or         $v0, $v0, $t0
/* 97438 800A6C38 000022AE */  sw         $v0, ($s1)
.L800A6C3C:
/* 9743C 800A6C3C 0C000012 */  beqz       $s0, .L800A6C70
/* 97440 800A6C40 40100500 */   sll       $v0, $a1, 1
/* 97444 800A6C44 21104D00 */  addu       $v0, $v0, $t5
/* 97448 800A6C48 00004394 */  lhu        $v1, ($v0)
/* 9744C 800A6C4C 0000C494 */  lhu        $a0, ($a2)
/* 97450 800A6C50 00000000 */  nop
/* 97454 800A6C54 24186400 */  and        $v1, $v1, $a0
/* 97458 800A6C58 05006010 */  beqz       $v1, .L800A6C70
/* 9745C 800A6C5C 00000000 */   nop
/* 97460 800A6C60 0000028E */  lw         $v0, ($s0)
/* 97464 800A6C64 00000000 */  nop
/* 97468 800A6C68 25104800 */  or         $v0, $v0, $t0
/* 9746C 800A6C6C 000002AE */  sw         $v0, ($s0)
.L800A6C70:
/* 97470 800A6C70 0200C624 */  addiu      $a2, $a2, 2
/* 97474 800A6C74 FFFF4A25 */  addiu      $t2, $t2, -1
/* 97478 800A6C78 DCFF4105 */  bgez       $t2, .L800A6BEC
/* 9747C 800A6C7C 04002925 */   addiu     $t1, $t1, 4
/* 97480 800A6C80 21206001 */  addu       $a0, $t3, $zero
/* 97484 800A6C84 04008228 */  slti       $v0, $a0, 4
/* 97488 800A6C88 D3FF4014 */  bnez       $v0, .L800A6BD8
/* 9748C 800A6C8C 00000000 */   nop
/* 97490 800A6C90 1800BF8F */  lw         $ra, 0x18($sp)
/* 97494 800A6C94 1400B18F */  lw         $s1, 0x14($sp)
/* 97498 800A6C98 1000B08F */  lw         $s0, 0x10($sp)
/* 9749C 800A6C9C 0800E003 */  jr         $ra
/* 974A0 800A6CA0 2000BD27 */   addiu     $sp, $sp, 0x20
