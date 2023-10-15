.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800B631C
/* A6B1C 800B631C A8FFBD27 */  addiu      $sp, $sp, -0x58
/* A6B20 800B6320 5000BFAF */  sw         $ra, 0x50($sp)
/* A6B24 800B6324 FF00A730 */  andi       $a3, $a1, 0xff
/* A6B28 800B6328 1E80033C */  lui        $v1, %hi(D_801E09F8)
/* A6B2C 800B632C F8096524 */  addiu      $a1, $v1, %lo(D_801E09F8)
/* A6B30 800B6330 E001A624 */  addiu      $a2, $a1, 0x1e0
/* A6B34 800B6334 2B10A600 */  sltu       $v0, $a1, $a2
/* A6B38 800B6338 0E004010 */  beqz       $v0, .L800B6374
/* A6B3C 800B633C 21406000 */   addu      $t0, $v1, $zero
/* A6B40 800B6340 2118C000 */  addu       $v1, $a2, $zero
.L800B6344:
/* A6B44 800B6344 0000A290 */  lbu        $v0, ($a1)
/* A6B48 800B6348 00000000 */  nop
/* A6B4C 800B634C 05004010 */  beqz       $v0, .L800B6364
/* A6B50 800B6350 00000000 */   nop
/* A6B54 800B6354 0C00A28C */  lw         $v0, 0xc($a1)
/* A6B58 800B6358 00000000 */  nop
/* A6B5C 800B635C 0B004410 */  beq        $v0, $a0, .L800B638C
/* A6B60 800B6360 00000000 */   nop
.L800B6364:
/* A6B64 800B6364 1400A524 */  addiu      $a1, $a1, 0x14
/* A6B68 800B6368 2B10A300 */  sltu       $v0, $a1, $v1
/* A6B6C 800B636C F5FF4014 */  bnez       $v0, .L800B6344
/* A6B70 800B6370 00000000 */   nop
.L800B6374:
/* A6B74 800B6374 FFFF0624 */  addiu      $a2, $zero, -1
/* A6B78 800B6378 FFFF0224 */  addiu      $v0, $zero, -1
.L800B637C:
/* A6B7C 800B637C 0600C214 */  bne        $a2, $v0, .L800B6398
/* A6B80 800B6380 1E80043C */   lui       $a0, 0x801e
/* A6B84 800B6384 1DD90208 */  j          .L800B6474
/* A6B88 800B6388 00000000 */   nop
.L800B638C:
/* A6B8C 800B638C 0300A690 */  lbu        $a2, 3($a1)
/* A6B90 800B6390 DFD80208 */  j          .L800B637C
/* A6B94 800B6394 FFFF0224 */   addiu     $v0, $zero, -1
.L800B6398:
/* A6B98 800B6398 0180033C */  lui        $v1, %hi(D_8001727C)
/* A6B9C 800B639C 7C726324 */  addiu      $v1, $v1, %lo(D_8001727C)
/* A6BA0 800B63A0 80280600 */  sll        $a1, $a2, 2
/* A6BA4 800B63A4 2118A300 */  addu       $v1, $a1, $v1
/* A6BA8 800B63A8 E809828C */  lw         $v0, 0x9e8($a0)
/* A6BAC 800B63AC 0000698C */  lw         $t1, ($v1)
/* A6BB0 800B63B0 00000000 */  nop
/* A6BB4 800B63B4 24104900 */  and        $v0, $v0, $t1
/* A6BB8 800B63B8 2D004010 */  beqz       $v0, .L800B6470
/* A6BBC 800B63BC 2110A600 */   addu      $v0, $a1, $a2
/* A6BC0 800B63C0 80100200 */  sll        $v0, $v0, 2
/* A6BC4 800B63C4 F8090325 */  addiu      $v1, $t0, 0x9f8
/* A6BC8 800B63C8 21404300 */  addu       $t0, $v0, $v1
/* A6BCC 800B63CC 00000391 */  lbu        $v1, ($t0)
/* A6BD0 800B63D0 00000000 */  nop
/* A6BD4 800B63D4 26006010 */  beqz       $v1, .L800B6470
/* A6BD8 800B63D8 02000224 */   addiu     $v0, $zero, 2
/* A6BDC 800B63DC 25006210 */  beq        $v1, $v0, .L800B6474
/* A6BE0 800B63E0 FFFF0224 */   addiu     $v0, $zero, -1
/* A6BE4 800B63E4 0300E014 */  bnez       $a3, .L800B63F4
/* A6BE8 800B63E8 00160700 */   sll       $v0, $a3, 0x18
/* A6BEC 800B63EC 01000724 */  addiu      $a3, $zero, 1
/* A6BF0 800B63F0 00160700 */  sll        $v0, $a3, 0x18
.L800B63F4:
/* A6BF4 800B63F4 02004104 */  bgez       $v0, .L800B6400
/* A6BF8 800B63F8 0180053C */   lui       $a1, %hi(D_8001717C)
/* A6BFC 800B63FC 7F000724 */  addiu      $a3, $zero, 0x7f
.L800B6400:
/* A6C00 800B6400 7C71A524 */  addiu      $a1, $a1, %lo(D_8001717C)
/* A6C04 800B6404 80000224 */  addiu      $v0, $zero, 0x80
/* A6C08 800B6408 23104700 */  subu       $v0, $v0, $a3
/* A6C0C 800B640C 40100200 */  sll        $v0, $v0, 1
/* A6C10 800B6410 21104500 */  addu       $v0, $v0, $a1
/* A6C14 800B6414 06000685 */  lh         $a2, 6($t0)
/* A6C18 800B6418 00004494 */  lhu        $a0, ($v0)
/* A6C1C 800B641C 00000000 */  nop
/* A6C20 800B6420 1800C400 */  mult       $a2, $a0
/* A6C24 800B6424 40100700 */  sll        $v0, $a3, 1
/* A6C28 800B6428 21104500 */  addu       $v0, $v0, $a1
/* A6C2C 800B642C 12200000 */  mflo       $a0
/* A6C30 800B6430 00004394 */  lhu        $v1, ($v0)
/* A6C34 800B6434 00000000 */  nop
/* A6C38 800B6438 1800C300 */  mult       $a2, $v1
/* A6C3C 800B643C 03000224 */  addiu      $v0, $zero, 3
/* A6C40 800B6440 010007A1 */  sb         $a3, 1($t0)
/* A6C44 800B6444 1400A2AF */  sw         $v0, 0x14($sp)
/* A6C48 800B6448 1000A9AF */  sw         $t1, 0x10($sp)
/* A6C4C 800B644C 03220400 */  sra        $a0, $a0, 8
/* A6C50 800B6450 1800A4A7 */  sh         $a0, 0x18($sp)
/* A6C54 800B6454 1000A427 */  addiu      $a0, $sp, 0x10
/* A6C58 800B6458 12300000 */  mflo       $a2
/* A6C5C 800B645C 03320600 */  sra        $a2, $a2, 8
/* A6C60 800B6460 B5E3020C */  jal        SpuSetVoiceAttr
/* A6C64 800B6464 1A00A6A7 */   sh        $a2, 0x1a($sp)
/* A6C68 800B6468 1DD90208 */  j          .L800B6474
/* A6C6C 800B646C 21100000 */   addu      $v0, $zero, $zero
.L800B6470:
/* A6C70 800B6470 FFFF0224 */  addiu      $v0, $zero, -1
.L800B6474:
/* A6C74 800B6474 5000BF8F */  lw         $ra, 0x50($sp)
/* A6C78 800B6478 00000000 */  nop
/* A6C7C 800B647C 0800E003 */  jr         $ra
/* A6C80 800B6480 5800BD27 */   addiu     $sp, $sp, 0x58
