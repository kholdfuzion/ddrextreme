.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C24C
/* CA4C 8001C24C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* CA50 8001C250 2118A003 */  addu       $v1, $sp, $zero
/* CA54 8001C254 0180023C */  lui        $v0, %hi(D_8001053C)
/* CA58 8001C258 3C054224 */  addiu      $v0, $v0, %lo(D_8001053C)
/* CA5C 8001C25C 30004624 */  addiu      $a2, $v0, 0x30
.L8001C260:
/* CA60 8001C260 0000478C */  lw         $a3, ($v0)
/* CA64 8001C264 0400488C */  lw         $t0, 4($v0)
/* CA68 8001C268 0800498C */  lw         $t1, 8($v0)
/* CA6C 8001C26C 0C004A8C */  lw         $t2, 0xc($v0)
/* CA70 8001C270 000067AC */  sw         $a3, ($v1)
/* CA74 8001C274 040068AC */  sw         $t0, 4($v1)
/* CA78 8001C278 080069AC */  sw         $t1, 8($v1)
/* CA7C 8001C27C 0C006AAC */  sw         $t2, 0xc($v1)
/* CA80 8001C280 10004224 */  addiu      $v0, $v0, 0x10
/* CA84 8001C284 F6FF4614 */  bne        $v0, $a2, .L8001C260
/* CA88 8001C288 10006324 */   addiu     $v1, $v1, 0x10
/* CA8C 8001C28C 0000468C */  lw         $a2, ($v0)
/* CA90 8001C290 00000000 */  nop
/* CA94 8001C294 000066AC */  sw         $a2, ($v1)
/* CA98 8001C298 0E00822C */  sltiu      $v0, $a0, 0xe
/* CA9C 8001C29C 03004014 */  bnez       $v0, .L8001C2AC
/* CAA0 8001C2A0 0180023C */   lui       $v0, %hi(D_80010570)
/* CAA4 8001C2A4 B7700008 */  j          .L8001C2DC
/* CAA8 8001C2A8 70054224 */   addiu     $v0, $v0, %lo(D_80010570)
.L8001C2AC:
/* CAAC 8001C2AC 06008228 */  slti       $v0, $a0, 6
/* CAB0 8001C2B0 04004014 */  bnez       $v0, .L8001C2C4
/* CAB4 8001C2B4 00000000 */   nop
/* CAB8 8001C2B8 1800A28F */  lw         $v0, 0x18($sp)
/* CABC 8001C2BC B7700008 */  j          .L8001C2DC
/* CAC0 8001C2C0 00000000 */   nop
.L8001C2C4:
/* CAC4 8001C2C4 0300A010 */  beqz       $a1, .L8001C2D4
/* CAC8 8001C2C8 80100400 */   sll       $v0, $a0, 2
/* CACC 8001C2CC 06008424 */  addiu      $a0, $a0, 6
/* CAD0 8001C2D0 80100400 */  sll        $v0, $a0, 2
.L8001C2D4:
/* CAD4 8001C2D4 2118A203 */  addu       $v1, $sp, $v0
/* CAD8 8001C2D8 0000628C */  lw         $v0, ($v1)
.L8001C2DC:
/* CADC 8001C2DC 0800E003 */  jr         $ra
/* CAE0 8001C2E0 3800BD27 */   addiu     $sp, $sp, 0x38
