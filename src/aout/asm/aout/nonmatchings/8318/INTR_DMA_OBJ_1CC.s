.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_DMA_OBJ_1CC
/* C400 8001BC00 21308000 */  addu       $a2, $a0, $zero
/* C404 8001BC04 0D80033C */  lui        $v1, %hi(D_800D3E3C)
/* C408 8001BC08 3C3E6324 */  addiu      $v1, $v1, %lo(D_800D3E3C)
/* C40C 8001BC0C 80100600 */  sll        $v0, $a2, 2
/* C410 8001BC10 21184300 */  addu       $v1, $v0, $v1
/* C414 8001BC14 0000678C */  lw         $a3, ($v1)
/* C418 8001BC18 2120A000 */  addu       $a0, $a1, $zero
/* C41C 8001BC1C 21008710 */  beq        $a0, $a3, INTR_DMA_OBJ_270
/* C420 8001BC20 2110E000 */   addu      $v0, $a3, $zero
/* C424 8001BC24 10008010 */  beqz       $a0, .L8001BC68
/* C428 8001BC28 FF00023C */   lui       $v0, 0xff
/* C42C 8001BC2C 0D80053C */  lui        $a1, %hi(D_800D3E38)
/* C430 8001BC30 383EA58C */  lw         $a1, %lo(D_800D3E38)($a1)
/* C434 8001BC34 FFFF4234 */  ori        $v0, $v0, 0xffff
/* C438 8001BC38 000064AC */  sw         $a0, ($v1)
/* C43C 8001BC3C 0000A48C */  lw         $a0, ($a1)
/* C440 8001BC40 1000C324 */  addiu      $v1, $a2, 0x10
/* C444 8001BC44 24208200 */  and        $a0, $a0, $v0
/* C448 8001BC48 01000224 */  addiu      $v0, $zero, 1
/* C44C 8001BC4C 04106200 */  sllv       $v0, $v0, $v1
/* C450 8001BC50 8000033C */  lui        $v1, 0x80
/* C454 8001BC54 25104300 */  or         $v0, $v0, $v1
/* C458 8001BC58 25208200 */  or         $a0, $a0, $v0
/* C45C 8001BC5C 0000A4AC */  sw         $a0, ($a1)
/* C460 8001BC60 296F0008 */  j          INTR_DMA_OBJ_270
/* C464 8001BC64 2110E000 */   addu      $v0, $a3, $zero
.L8001BC68:
/* C468 8001BC68 0D80053C */  lui        $a1, %hi(D_800D3E38)
/* C46C 8001BC6C 383EA58C */  lw         $a1, %lo(D_800D3E38)($a1)
/* C470 8001BC70 FFFF4234 */  ori        $v0, $v0, 0xffff
/* C474 8001BC74 000060AC */  sw         $zero, ($v1)
/* C478 8001BC78 0000A38C */  lw         $v1, ($a1)
/* C47C 8001BC7C 1000C424 */  addiu      $a0, $a2, 0x10
/* C480 8001BC80 24186200 */  and        $v1, $v1, $v0
/* C484 8001BC84 8000023C */  lui        $v0, 0x80
/* C488 8001BC88 25186200 */  or         $v1, $v1, $v0
/* C48C 8001BC8C 01000224 */  addiu      $v0, $zero, 1
/* C490 8001BC90 04108200 */  sllv       $v0, $v0, $a0
/* C494 8001BC94 27100200 */  nor        $v0, $zero, $v0
/* C498 8001BC98 24186200 */  and        $v1, $v1, $v0
/* C49C 8001BC9C 0000A3AC */  sw         $v1, ($a1)
/* C4A0 8001BCA0 2110E000 */  addu       $v0, $a3, $zero
