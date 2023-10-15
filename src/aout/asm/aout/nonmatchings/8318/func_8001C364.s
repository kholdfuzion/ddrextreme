.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C364
/* CB64 8001C364 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* CB68 8001C368 2118A003 */  addu       $v1, $sp, $zero
/* CB6C 8001C36C 0180023C */  lui        $v0, %hi(D_800106BC)
/* CB70 8001C370 BC064224 */  addiu      $v0, $v0, %lo(D_800106BC)
/* CB74 8001C374 30004524 */  addiu      $a1, $v0, 0x30
.L8001C378:
/* CB78 8001C378 0000468C */  lw         $a2, ($v0)
/* CB7C 8001C37C 0400478C */  lw         $a3, 4($v0)
/* CB80 8001C380 0800488C */  lw         $t0, 8($v0)
/* CB84 8001C384 0C00498C */  lw         $t1, 0xc($v0)
/* CB88 8001C388 000066AC */  sw         $a2, ($v1)
/* CB8C 8001C38C 040067AC */  sw         $a3, 4($v1)
/* CB90 8001C390 080068AC */  sw         $t0, 8($v1)
/* CB94 8001C394 0C0069AC */  sw         $t1, 0xc($v1)
/* CB98 8001C398 10004224 */  addiu      $v0, $v0, 0x10
/* CB9C 8001C39C F6FF4514 */  bne        $v0, $a1, .L8001C378
/* CBA0 8001C3A0 10006324 */   addiu     $v1, $v1, 0x10
/* CBA4 8001C3A4 0000458C */  lw         $a1, ($v0)
/* CBA8 8001C3A8 0400468C */  lw         $a2, 4($v0)
/* CBAC 8001C3AC 000065AC */  sw         $a1, ($v1)
/* CBB0 8001C3B0 040066AC */  sw         $a2, 4($v1)
/* CBB4 8001C3B4 0F000224 */  addiu      $v0, $zero, 0xf
/* CBB8 8001C3B8 03008214 */  bne        $a0, $v0, .L8001C3C8
/* CBBC 8001C3BC 0180023C */   lui       $v0, %hi(D_800106F4)
/* CBC0 8001C3C0 FB700008 */  j          .L8001C3EC
/* CBC4 8001C3C4 F4064224 */   addiu     $v0, $v0, %lo(D_800106F4)
.L8001C3C8:
/* CBC8 8001C3C8 0F00822C */  sltiu      $v0, $a0, 0xf
/* CBCC 8001C3CC 05004010 */  beqz       $v0, .L8001C3E4
/* CBD0 8001C3D0 80100400 */   sll       $v0, $a0, 2
/* CBD4 8001C3D4 2118A203 */  addu       $v1, $sp, $v0
/* CBD8 8001C3D8 0000628C */  lw         $v0, ($v1)
/* CBDC 8001C3DC FB700008 */  j          .L8001C3EC
/* CBE0 8001C3E0 00000000 */   nop
.L8001C3E4:
/* CBE4 8001C3E4 0180023C */  lui        $v0, %hi(D_80010700)
/* CBE8 8001C3E8 00074224 */  addiu      $v0, $v0, %lo(D_80010700)
.L8001C3EC:
/* CBEC 8001C3EC 0800E003 */  jr         $ra
/* CBF0 8001C3F0 3800BD27 */   addiu     $sp, $sp, 0x38
