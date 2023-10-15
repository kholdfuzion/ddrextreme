.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a6a50
/* 97250 800A6A50 21388000 */  addu       $a3, $a0, $zero
/* 97254 800A6A54 1B80033C */  lui        $v1, %hi(D_801B2EC0)
/* 97258 800A6A58 0180053C */  lui        $a1, %hi(D_80016B20)
/* 9725C 800A6A5C 206BA524 */  addiu      $a1, $a1, %lo(D_80016B20)
/* 97260 800A6A60 C0300700 */  sll        $a2, $a3, 3
/* 97264 800A6A64 2110C500 */  addu       $v0, $a2, $a1
/* 97268 800A6A68 C02E6324 */  addiu      $v1, $v1, %lo(D_801B2EC0)
/* 9726C 800A6A6C 2128A600 */  addu       $a1, $a1, $a2
/* 97270 800A6A70 0000448C */  lw         $a0, ($v0)
/* 97274 800A6A74 0400A28C */  lw         $v0, 4($a1)
/* 97278 800A6A78 80200400 */  sll        $a0, $a0, 2
/* 9727C 800A6A7C 21208300 */  addu       $a0, $a0, $v1
/* 97280 800A6A80 0000838C */  lw         $v1, ($a0)
/* 97284 800A6A84 00000000 */  nop
/* 97288 800A6A88 25186200 */  or         $v1, $v1, $v0
/* 9728C 800A6A8C F8FFE224 */  addiu      $v0, $a3, -8
/* 97290 800A6A90 0600422C */  sltiu      $v0, $v0, 6
/* 97294 800A6A94 08004010 */  beqz       $v0, .L800A6AB8
/* 97298 800A6A98 000083AC */   sw        $v1, ($a0)
/* 9729C 800A6A9C 1B80033C */  lui        $v1, %hi(D_801B2ED0)
/* 972A0 800A6AA0 D02E6324 */  addiu      $v1, $v1, %lo(D_801B2ED0)
/* 972A4 800A6AA4 2118E300 */  addu       $v1, $a3, $v1
/* 972A8 800A6AA8 00006290 */  lbu        $v0, ($v1)
/* 972AC 800A6AAC 00000000 */  nop
/* 972B0 800A6AB0 01004234 */  ori        $v0, $v0, 1
/* 972B4 800A6AB4 000062A0 */  sb         $v0, ($v1)
.L800A6AB8:
/* 972B8 800A6AB8 0800E003 */  jr         $ra
/* 972BC 800A6ABC 00000000 */   nop
