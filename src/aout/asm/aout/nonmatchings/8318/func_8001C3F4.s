.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C3F4
/* CBF4 8001C3F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* CBF8 8001C3F8 2118A003 */  addu       $v1, $sp, $zero
/* CBFC 8001C3FC 0180023C */  lui        $v0, %hi(D_80010734)
/* CC00 8001C400 34074224 */  addiu      $v0, $v0, %lo(D_80010734)
/* CC04 8001C404 20004524 */  addiu      $a1, $v0, 0x20
.L8001C408:
/* CC08 8001C408 0000468C */  lw         $a2, ($v0)
/* CC0C 8001C40C 0400478C */  lw         $a3, 4($v0)
/* CC10 8001C410 0800488C */  lw         $t0, 8($v0)
/* CC14 8001C414 0C00498C */  lw         $t1, 0xc($v0)
/* CC18 8001C418 000066AC */  sw         $a2, ($v1)
/* CC1C 8001C41C 040067AC */  sw         $a3, 4($v1)
/* CC20 8001C420 080068AC */  sw         $t0, 8($v1)
/* CC24 8001C424 0C0069AC */  sw         $t1, 0xc($v1)
/* CC28 8001C428 10004224 */  addiu      $v0, $v0, 0x10
/* CC2C 8001C42C F6FF4514 */  bne        $v0, $a1, .L8001C408
/* CC30 8001C430 10006324 */   addiu     $v1, $v1, 0x10
/* CC34 8001C434 0000458C */  lw         $a1, ($v0)
/* CC38 8001C438 0400468C */  lw         $a2, 4($v0)
/* CC3C 8001C43C 0800478C */  lw         $a3, 8($v0)
/* CC40 8001C440 000065AC */  sw         $a1, ($v1)
/* CC44 8001C444 040066AC */  sw         $a2, 4($v1)
/* CC48 8001C448 080067AC */  sw         $a3, 8($v1)
/* CC4C 8001C44C 0B008228 */  slti       $v0, $a0, 0xb
/* CC50 8001C450 02004014 */  bnez       $v0, .L8001C45C
/* CC54 8001C454 00000000 */   nop
/* CC58 8001C458 0A000424 */  addiu      $a0, $zero, 0xa
.L8001C45C:
/* CC5C 8001C45C 03008104 */  bgez       $a0, .L8001C46C
/* CC60 8001C460 80100400 */   sll       $v0, $a0, 2
/* CC64 8001C464 21200000 */  addu       $a0, $zero, $zero
/* CC68 8001C468 80100400 */  sll        $v0, $a0, 2
.L8001C46C:
/* CC6C 8001C46C 2118A203 */  addu       $v1, $sp, $v0
/* CC70 8001C470 0000628C */  lw         $v0, ($v1)
/* CC74 8001C474 0800E003 */  jr         $ra
/* CC78 8001C478 3000BD27 */   addiu     $sp, $sp, 0x30
