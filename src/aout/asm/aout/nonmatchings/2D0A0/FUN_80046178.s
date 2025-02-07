.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80046178
/* 36978 80046178 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 3697C 8004617C 3400B1AF */  sw         $s1, 0x34($sp)
/* 36980 80046180 2188A000 */  addu       $s1, $a1, $zero
/* 36984 80046184 1380063C */  lui        $a2, %hi(D_801280E0)
/* 36988 80046188 E080C224 */  addiu      $v0, $a2, %lo(D_801280E0)
/* 3698C 8004618C 5400BFAF */  sw         $ra, 0x54($sp)
/* 36990 80046190 5000BEAF */  sw         $fp, 0x50($sp)
/* 36994 80046194 4C00B7AF */  sw         $s7, 0x4c($sp)
/* 36998 80046198 4800B6AF */  sw         $s6, 0x48($sp)
/* 3699C 8004619C 4400B5AF */  sw         $s5, 0x44($sp)
/* 369A0 800461A0 4000B4AF */  sw         $s4, 0x40($sp)
/* 369A4 800461A4 3C00B3AF */  sw         $s3, 0x3c($sp)
/* 369A8 800461A8 3800B2AF */  sw         $s2, 0x38($sp)
/* 369AC 800461AC 3000B0AF */  sw         $s0, 0x30($sp)
/* 369B0 800461B0 0A004390 */  lbu        $v1, 0xa($v0)
/* 369B4 800461B4 1380053C */  lui        $a1, 0x8013
/* 369B8 800461B8 5800A4AF */  sw         $a0, 0x58($sp)
/* 369BC 800461BC 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 369C0 800461C0 28008724 */  addiu      $a3, $a0, %lo(D_800F0028)
/* 369C4 800461C4 C0100300 */  sll        $v0, $v1, 3
/* 369C8 800461C8 23104300 */  subu       $v0, $v0, $v1
/* 369CC 800461CC 80100200 */  sll        $v0, $v0, 2
/* 369D0 800461D0 E082A324 */  addiu      $v1, $a1, -0x7d20
/* 369D4 800461D4 21F04300 */  addu       $fp, $v0, $v1
/* 369D8 800461D8 3C00E380 */  lb         $v1, 0x3c($a3)
/* 369DC 800461DC 02000824 */  addiu      $t0, $zero, 2
/* 369E0 800461E0 1A006810 */  beq        $v1, $t0, .L8004624C
/* 369E4 800461E4 04000424 */   addiu     $a0, $zero, 4
/* 369E8 800461E8 18006410 */  beq        $v1, $a0, .L8004624C
/* 369EC 800461EC 0100023C */   lui       $v0, 1
/* 369F0 800461F0 2128E200 */  addu       $a1, $a3, $v0
/* 369F4 800461F4 B842A280 */  lb         $v0, 0x42b8($a1)
/* 369F8 800461F8 00000000 */  nop
/* 369FC 800461FC 11004810 */  beq        $v0, $t0, .L80046244
/* 36A00 80046200 00000000 */   nop
/* 36A04 80046204 0F004410 */  beq        $v0, $a0, .L80046244
/* 36A08 80046208 07000324 */   addiu     $v1, $zero, 7
/* 36A0C 8004620C 8A00E490 */  lbu        $a0, 0x8a($a3)
/* 36A10 80046210 00000000 */  nop
/* 36A14 80046214 03008310 */  beq        $a0, $v1, .L80046224
/* 36A18 80046218 00000000 */   nop
/* 36A1C 8004621C 0C008014 */  bnez       $a0, .L80046250
/* 36A20 80046220 21200000 */   addu      $a0, $zero, $zero
.L80046224:
/* 36A24 80046224 0643A290 */  lbu        $v0, 0x4306($a1)
/* 36A28 80046228 00000000 */  nop
/* 36A2C 8004622C 08004310 */  beq        $v0, $v1, .L80046250
/* 36A30 80046230 FFFF0424 */   addiu     $a0, $zero, -1
/* 36A34 80046234 06004014 */  bnez       $v0, .L80046250
/* 36A38 80046238 21200000 */   addu      $a0, $zero, $zero
/* 36A3C 8004623C 94180108 */  j          .L80046250
/* 36A40 80046240 FFFF0424 */   addiu     $a0, $zero, -1
.L80046244:
/* 36A44 80046244 94180108 */  j          .L80046250
/* 36A48 80046248 01000424 */   addiu     $a0, $zero, 1
.L8004624C:
/* 36A4C 8004624C 21200000 */  addu       $a0, $zero, $zero
.L80046250:
/* 36A50 80046250 FFFF0224 */  addiu      $v0, $zero, -1
/* 36A54 80046254 03008214 */  bne        $a0, $v0, .L80046264
/* 36A58 80046258 80100400 */   sll       $v0, $a0, 2
/* 36A5C 8004625C 21200000 */  addu       $a0, $zero, $zero
/* 36A60 80046260 80100400 */  sll        $v0, $a0, 2
.L80046264:
/* 36A64 80046264 21104400 */  addu       $v0, $v0, $a0
/* 36A68 80046268 C0190200 */  sll        $v1, $v0, 7
/* 36A6C 8004626C 21104300 */  addu       $v0, $v0, $v1
/* 36A70 80046270 40110200 */  sll        $v0, $v0, 5
/* 36A74 80046274 23104400 */  subu       $v0, $v0, $a0
/* 36A78 80046278 80100200 */  sll        $v0, $v0, 2
/* 36A7C 8004627C 0F80053C */  lui        $a1, %hi(D_800F01D4)
/* 36A80 80046280 D401A624 */  addiu      $a2, $a1, %lo(D_800F01D4)
/* 36A84 80046284 21104600 */  addu       $v0, $v0, $a2
/* 36A88 80046288 0800438C */  lw         $v1, 8($v0)
/* 36A8C 8004628C 00000000 */  nop
/* 36A90 80046290 00406324 */  addiu      $v1, $v1, 0x4000
/* 36A94 80046294 2000A3AF */  sw         $v1, 0x20($sp)
/* 36A98 80046298 54FEC284 */  lh         $v0, -0x1ac($a2)
/* 36A9C 8004629C 26000424 */  addiu      $a0, $zero, 0x26
/* 36AA0 800462A0 06004414 */  bne        $v0, $a0, .L800462BC
/* 36AA4 800462A4 21A00000 */   addu      $s4, $zero, $zero
/* 36AA8 800462A8 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 36AAC 800462AC 1C00438C */  lw         $v1, %lo(D_800F001C)($v0)
/* 36AB0 800462B0 00000000 */  nop
/* 36AB4 800462B4 40190300 */  sll        $v1, $v1, 5
/* 36AB8 800462B8 2000A3AF */  sw         $v1, 0x20($sp)
.L800462BC:
/* 36ABC 800462BC 21400000 */  addu       $t0, $zero, $zero
.L800462C0:
/* 36AC0 800462C0 80101400 */  sll        $v0, $s4, 2
/* 36AC4 800462C4 21105400 */  addu       $v0, $v0, $s4
/* 36AC8 800462C8 C0190200 */  sll        $v1, $v0, 7
/* 36ACC 800462CC 21104300 */  addu       $v0, $v0, $v1
/* 36AD0 800462D0 40110200 */  sll        $v0, $v0, 5
/* 36AD4 800462D4 23105400 */  subu       $v0, $v0, $s4
/* 36AD8 800462D8 80100200 */  sll        $v0, $v0, 2
/* 36ADC 800462DC 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 36AE0 800462E0 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 36AE4 800462E4 21304300 */  addu       $a2, $v0, $v1
/* 36AE8 800462E8 0F80043C */  lui        $a0, %hi(D_800F01D4)
/* 36AEC 800462EC D4018324 */  addiu      $v1, $a0, %lo(D_800F01D4)
/* 36AF0 800462F0 21284300 */  addu       $a1, $v0, $v1
/* 36AF4 800462F4 03000224 */  addiu      $v0, $zero, 3
/* 36AF8 800462F8 54FE6384 */  lh         $v1, -0x1ac($v1)
/* 36AFC 800462FC 4600C784 */  lh         $a3, 0x46($a2)
/* 36B00 80046300 04006210 */  beq        $v1, $v0, .L80046314
/* 36B04 80046304 21480000 */   addu      $t1, $zero, $zero
/* 36B08 80046308 26000224 */  addiu      $v0, $zero, 0x26
/* 36B0C 8004630C 19006214 */  bne        $v1, $v0, .L80046374
/* 36B10 80046310 00000000 */   nop
.L80046314:
/* 36B14 80046314 01000424 */  addiu      $a0, $zero, 1
/* 36B18 80046318 23209400 */  subu       $a0, $a0, $s4
/* 36B1C 8004631C 80100400 */  sll        $v0, $a0, 2
/* 36B20 80046320 21104400 */  addu       $v0, $v0, $a0
/* 36B24 80046324 C0190200 */  sll        $v1, $v0, 7
/* 36B28 80046328 21104300 */  addu       $v0, $v0, $v1
/* 36B2C 8004632C 40110200 */  sll        $v0, $v0, 5
/* 36B30 80046330 23104400 */  subu       $v0, $v0, $a0
/* 36B34 80046334 80100200 */  sll        $v0, $v0, 2
/* 36B38 80046338 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 36B3C 8004633C 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 36B40 80046340 21104300 */  addu       $v0, $v0, $v1
/* 36B44 80046344 45004390 */  lbu        $v1, 0x45($v0)
/* 36B48 80046348 00000000 */  nop
/* 36B4C 8004634C CB016010 */  beqz       $v1, .L80046A7C
/* 36B50 80046350 01009526 */   addiu     $s5, $s4, 1
/* 36B54 80046354 4500C290 */  lbu        $v0, 0x45($a2)
/* 36B58 80046358 00000000 */  nop
/* 36B5C 8004635C 0F004010 */  beqz       $v0, .L8004639C
/* 36B60 80046360 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 36B64 80046364 C5018012 */  beqz       $s4, .L80046A7C
/* 36B68 80046368 28008424 */   addiu     $a0, $a0, %lo(D_800F0028)
/* 36B6C 8004636C E8180108 */  j          .L800463A0
/* 36B70 80046370 00000000 */   nop
.L80046374:
/* 36B74 80046374 4500C290 */  lbu        $v0, 0x45($a2)
/* 36B78 80046378 00000000 */  nop
/* 36B7C 8004637C BF014010 */  beqz       $v0, .L80046A7C
/* 36B80 80046380 01009526 */   addiu     $s5, $s4, 1
/* 36B84 80046384 8A00C390 */  lbu        $v1, 0x8a($a2)
/* 36B88 80046388 07000224 */  addiu      $v0, $zero, 7
/* 36B8C 8004638C BB016210 */  beq        $v1, $v0, .L80046A7C
/* 36B90 80046390 00000000 */   nop
/* 36B94 80046394 B9016010 */  beqz       $v1, .L80046A7C
/* 36B98 80046398 0F80043C */   lui       $a0, %hi(D_800F0028)
.L8004639C:
/* 36B9C 8004639C 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
.L800463A0:
/* 36BA0 800463A0 1A008380 */  lb         $v1, 0x1a($a0)
/* 36BA4 800463A4 02000224 */  addiu      $v0, $zero, 2
/* 36BA8 800463A8 07006214 */  bne        $v1, $v0, .L800463C8
/* 36BAC 800463AC 6666023C */   lui       $v0, 0x6666
/* 36BB0 800463B0 67664234 */  ori        $v0, $v0, 0x6667
/* 36BB4 800463B4 1800E200 */  mult       $a3, $v0
/* 36BB8 800463B8 C31F0700 */  sra        $v1, $a3, 0x1f
/* 36BBC 800463BC 10100000 */  mfhi       $v0
/* 36BC0 800463C0 83100200 */  sra        $v0, $v0, 2
/* 36BC4 800463C4 23384300 */  subu       $a3, $v0, $v1
.L800463C8:
/* 36BC8 800463C8 E400A284 */  lh         $v0, 0xe4($a1)
/* 36BCC 800463CC 00000000 */  nop
/* 36BD0 800463D0 13004710 */  beq        $v0, $a3, .L80046420
/* 36BD4 800463D4 2318E200 */   subu      $v1, $a3, $v0
/* 36BD8 800463D8 E800A294 */  lhu        $v0, 0xe8($a1)
/* 36BDC 800463DC C0180300 */  sll        $v1, $v1, 3
/* 36BE0 800463E0 21104300 */  addu       $v0, $v0, $v1
/* 36BE4 800463E4 E800A2A4 */  sh         $v0, 0xe8($a1)
/* 36BE8 800463E8 00140200 */  sll        $v0, $v0, 0x10
/* 36BEC 800463EC 03140200 */  sra        $v0, $v0, 0x10
/* 36BF0 800463F0 E9034228 */  slti       $v0, $v0, 0x3e9
/* 36BF4 800463F4 02004014 */  bnez       $v0, .L80046400
/* 36BF8 800463F8 E8030224 */   addiu     $v0, $zero, 0x3e8
/* 36BFC 800463FC E800A2A4 */  sh         $v0, 0xe8($a1)
.L80046400:
/* 36C00 80046400 E800A284 */  lh         $v0, 0xe8($a1)
/* 36C04 80046404 00000000 */  nop
/* 36C08 80046408 C0F94228 */  slti       $v0, $v0, -0x640
/* 36C0C 8004640C 04004010 */  beqz       $v0, .L80046420
/* 36C10 80046410 00000000 */   nop
/* 36C14 80046414 0200E010 */  beqz       $a3, .L80046420
/* 36C18 80046418 C0F90224 */   addiu     $v0, $zero, -0x640
/* 36C1C 8004641C E800A2A4 */  sh         $v0, 0xe8($a1)
.L80046420:
/* 36C20 80046420 E800A384 */  lh         $v1, 0xe8($a1)
/* 36C24 80046424 00000000 */  nop
/* 36C28 80046428 02006104 */  bgez       $v1, .L80046434
/* 36C2C 8004642C 00000000 */   nop
/* 36C30 80046430 7F006324 */  addiu      $v1, $v1, 0x7f
.L80046434:
/* 36C34 80046434 E400A294 */  lhu        $v0, 0xe4($a1)
/* 36C38 80046438 C3190300 */  sra        $v1, $v1, 7
/* 36C3C 8004643C 21104300 */  addu       $v0, $v0, $v1
/* 36C40 80046440 E400A2A4 */  sh         $v0, 0xe4($a1)
/* 36C44 80046444 00140200 */  sll        $v0, $v0, 0x10
/* 36C48 80046448 03140200 */  sra        $v0, $v0, 0x10
/* 36C4C 8004644C D4FE4228 */  slti       $v0, $v0, -0x12c
/* 36C50 80046450 02004010 */  beqz       $v0, .L8004645C
/* 36C54 80046454 D4FE0224 */   addiu     $v0, $zero, -0x12c
/* 36C58 80046458 E400A2A4 */  sh         $v0, 0xe4($a1)
.L8004645C:
/* 36C5C 8004645C E800A384 */  lh         $v1, 0xe8($a1)
/* 36C60 80046460 00000000 */  nop
/* 36C64 80046464 08006010 */  beqz       $v1, .L80046488
/* 36C68 80046468 40110300 */   sll       $v0, $v1, 5
/* 36C6C 8004646C 23104300 */  subu       $v0, $v0, $v1
/* 36C70 80046470 40100200 */  sll        $v0, $v0, 1
/* 36C74 80046474 02004104 */  bgez       $v0, .L80046480
/* 36C78 80046478 00000000 */   nop
/* 36C7C 8004647C 3F004224 */  addiu      $v0, $v0, 0x3f
.L80046480:
/* 36C80 80046480 83110200 */  sra        $v0, $v0, 6
/* 36C84 80046484 E800A2A4 */  sh         $v0, 0xe8($a1)
.L80046488:
/* 36C88 80046488 0700E01C */  bgtz       $a3, .L800464A8
/* 36C8C 8004648C E803E228 */   slti      $v0, $a3, 0x3e8
/* 36C90 80046490 E400A284 */  lh         $v0, 0xe4($a1)
/* 36C94 80046494 00000000 */  nop
/* 36C98 80046498 0300401C */  bgtz       $v0, .L800464A8
/* 36C9C 8004649C E803E228 */   slti      $v0, $a3, 0x3e8
/* 36CA0 800464A0 E400A0A4 */  sh         $zero, 0xe4($a1)
/* 36CA4 800464A4 E800A0A4 */  sh         $zero, 0xe8($a1)
.L800464A8:
/* 36CA8 800464A8 0B004014 */  bnez       $v0, .L800464D8
/* 36CAC 800464AC AF02E228 */   slti      $v0, $a3, 0x2af
/* 36CB0 800464B0 E400A284 */  lh         $v0, 0xe4($a1)
/* 36CB4 800464B4 00000000 */  nop
/* 36CB8 800464B8 E8034228 */  slti       $v0, $v0, 0x3e8
/* 36CBC 800464BC 06004014 */  bnez       $v0, .L800464D8
/* 36CC0 800464C0 AF02E228 */   slti      $v0, $a3, 0x2af
/* 36CC4 800464C4 01000824 */  addiu      $t0, $zero, 1
/* 36CC8 800464C8 E8030224 */  addiu      $v0, $zero, 0x3e8
/* 36CCC 800464CC E400A2A4 */  sh         $v0, 0xe4($a1)
/* 36CD0 800464D0 E800A0A4 */  sh         $zero, 0xe8($a1)
/* 36CD4 800464D4 AF02E228 */  slti       $v0, $a3, 0x2af
.L800464D8:
/* 36CD8 800464D8 02004014 */  bnez       $v0, .L800464E4
/* 36CDC 800464DC 00000000 */   nop
/* 36CE0 800464E0 01000924 */  addiu      $t1, $zero, 1
.L800464E4:
/* 36CE4 800464E4 E400A484 */  lh         $a0, 0xe4($a1)
/* 36CE8 800464E8 00000000 */  nop
/* 36CEC 800464EC E9038228 */  slti       $v0, $a0, 0x3e9
/* 36CF0 800464F0 02004014 */  bnez       $v0, .L800464FC
/* 36CF4 800464F4 00000000 */   nop
/* 36CF8 800464F8 E8030424 */  addiu      $a0, $zero, 0x3e8
.L800464FC:
/* 36CFC 800464FC 02008104 */  bgez       $a0, .L80046508
/* 36D00 80046500 6210033C */   lui       $v1, 0x1062
/* 36D04 80046504 21200000 */  addu       $a0, $zero, $zero
.L80046508:
/* 36D08 80046508 D34D6334 */  ori        $v1, $v1, 0x4dd3
/* 36D0C 8004650C 40100400 */  sll        $v0, $a0, 1
/* 36D10 80046510 21104400 */  addu       $v0, $v0, $a0
/* 36D14 80046514 80100200 */  sll        $v0, $v0, 2
/* 36D18 80046518 21104400 */  addu       $v0, $v0, $a0
/* 36D1C 8004651C 00110200 */  sll        $v0, $v0, 4
/* 36D20 80046520 18004300 */  mult       $v0, $v1
/* 36D24 80046524 C44E043C */  lui        $a0, 0x4ec4
/* 36D28 80046528 4FEC8434 */  ori        $a0, $a0, 0xec4f
/* 36D2C 8004652C C3170200 */  sra        $v0, $v0, 0x1f
/* 36D30 80046530 10180000 */  mfhi       $v1
/* 36D34 80046534 83190300 */  sra        $v1, $v1, 6
/* 36D38 80046538 23186200 */  subu       $v1, $v1, $v0
/* 36D3C 8004653C 18006400 */  mult       $v1, $a0
/* 36D40 80046540 C3170300 */  sra        $v0, $v1, 0x1f
/* 36D44 80046544 2400A3AF */  sw         $v1, 0x24($sp)
/* 36D48 80046548 1600D787 */  lh         $s7, 0x16($fp)
/* 36D4C 8004654C 1800D687 */  lh         $s6, 0x18($fp)
/* 36D50 80046550 10200000 */  mfhi       $a0
/* 36D54 80046554 83200400 */  sra        $a0, $a0, 2
/* 36D58 80046558 23208200 */  subu       $a0, $a0, $v0
/* 36D5C 8004655C C0900400 */  sll        $s2, $a0, 3
/* 36D60 80046560 40180400 */  sll        $v1, $a0, 1
/* 36D64 80046564 21186400 */  addu       $v1, $v1, $a0
/* 36D68 80046568 80180300 */  sll        $v1, $v1, 2
/* 36D6C 8004656C 21186400 */  addu       $v1, $v1, $a0
/* 36D70 80046570 0180043C */  lui        $a0, %hi(D_80013B48)
/* 36D74 80046574 2400A28F */  lw         $v0, 0x24($sp)
/* 36D78 80046578 483B8424 */  addiu      $a0, $a0, %lo(D_80013B48)
/* 36D7C 8004657C 23184300 */  subu       $v1, $v0, $v1
/* 36D80 80046580 80180300 */  sll        $v1, $v1, 2
/* 36D84 80046584 21206400 */  addu       $a0, $v1, $a0
/* 36D88 80046588 0180023C */  lui        $v0, %hi(D_80013B7C)
/* 36D8C 8004658C 7C3B4224 */  addiu      $v0, $v0, %lo(D_80013B7C)
/* 36D90 80046590 21186200 */  addu       $v1, $v1, $v0
/* 36D94 80046594 0000938C */  lw         $s3, ($a0)
/* 36D98 80046598 0000758C */  lw         $s5, ($v1)
/* 36D9C 8004659C 07008012 */  beqz       $s4, .L800465BC
/* 36DA0 800465A0 1780023C */   lui       $v0, %hi(D_8016ED50)
/* 36DA4 800465A4 50ED438C */  lw         $v1, %lo(D_8016ED50)($v0)
/* 36DA8 800465A8 00000000 */  nop
/* 36DAC 800465AC 03006010 */  beqz       $v1, .L800465BC
/* 36DB0 800465B0 00000000 */   nop
/* 36DB4 800465B4 00031724 */  addiu      $s7, $zero, 0x300
/* 36DB8 800465B8 F0031624 */  addiu      $s6, $zero, 0x3f0
.L800465BC:
/* 36DBC 800465BC 15000011 */  beqz       $t0, .L80046614
/* 36DC0 800465C0 0F80043C */   lui       $a0, %hi(D_800F0028)
/* 36DC4 800465C4 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 36DC8 800465C8 1A008380 */  lb         $v1, 0x1a($a0)
/* 36DCC 800465CC 03000224 */  addiu      $v0, $zero, 3
/* 36DD0 800465D0 10006210 */  beq        $v1, $v0, .L80046614
/* 36DD4 800465D4 1780043C */   lui       $a0, 0x8017
/* 36DD8 800465D8 01000324 */  addiu      $v1, $zero, 1
/* 36DDC 800465DC 40101400 */  sll        $v0, $s4, 1
/* 36DE0 800465E0 21105400 */  addu       $v0, $v0, $s4
/* 36DE4 800465E4 80100200 */  sll        $v0, $v0, 2
/* 36DE8 800465E8 1780063C */  lui        $a2, %hi(D_8016ED58)
/* 36DEC 800465EC 58EDC624 */  addiu      $a2, $a2, %lo(D_8016ED58)
/* 36DF0 800465F0 50ED83AC */  sw         $v1, -0x12b0($a0)
/* 36DF4 800465F4 21204600 */  addu       $a0, $v0, $a2
/* 36DF8 800465F8 0000838C */  lw         $v1, ($a0)
/* 36DFC 800465FC 0400828C */  lw         $v0, 4($a0)
/* 36E00 80046600 00000000 */  nop
/* 36E04 80046604 23006214 */  bne        $v1, $v0, .L80046694
/* 36E08 80046608 02000524 */   addiu     $a1, $zero, 2
/* 36E0C 8004660C A5190108 */  j          .L80046694
/* 36E10 80046610 000085AC */   sw        $a1, ($a0)
.L80046614:
/* 36E14 80046614 13002011 */  beqz       $t1, .L80046664
/* 36E18 80046618 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 36E1C 8004661C 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 36E20 80046620 1A004380 */  lb         $v1, 0x1a($v0)
/* 36E24 80046624 02000224 */  addiu      $v0, $zero, 2
/* 36E28 80046628 0F006214 */  bne        $v1, $v0, .L80046668
/* 36E2C 8004662C 40101400 */   sll       $v0, $s4, 1
/* 36E30 80046630 01000624 */  addiu      $a2, $zero, 1
/* 36E34 80046634 21105400 */  addu       $v0, $v0, $s4
/* 36E38 80046638 80100200 */  sll        $v0, $v0, 2
/* 36E3C 8004663C 1780033C */  lui        $v1, %hi(D_8016ED58)
/* 36E40 80046640 58ED6324 */  addiu      $v1, $v1, %lo(D_8016ED58)
/* 36E44 80046644 21284300 */  addu       $a1, $v0, $v1
/* 36E48 80046648 0000A48C */  lw         $a0, ($a1)
/* 36E4C 8004664C 0400A38C */  lw         $v1, 4($a1)
/* 36E50 80046650 1780023C */  lui        $v0, %hi(D_8016ED50)
/* 36E54 80046654 0F008314 */  bne        $a0, $v1, .L80046694
/* 36E58 80046658 50ED46AC */   sw        $a2, %lo(D_8016ED50)($v0)
/* 36E5C 8004665C A5190108 */  j          .L80046694
/* 36E60 80046660 0000A6AC */   sw        $a2, ($a1)
.L80046664:
/* 36E64 80046664 40101400 */  sll        $v0, $s4, 1
.L80046668:
/* 36E68 80046668 21105400 */  addu       $v0, $v0, $s4
/* 36E6C 8004666C 80100200 */  sll        $v0, $v0, 2
/* 36E70 80046670 1780063C */  lui        $a2, %hi(D_8016ED58)
/* 36E74 80046674 58EDC624 */  addiu      $a2, $a2, %lo(D_8016ED58)
/* 36E78 80046678 21204600 */  addu       $a0, $v0, $a2
/* 36E7C 8004667C 0000838C */  lw         $v1, ($a0)
/* 36E80 80046680 0400828C */  lw         $v0, 4($a0)
/* 36E84 80046684 00000000 */  nop
/* 36E88 80046688 02006214 */  bne        $v1, $v0, .L80046694
/* 36E8C 8004668C 00000000 */   nop
/* 36E90 80046690 000080AC */  sw         $zero, ($a0)
.L80046694:
/* 36E94 80046694 2C00401A */  blez       $s2, .L80046748
/* 36E98 80046698 80000324 */   addiu     $v1, $zero, 0x80
/* 36E9C 8004669C 23107200 */  subu       $v0, $v1, $s2
/* 36EA0 800466A0 18005400 */  mult       $v0, $s4
/* 36EA4 800466A4 08000224 */  addiu      $v0, $zero, 8
/* 36EA8 800466A8 5800A48F */  lw         $a0, 0x58($sp)
/* 36EAC 800466AC FFFF0324 */  addiu      $v1, $zero, -1
/* 36EB0 800466B0 1000B2AF */  sw         $s2, 0x10($sp)
/* 36EB4 800466B4 1400A2AF */  sw         $v0, 0x14($sp)
/* 36EB8 800466B8 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 36EBC 800466BC 0600C787 */  lh         $a3, 6($fp)
/* 36EC0 800466C0 0C00C287 */  lh         $v0, 0xc($fp)
/* 36EC4 800466C4 21282002 */  addu       $a1, $s1, $zero
/* 36EC8 800466C8 1800A2AF */  sw         $v0, 0x18($sp)
/* 36ECC 800466CC 0400C687 */  lh         $a2, 4($fp)
/* 36ED0 800466D0 C0111400 */  sll        $v0, $s4, 7
/* 36ED4 800466D4 2130C200 */  addu       $a2, $a2, $v0
/* 36ED8 800466D8 12800000 */  mflo       $s0
/* 36EDC 800466DC 25B2010C */  jal        FUN_8006c894
/* 36EE0 800466E0 2130D000 */   addu      $a2, $a2, $s0
/* 36EE4 800466E4 21282002 */  addu       $a1, $s1, $zero
/* 36EE8 800466E8 2130E002 */  addu       $a2, $s7, $zero
/* 36EEC 800466EC 5800A48F */  lw         $a0, 0x58($sp)
/* 36EF0 800466F0 FBB2010C */  jal        FUN_8006cbec
/* 36EF4 800466F4 2138C002 */   addu      $a3, $s6, $zero
/* 36EF8 800466F8 21282002 */  addu       $a1, $s1, $zero
/* 36EFC 800466FC 80000624 */  addiu      $a2, $zero, 0x80
/* 36F00 80046700 5800A48F */  lw         $a0, 0x58($sp)
/* 36F04 80046704 80000724 */  addiu      $a3, $zero, 0x80
/* 36F08 80046708 79B2010C */  jal        FUN_8006c9e4
/* 36F0C 8004670C 1000A7AF */   sw        $a3, 0x10($sp)
/* 36F10 80046710 02008012 */  beqz       $s4, .L8004671C
/* 36F14 80046714 68FF0626 */   addiu     $a2, $s0, -0x98
/* 36F18 80046718 18000626 */  addiu      $a2, $s0, 0x18
.L8004671C:
/* 36F1C 8004671C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 36F20 80046720 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 36F24 80046724 18006280 */  lb         $v0, 0x18($v1)
/* 36F28 80046728 00000000 */  nop
/* 36F2C 8004672C 02004010 */  beqz       $v0, .L80046738
/* 36F30 80046730 8DFF0724 */   addiu     $a3, $zero, -0x73
/* 36F34 80046734 5D000724 */  addiu      $a3, $zero, 0x5d
.L80046738:
/* 36F38 80046738 5800A48F */  lw         $a0, 0x58($sp)
/* 36F3C 8004673C 9BB2010C */  jal        FUN_8006ca6c
/* 36F40 80046740 21282002 */   addu      $a1, $s1, $zero
/* 36F44 80046744 01003126 */  addiu      $s1, $s1, 1
.L80046748:
/* 36F48 80046748 2F00601A */  blez       $s3, .L80046808
/* 36F4C 8004674C 00000000 */   nop
/* 36F50 80046750 04008012 */  beqz       $s4, .L80046764
/* 36F54 80046754 80000424 */   addiu     $a0, $zero, 0x80
/* 36F58 80046758 23109300 */  subu       $v0, $a0, $s3
/* 36F5C 8004675C DA190108 */  j          .L80046768
/* 36F60 80046760 23805200 */   subu      $s0, $v0, $s2
.L80046764:
/* 36F64 80046764 21804002 */  addu       $s0, $s2, $zero
.L80046768:
/* 36F68 80046768 21282002 */  addu       $a1, $s1, $zero
/* 36F6C 8004676C 08000224 */  addiu      $v0, $zero, 8
/* 36F70 80046770 5800A48F */  lw         $a0, 0x58($sp)
/* 36F74 80046774 FFFF0324 */  addiu      $v1, $zero, -1
/* 36F78 80046778 1400A2AF */  sw         $v0, 0x14($sp)
/* 36F7C 8004677C C0111400 */  sll        $v0, $s4, 7
/* 36F80 80046780 1000B3AF */  sw         $s3, 0x10($sp)
/* 36F84 80046784 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 36F88 80046788 0400C687 */  lh         $a2, 4($fp)
/* 36F8C 8004678C 0600C787 */  lh         $a3, 6($fp)
/* 36F90 80046790 2130C200 */  addu       $a2, $a2, $v0
/* 36F94 80046794 0C00C287 */  lh         $v0, 0xc($fp)
/* 36F98 80046798 2130D000 */  addu       $a2, $a2, $s0
/* 36F9C 8004679C 25B2010C */  jal        FUN_8006c894
/* 36FA0 800467A0 1800A2AF */   sw        $v0, 0x18($sp)
/* 36FA4 800467A4 21282002 */  addu       $a1, $s1, $zero
/* 36FA8 800467A8 2130E002 */  addu       $a2, $s7, $zero
/* 36FAC 800467AC 5800A48F */  lw         $a0, 0x58($sp)
/* 36FB0 800467B0 FBB2010C */  jal        FUN_8006cbec
/* 36FB4 800467B4 2138C002 */   addu      $a3, $s6, $zero
/* 36FB8 800467B8 21282002 */  addu       $a1, $s1, $zero
/* 36FBC 800467BC 80000624 */  addiu      $a2, $zero, 0x80
/* 36FC0 800467C0 5800A48F */  lw         $a0, 0x58($sp)
/* 36FC4 800467C4 80000724 */  addiu      $a3, $zero, 0x80
/* 36FC8 800467C8 79B2010C */  jal        FUN_8006c9e4
/* 36FCC 800467CC 1000A7AF */   sw        $a3, 0x10($sp)
/* 36FD0 800467D0 02008012 */  beqz       $s4, .L800467DC
/* 36FD4 800467D4 68FF0626 */   addiu     $a2, $s0, -0x98
/* 36FD8 800467D8 18000626 */  addiu      $a2, $s0, 0x18
.L800467DC:
/* 36FDC 800467DC 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 36FE0 800467E0 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 36FE4 800467E4 18006280 */  lb         $v0, 0x18($v1)
/* 36FE8 800467E8 00000000 */  nop
/* 36FEC 800467EC 02004010 */  beqz       $v0, .L800467F8
/* 36FF0 800467F0 8DFF0724 */   addiu     $a3, $zero, -0x73
/* 36FF4 800467F4 5D000724 */  addiu      $a3, $zero, 0x5d
.L800467F8:
/* 36FF8 800467F8 5800A48F */  lw         $a0, 0x58($sp)
/* 36FFC 800467FC 9BB2010C */  jal        FUN_8006ca6c
/* 37000 80046800 21282002 */   addu      $a1, $s1, $zero
/* 37004 80046804 01003126 */  addiu      $s1, $s1, 1
.L80046808:
/* 37008 80046808 3200A01A */  blez       $s5, .L800468D4
/* 3700C 8004680C 0F80063C */   lui       $a2, 0x800f
/* 37010 80046810 03008012 */  beqz       $s4, .L80046820
/* 37014 80046814 78000224 */   addiu     $v0, $zero, 0x78
/* 37018 80046818 091A0108 */  j          .L80046824
/* 3701C 8004681C 23805200 */   subu      $s0, $v0, $s2
.L80046820:
/* 37020 80046820 04005026 */  addiu      $s0, $s2, 4
.L80046824:
/* 37024 80046824 21282002 */  addu       $a1, $s1, $zero
/* 37028 80046828 04000224 */  addiu      $v0, $zero, 4
/* 3702C 8004682C 1000A2AF */  sw         $v0, 0x10($sp)
/* 37030 80046830 FFFF0224 */  addiu      $v0, $zero, -1
/* 37034 80046834 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 37038 80046838 C0111400 */  sll        $v0, $s4, 7
/* 3703C 8004683C 5800A48F */  lw         $a0, 0x58($sp)
/* 37040 80046840 F8FFA326 */  addiu      $v1, $s5, -8
/* 37044 80046844 1400B5AF */  sw         $s5, 0x14($sp)
/* 37048 80046848 0400C687 */  lh         $a2, 4($fp)
/* 3704C 8004684C 0600C787 */  lh         $a3, 6($fp)
/* 37050 80046850 2130C200 */  addu       $a2, $a2, $v0
/* 37054 80046854 2130D000 */  addu       $a2, $a2, $s0
/* 37058 80046858 0C00C287 */  lh         $v0, 0xc($fp)
/* 3705C 8004685C 2338E300 */  subu       $a3, $a3, $v1
/* 37060 80046860 25B2010C */  jal        FUN_8006c894
/* 37064 80046864 1800A2AF */   sw        $v0, 0x18($sp)
/* 37068 80046868 21282002 */  addu       $a1, $s1, $zero
/* 3706C 8004686C 2130E002 */  addu       $a2, $s7, $zero
/* 37070 80046870 5800A48F */  lw         $a0, 0x58($sp)
/* 37074 80046874 FBB2010C */  jal        FUN_8006cbec
/* 37078 80046878 2138C002 */   addu      $a3, $s6, $zero
/* 3707C 8004687C 21282002 */  addu       $a1, $s1, $zero
/* 37080 80046880 80000624 */  addiu      $a2, $zero, 0x80
/* 37084 80046884 5800A48F */  lw         $a0, 0x58($sp)
/* 37088 80046888 80000724 */  addiu      $a3, $zero, 0x80
/* 3708C 8004688C 79B2010C */  jal        FUN_8006c9e4
/* 37090 80046890 1000A7AF */   sw        $a3, 0x10($sp)
/* 37094 80046894 02008012 */  beqz       $s4, .L800468A0
/* 37098 80046898 68FF0626 */   addiu     $a2, $s0, -0x98
/* 3709C 8004689C 18000626 */  addiu      $a2, $s0, 0x18
.L800468A0:
/* 370A0 800468A0 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 370A4 800468A4 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* 370A8 800468A8 18008280 */  lb         $v0, 0x18($a0)
/* 370AC 800468AC 00000000 */  nop
/* 370B0 800468B0 02004014 */  bnez       $v0, .L800468BC
/* 370B4 800468B4 65000224 */   addiu     $v0, $zero, 0x65
/* 370B8 800468B8 95FF0224 */  addiu      $v0, $zero, -0x6b
.L800468BC:
/* 370BC 800468BC 23385500 */  subu       $a3, $v0, $s5
/* 370C0 800468C0 5800A48F */  lw         $a0, 0x58($sp)
/* 370C4 800468C4 9BB2010C */  jal        FUN_8006ca6c
/* 370C8 800468C8 21282002 */   addu      $a1, $s1, $zero
/* 370CC 800468CC 01003126 */  addiu      $s1, $s1, 1
/* 370D0 800468D0 0F80063C */  lui        $a2, %hi(D_800F0028)
.L800468D4:
/* 370D4 800468D4 2800C624 */  addiu      $a2, $a2, %lo(D_800F0028)
/* 370D8 800468D8 1A00C380 */  lb         $v1, 0x1a($a2)
/* 370DC 800468DC 02000224 */  addiu      $v0, $zero, 2
/* 370E0 800468E0 13006210 */  beq        $v1, $v0, .L80046930
/* 370E4 800468E4 21800000 */   addu      $s0, $zero, $zero
/* 370E8 800468E8 6666033C */  lui        $v1, 0x6666
/* 370EC 800468EC 67666334 */  ori        $v1, $v1, 0x6667
/* 370F0 800468F0 2400A48F */  lw         $a0, 0x24($sp)
/* 370F4 800468F4 50000224 */  addiu      $v0, $zero, 0x50
/* 370F8 800468F8 23104400 */  subu       $v0, $v0, $a0
/* 370FC 800468FC C0110200 */  sll        $v0, $v0, 7
/* 37100 80046900 18004300 */  mult       $v0, $v1
/* 37104 80046904 C3170200 */  sra        $v0, $v0, 0x1f
/* 37108 80046908 10180000 */  mfhi       $v1
/* 3710C 8004690C 43190300 */  sra        $v1, $v1, 5
/* 37110 80046910 23806200 */  subu       $s0, $v1, $v0
/* 37114 80046914 03000106 */  bgez       $s0, .L80046924
/* 37118 80046918 8100022A */   slti      $v0, $s0, 0x81
/* 3711C 8004691C 4C1A0108 */  j          .L80046930
/* 37120 80046920 21800000 */   addu      $s0, $zero, $zero
.L80046924:
/* 37124 80046924 03004014 */  bnez       $v0, .L80046934
/* 37128 80046928 21204002 */   addu      $a0, $s2, $zero
/* 3712C 8004692C 80001024 */  addiu      $s0, $zero, 0x80
.L80046930:
/* 37130 80046930 21204002 */  addu       $a0, $s2, $zero
.L80046934:
/* 37134 80046934 68FF1724 */  addiu      $s7, $zero, -0x98
/* 37138 80046938 1380033C */  lui        $v1, %hi(D_801280E0)
/* 3713C 8004693C E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 37140 80046940 2000A68F */  lw         $a2, 0x20($sp)
/* 37144 80046944 0B004390 */  lbu        $v1, 0xb($v0)
/* 37148 80046948 0004C524 */  addiu      $a1, $a2, 0x400
/* 3714C 8004694C C0100300 */  sll        $v0, $v1, 3
/* 37150 80046950 23104300 */  subu       $v0, $v0, $v1
/* 37154 80046954 80100200 */  sll        $v0, $v0, 2
/* 37158 80046958 1380063C */  lui        $a2, %hi(D_801282E0)
/* 3715C 8004695C E082C324 */  addiu      $v1, $a2, %lo(D_801282E0)
/* 37160 80046960 02008012 */  beqz       $s4, .L8004696C
/* 37164 80046964 21904300 */   addu      $s2, $v0, $v1
/* 37168 80046968 18001724 */  addiu      $s7, $zero, 0x18
.L8004696C:
/* 3716C 8004696C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 37170 80046970 28006324 */  addiu      $v1, $v1, %lo(D_800F0028)
/* 37174 80046974 18006280 */  lb         $v0, 0x18($v1)
/* 37178 80046978 8DFF0624 */  addiu      $a2, $zero, -0x73
/* 3717C 8004697C 03004010 */  beqz       $v0, .L8004698C
/* 37180 80046980 2800A6AF */   sw        $a2, 0x28($sp)
/* 37184 80046984 5D000224 */  addiu      $v0, $zero, 0x5d
/* 37188 80046988 2800A2AF */  sw         $v0, 0x28($sp)
.L8004698C:
/* 3718C 8004698C C0181400 */  sll        $v1, $s4, 3
/* 37190 80046990 02008104 */  bgez       $a0, .L8004699C
/* 37194 80046994 2C00A3AF */   sw        $v1, 0x2c($sp)
/* 37198 80046998 21200000 */  addu       $a0, $zero, $zero
.L8004699C:
/* 3719C 8004699C 81008228 */  slti       $v0, $a0, 0x81
/* 371A0 800469A0 02004014 */  bnez       $v0, .L800469AC
/* 371A4 800469A4 80000624 */   addiu     $a2, $zero, 0x80
/* 371A8 800469A8 80000424 */  addiu      $a0, $zero, 0x80
.L800469AC:
/* 371AC 800469AC 02008016 */  bnez       $s4, .L800469B8
/* 371B0 800469B0 2398C400 */   subu      $s3, $a2, $a0
/* 371B4 800469B4 21B8E402 */  addu       $s7, $s7, $a0
.L800469B8:
/* 371B8 800469B8 F4F1000C */  jal        rsin
/* 371BC 800469BC 80200500 */   sll       $a0, $a1, 2
/* 371C0 800469C0 43181000 */  sra        $v1, $s0, 1
/* 371C4 800469C4 18004300 */  mult       $v0, $v1
/* 371C8 800469C8 21800000 */  addu       $s0, $zero, $zero
/* 371CC 800469CC 01009526 */  addiu      $s5, $s4, 1
/* 371D0 800469D0 12100000 */  mflo       $v0
/* 371D4 800469D4 03130200 */  sra        $v0, $v0, 0xc
/* 371D8 800469D8 2800601A */  blez       $s3, .L80046A7C
/* 371DC 800469DC 21B06200 */   addu      $s6, $v1, $v0
.L800469E0:
/* 371E0 800469E0 08001426 */  addiu      $s4, $s0, 8
/* 371E4 800469E4 2A107402 */  slt        $v0, $s3, $s4
/* 371E8 800469E8 02004010 */  beqz       $v0, .L800469F4
/* 371EC 800469EC 08000324 */   addiu     $v1, $zero, 8
/* 371F0 800469F0 23187002 */  subu       $v1, $s3, $s0
.L800469F4:
/* 371F4 800469F4 5800A48F */  lw         $a0, 0x58($sp)
/* 371F8 800469F8 08000224 */  addiu      $v0, $zero, 8
/* 371FC 800469FC 1000A3AF */  sw         $v1, 0x10($sp)
/* 37200 80046A00 1400A2AF */  sw         $v0, 0x14($sp)
/* 37204 80046A04 04004686 */  lh         $a2, 4($s2)
/* 37208 80046A08 FFFF0224 */  addiu      $v0, $zero, -1
/* 3720C 80046A0C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 37210 80046A10 2C00A28F */  lw         $v0, 0x2c($sp)
/* 37214 80046A14 06004786 */  lh         $a3, 6($s2)
/* 37218 80046A18 2130C200 */  addu       $a2, $a2, $v0
/* 3721C 80046A1C 0C004286 */  lh         $v0, 0xc($s2)
/* 37220 80046A20 21282002 */  addu       $a1, $s1, $zero
/* 37224 80046A24 25B2010C */  jal        FUN_8006c894
/* 37228 80046A28 1800A2AF */   sw        $v0, 0x18($sp)
/* 3722C 80046A2C 21282002 */  addu       $a1, $s1, $zero
/* 37230 80046A30 2130C002 */  addu       $a2, $s6, $zero
/* 37234 80046A34 5800A48F */  lw         $a0, 0x58($sp)
/* 37238 80046A38 21380000 */  addu       $a3, $zero, $zero
/* 3723C 80046A3C 79B2010C */  jal        FUN_8006c9e4
/* 37240 80046A40 1000A0AF */   sw        $zero, 0x10($sp)
/* 37244 80046A44 5800A48F */  lw         $a0, 0x58($sp)
/* 37248 80046A48 16004686 */  lh         $a2, 0x16($s2)
/* 3724C 80046A4C 18004786 */  lh         $a3, 0x18($s2)
/* 37250 80046A50 FBB2010C */  jal        FUN_8006cbec
/* 37254 80046A54 21282002 */   addu      $a1, $s1, $zero
/* 37258 80046A58 21282002 */  addu       $a1, $s1, $zero
/* 3725C 80046A5C 5800A48F */  lw         $a0, 0x58($sp)
/* 37260 80046A60 2800A78F */  lw         $a3, 0x28($sp)
/* 37264 80046A64 9BB2010C */  jal        FUN_8006ca6c
/* 37268 80046A68 2130F002 */   addu      $a2, $s7, $s0
/* 3726C 80046A6C 21808002 */  addu       $s0, $s4, $zero
/* 37270 80046A70 2A101302 */  slt        $v0, $s0, $s3
/* 37274 80046A74 DAFF4014 */  bnez       $v0, .L800469E0
/* 37278 80046A78 01003126 */   addiu     $s1, $s1, 1
.L80046A7C:
/* 3727C 80046A7C 21A0A002 */  addu       $s4, $s5, $zero
/* 37280 80046A80 0200A22A */  slti       $v0, $s5, 2
/* 37284 80046A84 0EFE4014 */  bnez       $v0, .L800462C0
/* 37288 80046A88 21400000 */   addu      $t0, $zero, $zero
/* 3728C 80046A8C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 37290 80046A90 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 37294 80046A94 1A004580 */  lb         $a1, 0x1a($v0)
/* 37298 80046A98 2000A48F */  lw         $a0, 0x20($sp)
/* 3729C 80046A9C 7617010C */  jal        FUN_80045dd8
/* 372A0 80046AA0 00000000 */   nop
/* 372A4 80046AA4 21102002 */  addu       $v0, $s1, $zero
/* 372A8 80046AA8 5400BF8F */  lw         $ra, 0x54($sp)
/* 372AC 80046AAC 5000BE8F */  lw         $fp, 0x50($sp)
/* 372B0 80046AB0 4C00B78F */  lw         $s7, 0x4c($sp)
/* 372B4 80046AB4 4800B68F */  lw         $s6, 0x48($sp)
/* 372B8 80046AB8 4400B58F */  lw         $s5, 0x44($sp)
/* 372BC 80046ABC 4000B48F */  lw         $s4, 0x40($sp)
/* 372C0 80046AC0 3C00B38F */  lw         $s3, 0x3c($sp)
/* 372C4 80046AC4 3800B28F */  lw         $s2, 0x38($sp)
/* 372C8 80046AC8 3400B18F */  lw         $s1, 0x34($sp)
/* 372CC 80046ACC 3000B08F */  lw         $s0, 0x30($sp)
/* 372D0 80046AD0 0800E003 */  jr         $ra
/* 372D4 80046AD4 5800BD27 */   addiu     $sp, $sp, 0x58
