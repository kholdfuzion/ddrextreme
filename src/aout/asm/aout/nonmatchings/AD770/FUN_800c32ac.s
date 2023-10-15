.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c32ac
/* B3AAC 800C32AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B3AB0 800C32B0 EB51093C */  lui        $t1, 0x51eb
/* B3AB4 800C32B4 1F852935 */  ori        $t1, $t1, 0x851f
/* B3AB8 800C32B8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B3ABC 800C32BC 1800B0AF */  sw         $s0, 0x18($sp)
/* B3AC0 800C32C0 0100A390 */  lbu        $v1, 1($a1)
/* B3AC4 800C32C4 0200A290 */  lbu        $v0, 2($a1)
/* B3AC8 800C32C8 001A0300 */  sll        $v1, $v1, 8
/* B3ACC 800C32CC 25186200 */  or         $v1, $v1, $v0
/* B3AD0 800C32D0 18006900 */  mult       $v1, $t1
/* B3AD4 800C32D4 21808000 */  addu       $s0, $a0, $zero
/* B3AD8 800C32D8 6666083C */  lui        $t0, 0x6666
/* B3ADC 800C32DC 67660835 */  ori        $t0, $t0, 0x6667
/* B3AE0 800C32E0 C3170300 */  sra        $v0, $v1, 0x1f
/* B3AE4 800C32E4 10500000 */  mfhi       $t2
/* B3AE8 800C32E8 43210A00 */  sra        $a0, $t2, 5
/* B3AEC 800C32EC 23608200 */  subu       $t4, $a0, $v0
/* B3AF0 800C32F0 40100C00 */  sll        $v0, $t4, 1
/* B3AF4 800C32F4 21104C00 */  addu       $v0, $v0, $t4
/* B3AF8 800C32F8 C0100200 */  sll        $v0, $v0, 3
/* B3AFC 800C32FC 21104C00 */  addu       $v0, $v0, $t4
/* B3B00 800C3300 80100200 */  sll        $v0, $v0, 2
/* B3B04 800C3304 23606200 */  subu       $t4, $v1, $v0
/* B3B08 800C3308 18008801 */  mult       $t4, $t0
/* B3B0C 800C330C DB68063C */  lui        $a2, 0x68db
/* B3B10 800C3310 AD8BC634 */  ori        $a2, $a2, 0x8bad
/* B3B14 800C3314 0300A490 */  lbu        $a0, 3($a1)
/* B3B18 800C3318 0400A290 */  lbu        $v0, 4($a1)
/* B3B1C 800C331C 0500A390 */  lbu        $v1, 5($a1)
/* B3B20 800C3320 00260400 */  sll        $a0, $a0, 0x18
/* B3B24 800C3324 00140200 */  sll        $v0, $v0, 0x10
/* B3B28 800C3328 25208200 */  or         $a0, $a0, $v0
/* B3B2C 800C332C 001A0300 */  sll        $v1, $v1, 8
/* B3B30 800C3330 0600A290 */  lbu        $v0, 6($a1)
/* B3B34 800C3334 10380000 */  mfhi       $a3
/* B3B38 800C3338 25208300 */  or         $a0, $a0, $v1
/* B3B3C 800C333C 25208200 */  or         $a0, $a0, $v0
/* B3B40 800C3340 18008600 */  mult       $a0, $a2
/* B3B44 800C3344 C3170C00 */  sra        $v0, $t4, 0x1f
/* B3B48 800C3348 10180000 */  mfhi       $v1
/* B3B4C 800C334C 83280700 */  sra        $a1, $a3, 2
/* B3B50 800C3350 2328A200 */  subu       $a1, $a1, $v0
/* B3B54 800C3354 1800A800 */  mult       $a1, $t0
/* B3B58 800C3358 6210063C */  lui        $a2, 0x1062
/* B3B5C 800C335C D34DC634 */  ori        $a2, $a2, 0x4dd3
/* B3B60 800C3360 C3170400 */  sra        $v0, $a0, 0x1f
/* B3B64 800C3364 031B0300 */  sra        $v1, $v1, 0xc
/* B3B68 800C3368 23586200 */  subu       $t3, $v1, $v0
/* B3B6C 800C336C 80100B00 */  sll        $v0, $t3, 2
/* B3B70 800C3370 21104B00 */  addu       $v0, $v0, $t3
/* B3B74 800C3374 C0100200 */  sll        $v0, $v0, 3
/* B3B78 800C3378 23104B00 */  subu       $v0, $v0, $t3
/* B3B7C 800C337C 00110200 */  sll        $v0, $v0, 4
/* B3B80 800C3380 21104B00 */  addu       $v0, $v0, $t3
/* B3B84 800C3384 10380000 */  mfhi       $a3
/* B3B88 800C3388 00110200 */  sll        $v0, $v0, 4
/* B3B8C 800C338C 23588200 */  subu       $t3, $a0, $v0
/* B3B90 800C3390 18006601 */  mult       $t3, $a2
/* B3B94 800C3394 8B2E0A3C */  lui        $t2, 0x2e8b
/* B3B98 800C3398 E9A24A35 */  ori        $t2, $t2, 0xa2e9
/* B3B9C 800C339C 83180700 */  sra        $v1, $a3, 2
/* B3BA0 800C33A0 C33F0B00 */  sra        $a3, $t3, 0x1f
/* B3BA4 800C33A4 10700000 */  mfhi       $t6
/* B3BA8 800C33A8 83310E00 */  sra        $a2, $t6, 6
/* B3BAC 800C33AC 2330C700 */  subu       $a2, $a2, $a3
/* B3BB0 800C33B0 1800C800 */  mult       $a2, $t0
/* B3BB4 800C33B4 C3170500 */  sra        $v0, $a1, 0x1f
/* B3BB8 800C33B8 23186200 */  subu       $v1, $v1, $v0
/* B3BBC 800C33BC 80100300 */  sll        $v0, $v1, 2
/* B3BC0 800C33C0 21104300 */  addu       $v0, $v0, $v1
/* B3BC4 800C33C4 40100200 */  sll        $v0, $v0, 1
/* B3BC8 800C33C8 2310A200 */  subu       $v0, $a1, $v0
/* B3BCC 800C33CC C0200200 */  sll        $a0, $v0, 3
/* B3BD0 800C33D0 23208200 */  subu       $a0, $a0, $v0
/* B3BD4 800C33D4 80100500 */  sll        $v0, $a1, 2
/* B3BD8 800C33D8 21104500 */  addu       $v0, $v0, $a1
/* B3BDC 800C33DC 40100200 */  sll        $v0, $v0, 1
/* B3BE0 800C33E0 10700000 */  mfhi       $t6
/* B3BE4 800C33E4 23108201 */  subu       $v0, $t4, $v0
/* B3BE8 800C33E8 40180200 */  sll        $v1, $v0, 1
/* B3BEC 800C33EC 18006901 */  mult       $t3, $t1
/* B3BF0 800C33F0 21186200 */  addu       $v1, $v1, $v0
/* B3BF4 800C33F4 40180300 */  sll        $v1, $v1, 1
/* B3BF8 800C33F8 21208300 */  addu       $a0, $a0, $v1
/* B3BFC 800C33FC C3170600 */  sra        $v0, $a2, 0x1f
/* B3C00 800C3400 83180E00 */  sra        $v1, $t6, 2
/* B3C04 800C3404 23186200 */  subu       $v1, $v1, $v0
/* B3C08 800C3408 80100300 */  sll        $v0, $v1, 2
/* B3C0C 800C340C 21104300 */  addu       $v0, $v0, $v1
/* B3C10 800C3410 40100200 */  sll        $v0, $v0, 1
/* B3C14 800C3414 2310C200 */  subu       $v0, $a2, $v0
/* B3C18 800C3418 80180200 */  sll        $v1, $v0, 2
/* B3C1C 800C341C 10280000 */  mfhi       $a1
/* B3C20 800C3420 21186200 */  addu       $v1, $v1, $v0
/* B3C24 800C3424 21208300 */  addu       $a0, $a0, $v1
/* B3C28 800C3428 18006801 */  mult       $t3, $t0
/* B3C2C 800C342C 80100600 */  sll        $v0, $a2, 2
/* B3C30 800C3430 21104600 */  addu       $v0, $v0, $a2
/* B3C34 800C3434 40100200 */  sll        $v0, $v0, 1
/* B3C38 800C3438 43190500 */  sra        $v1, $a1, 5
/* B3C3C 800C343C 23186700 */  subu       $v1, $v1, $a3
/* B3C40 800C3440 23106200 */  subu       $v0, $v1, $v0
/* B3C44 800C3444 80100200 */  sll        $v0, $v0, 2
/* B3C48 800C3448 21208200 */  addu       $a0, $a0, $v0
/* B3C4C 800C344C 80100300 */  sll        $v0, $v1, 2
/* B3C50 800C3450 21104300 */  addu       $v0, $v0, $v1
/* B3C54 800C3454 40100200 */  sll        $v0, $v0, 1
/* B3C58 800C3458 10400000 */  mfhi       $t0
/* B3C5C 800C345C 83280800 */  sra        $a1, $t0, 2
/* B3C60 800C3460 2328A700 */  subu       $a1, $a1, $a3
/* B3C64 800C3464 2310A200 */  subu       $v0, $a1, $v0
/* B3C68 800C3468 40180200 */  sll        $v1, $v0, 1
/* B3C6C 800C346C 21186200 */  addu       $v1, $v1, $v0
/* B3C70 800C3470 21208300 */  addu       $a0, $a0, $v1
/* B3C74 800C3474 80100500 */  sll        $v0, $a1, 2
/* B3C78 800C3478 21104500 */  addu       $v0, $v0, $a1
/* B3C7C 800C347C 40100200 */  sll        $v0, $v0, 1
/* B3C80 800C3480 23106201 */  subu       $v0, $t3, $v0
/* B3C84 800C3484 40100200 */  sll        $v0, $v0, 1
/* B3C88 800C3488 21208200 */  addu       $a0, $a0, $v0
/* B3C8C 800C348C 18008A00 */  mult       $a0, $t2
/* B3C90 800C3490 C3170400 */  sra        $v0, $a0, 0x1f
/* B3C94 800C3494 0180053C */  lui        $a1, %hi(D_80017808)
/* B3C98 800C3498 0878A524 */  addiu      $a1, $a1, %lo(D_80017808)
/* B3C9C 800C349C 21388001 */  addu       $a3, $t4, $zero
/* B3CA0 800C34A0 10180000 */  mfhi       $v1
/* B3CA4 800C34A4 43180300 */  sra        $v1, $v1, 1
/* B3CA8 800C34A8 23186200 */  subu       $v1, $v1, $v0
/* B3CAC 800C34AC 40100300 */  sll        $v0, $v1, 1
/* B3CB0 800C34B0 21104300 */  addu       $v0, $v0, $v1
/* B3CB4 800C34B4 80100200 */  sll        $v0, $v0, 2
/* B3CB8 800C34B8 23104300 */  subu       $v0, $v0, $v1
/* B3CBC 800C34BC 23188200 */  subu       $v1, $a0, $v0
/* B3CC0 800C34C0 0F80023C */  lui        $v0, %hi(D_800EE600)
/* B3CC4 800C34C4 00E64224 */  addiu      $v0, $v0, %lo(D_800EE600)
/* B3CC8 800C34C8 21106200 */  addu       $v0, $v1, $v0
/* B3CCC 800C34CC 00004690 */  lbu        $a2, ($v0)
/* B3CD0 800C34D0 21200002 */  addu       $a0, $s0, $zero
/* B3CD4 800C34D4 8E81000C */  jal        sprintf
/* B3CD8 800C34D8 1000ABAF */   sw        $t3, 0x10($sp)
/* B3CDC 800C34DC 21100002 */  addu       $v0, $s0, $zero
/* B3CE0 800C34E0 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B3CE4 800C34E4 1800B08F */  lw         $s0, 0x18($sp)
/* B3CE8 800C34E8 0800E003 */  jr         $ra
/* B3CEC 800C34EC 2000BD27 */   addiu     $sp, $sp, 0x20
