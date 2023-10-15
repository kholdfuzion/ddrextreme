.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3b38
/* B4338 800C3B38 21280000 */  addu       $a1, $zero, $zero
/* B433C 800C3B3C 1F80023C */  lui        $v0, %hi(D_801F72E8)
/* B4340 800C3B40 E8724724 */  addiu      $a3, $v0, %lo(D_801F72E8)
/* B4344 800C3B44 0F80023C */  lui        $v0, %hi(D_800EE60C)
/* B4348 800C3B48 0CE64624 */  addiu      $a2, $v0, %lo(D_800EE60C)
/* B434C 800C3B4C C0100400 */  sll        $v0, $a0, 3
/* B4350 800C3B50 21204400 */  addu       $a0, $v0, $a0
/* B4354 800C3B54 2118A700 */  addu       $v1, $a1, $a3
.L800C3B58:
/* B4358 800C3B58 2110A400 */  addu       $v0, $a1, $a0
/* B435C 800C3B5C 21104600 */  addu       $v0, $v0, $a2
/* B4360 800C3B60 00004290 */  lbu        $v0, ($v0)
/* B4364 800C3B64 0100A524 */  addiu      $a1, $a1, 1
/* B4368 800C3B68 7E004238 */  xori       $v0, $v0, 0x7e
/* B436C 800C3B6C 000062A0 */  sb         $v0, ($v1)
/* B4370 800C3B70 0900A228 */  slti       $v0, $a1, 9
/* B4374 800C3B74 F8FF4014 */  bnez       $v0, .L800C3B58
/* B4378 800C3B78 2118A700 */   addu      $v1, $a1, $a3
/* B437C 800C3B7C 1F80023C */  lui        $v0, %hi(D_801F72E8)
/* B4380 800C3B80 E8724224 */  addiu      $v0, $v0, %lo(D_801F72E8)
/* B4384 800C3B84 2118A200 */  addu       $v1, $a1, $v0
/* B4388 800C3B88 0800E003 */  jr         $ra
/* B438C 800C3B8C 000060A0 */   sb        $zero, ($v1)
