.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C1D8
/* C9D8 8001C1D8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* C9DC 8001C1DC 2118A003 */  addu       $v1, $sp, $zero
/* C9E0 8001C1E0 0180023C */  lui        $v0, %hi(D_800104B4)
/* C9E4 8001C1E4 B4044224 */  addiu      $v0, $v0, %lo(D_800104B4)
/* C9E8 8001C1E8 30004524 */  addiu      $a1, $v0, 0x30
.L8001C1EC:
/* C9EC 8001C1EC 0000468C */  lw         $a2, ($v0)
/* C9F0 8001C1F0 0400478C */  lw         $a3, 4($v0)
/* C9F4 8001C1F4 0800488C */  lw         $t0, 8($v0)
/* C9F8 8001C1F8 0C00498C */  lw         $t1, 0xc($v0)
/* C9FC 8001C1FC 000066AC */  sw         $a2, ($v1)
/* CA00 8001C200 040067AC */  sw         $a3, 4($v1)
/* CA04 8001C204 080068AC */  sw         $t0, 8($v1)
/* CA08 8001C208 0C0069AC */  sw         $t1, 0xc($v1)
/* CA0C 8001C20C 10004224 */  addiu      $v0, $v0, 0x10
/* CA10 8001C210 F6FF4514 */  bne        $v0, $a1, .L8001C1EC
/* CA14 8001C214 10006324 */   addiu     $v1, $v1, 0x10
/* CA18 8001C218 0000458C */  lw         $a1, ($v0)
/* CA1C 8001C21C 00000000 */  nop
/* CA20 8001C220 000065AC */  sw         $a1, ($v1)
/* CA24 8001C224 0C00822C */  sltiu      $v0, $a0, 0xc
/* CA28 8001C228 05004010 */  beqz       $v0, .L8001C240
/* CA2C 8001C22C 80100400 */   sll       $v0, $a0, 2
/* CA30 8001C230 2118A203 */  addu       $v1, $sp, $v0
/* CA34 8001C234 0000628C */  lw         $v0, ($v1)
/* CA38 8001C238 91700008 */  j          .L8001C244
/* CA3C 8001C23C 00000000 */   nop
.L8001C240:
/* CA40 8001C240 3000A28F */  lw         $v0, 0x30($sp)
.L8001C244:
/* CA44 8001C244 0800E003 */  jr         $ra
/* CA48 8001C248 3800BD27 */   addiu     $sp, $sp, 0x38
