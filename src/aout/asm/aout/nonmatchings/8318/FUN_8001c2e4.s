.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c2e4
/* CAE4 8001C2E4 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* CAE8 8001C2E8 2118A003 */  addu       $v1, $sp, $zero
/* CAEC 8001C2EC 0180023C */  lui        $v0, %hi(D_800105F4)
/* CAF0 8001C2F0 F4054224 */  addiu      $v0, $v0, %lo(D_800105F4)
/* CAF4 8001C2F4 30004524 */  addiu      $a1, $v0, 0x30
.L8001C2F8:
/* CAF8 8001C2F8 0000468C */  lw         $a2, ($v0)
/* CAFC 8001C2FC 0400478C */  lw         $a3, 4($v0)
/* CB00 8001C300 0800488C */  lw         $t0, 8($v0)
/* CB04 8001C304 0C00498C */  lw         $t1, 0xc($v0)
/* CB08 8001C308 000066AC */  sw         $a2, ($v1)
/* CB0C 8001C30C 040067AC */  sw         $a3, 4($v1)
/* CB10 8001C310 080068AC */  sw         $t0, 8($v1)
/* CB14 8001C314 0C0069AC */  sw         $t1, 0xc($v1)
/* CB18 8001C318 10004224 */  addiu      $v0, $v0, 0x10
/* CB1C 8001C31C F6FF4514 */  bne        $v0, $a1, .L8001C2F8
/* CB20 8001C320 10006324 */   addiu     $v1, $v1, 0x10
/* CB24 8001C324 0000458C */  lw         $a1, ($v0)
/* CB28 8001C328 0400468C */  lw         $a2, 4($v0)
/* CB2C 8001C32C 0800478C */  lw         $a3, 8($v0)
/* CB30 8001C330 000065AC */  sw         $a1, ($v1)
/* CB34 8001C334 040066AC */  sw         $a2, 4($v1)
/* CB38 8001C338 080067AC */  sw         $a3, 8($v1)
/* CB3C 8001C33C 0E00822C */  sltiu      $v0, $a0, 0xe
/* CB40 8001C340 05004010 */  beqz       $v0, .L8001C358
/* CB44 8001C344 80100400 */   sll       $v0, $a0, 2
/* CB48 8001C348 2118A203 */  addu       $v1, $sp, $v0
/* CB4C 8001C34C 0000628C */  lw         $v0, ($v1)
/* CB50 8001C350 D7700008 */  j          .L8001C35C
/* CB54 8001C354 00000000 */   nop
.L8001C358:
/* CB58 8001C358 3800A28F */  lw         $v0, 0x38($sp)
.L8001C35C:
/* CB5C 8001C35C 0800E003 */  jr         $ra
/* CB60 8001C360 4000BD27 */   addiu     $sp, $sp, 0x40
