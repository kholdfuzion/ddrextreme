.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80053D30
/* 44530 80053D30 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 44534 80053D34 0180043C */  lui        $a0, %hi(D_80013E50)
/* 44538 80053D38 503E8424 */  addiu      $a0, $a0, %lo(D_80013E50)
/* 4453C 80053D3C 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 44540 80053D40 7878000C */  jal        getgameloopmode_8001e1e0
/* 44544 80053D44 1800B0AF */   sw        $s0, 0x18($sp)
/* 44548 80053D48 01000424 */  addiu      $a0, $zero, 1
/* 4454C 80053D4C 1380033C */  lui        $v1, %hi(D_801280E0)
/* 44550 80053D50 E0806324 */  addiu      $v1, $v1, %lo(D_801280E0)
/* 44554 80053D54 21104300 */  addu       $v0, $v0, $v1
/* 44558 80053D58 01000524 */  addiu      $a1, $zero, 1
/* 4455C 80053D5C 00004690 */  lbu        $a2, ($v0)
/* 44560 80053D60 1380023C */  lui        $v0, %hi(D_801282E0)
/* 44564 80053D64 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 44568 80053D68 C0800600 */  sll        $s0, $a2, 3
/* 4456C 80053D6C 23800602 */  subu       $s0, $s0, $a2
/* 44570 80053D70 80801000 */  sll        $s0, $s0, 2
/* 44574 80053D74 FA56010C */  jal        FUN_80055be8
/* 44578 80053D78 21800202 */   addu      $s0, $s0, $v0
/* 4457C 80053D7C 01000424 */  addiu      $a0, $zero, 1
/* 44580 80053D80 376C010C */  jal        FUN_8005b0dc
/* 44584 80053D84 FF000524 */   addiu     $a1, $zero, 0xff
/* 44588 80053D88 04000586 */  lh         $a1, 4($s0)
/* 4458C 80053D8C 06000686 */  lh         $a2, 6($s0)
/* 44590 80053D90 08000786 */  lh         $a3, 8($s0)
/* 44594 80053D94 0A000286 */  lh         $v0, 0xa($s0)
/* 44598 80053D98 0C000386 */  lh         $v1, 0xc($s0)
/* 4459C 80053D9C 01000424 */  addiu      $a0, $zero, 1
/* 445A0 80053DA0 1000A2AF */  sw         $v0, 0x10($sp)
/* 445A4 80053DA4 D16B010C */  jal        FUN_8005af44
/* 445A8 80053DA8 1400A3AF */   sw        $v1, 0x14($sp)
/* 445AC 80053DAC 16000586 */  lh         $a1, 0x16($s0)
/* 445B0 80053DB0 18000686 */  lh         $a2, 0x18($s0)
/* 445B4 80053DB4 0C6C010C */  jal        FUN_8005b030
/* 445B8 80053DB8 01000424 */   addiu     $a0, $zero, 1
/* 445BC 80053DBC 01000424 */  addiu      $a0, $zero, 1
/* 445C0 80053DC0 80000524 */  addiu      $a1, $zero, 0x80
/* 445C4 80053DC4 80000624 */  addiu      $a2, $zero, 0x80
/* 445C8 80053DC8 646B010C */  jal        FUN_8005ad90
/* 445CC 80053DCC 80000724 */   addiu     $a3, $zero, 0x80
/* 445D0 80053DD0 01000424 */  addiu      $a0, $zero, 1
/* 445D4 80053DD4 946B010C */  jal        FUN_8005ae50
/* 445D8 80053DD8 FFFF0524 */   addiu     $a1, $zero, -1
/* 445DC 80053DDC 9157010C */  jal        FUN_80055e44
/* 445E0 80053DE0 01000424 */   addiu     $a0, $zero, 1
/* 445E4 80053DE4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 445E8 80053DE8 1800B08F */  lw         $s0, 0x18($sp)
/* 445EC 80053DEC 0800E003 */  jr         $ra
/* 445F0 80053DF0 2000BD27 */   addiu     $sp, $sp, 0x20
