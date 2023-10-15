.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80094d5c
/* 8555C 80094D5C FF000624 */  addiu      $a2, $zero, 0xff
/* 85560 80094D60 1B80023C */  lui        $v0, %hi(D_801B2AF0)
/* 85564 80094D64 F02A4524 */  addiu      $a1, $v0, %lo(D_801B2AF0)
/* 85568 80094D68 07000424 */  addiu      $a0, $zero, 7
/* 8556C 80094D6C 1B80023C */  lui        $v0, %hi(D_801B2B40)
/* 85570 80094D70 1B80033C */  lui        $v1, %hi(D_801B2B41)
/* 85574 80094D74 402B40A0 */  sb         $zero, %lo(D_801B2B40)($v0)
/* 85578 80094D78 412B60A0 */  sb         $zero, %lo(D_801B2B41)($v1)
.L80094D7C:
/* 8557C 80094D7C 0000A6A0 */  sb         $a2, ($a1)
/* 85580 80094D80 0100A6A0 */  sb         $a2, 1($a1)
/* 85584 80094D84 FFFF8424 */  addiu      $a0, $a0, -1
/* 85588 80094D88 FCFF8104 */  bgez       $a0, .L80094D7C
/* 8558C 80094D8C 0200A524 */   addiu     $a1, $a1, 2
/* 85590 80094D90 FF000324 */  addiu      $v1, $zero, 0xff
/* 85594 80094D94 1B80023C */  lui        $v0, %hi(D_801B2B00)
/* 85598 80094D98 002B4224 */  addiu      $v0, $v0, %lo(D_801B2B00)
/* 8559C 80094D9C 0B000424 */  addiu      $a0, $zero, 0xb
.L80094DA0:
/* 855A0 80094DA0 000043A0 */  sb         $v1, ($v0)
/* 855A4 80094DA4 010043A0 */  sb         $v1, 1($v0)
/* 855A8 80094DA8 FFFF8424 */  addiu      $a0, $a0, -1
/* 855AC 80094DAC FCFF8104 */  bgez       $a0, .L80094DA0
/* 855B0 80094DB0 02004224 */   addiu     $v0, $v0, 2
/* 855B4 80094DB4 FF000324 */  addiu      $v1, $zero, 0xff
/* 855B8 80094DB8 1B80023C */  lui        $v0, %hi(D_801B2B20)
/* 855BC 80094DBC 202B4224 */  addiu      $v0, $v0, %lo(D_801B2B20)
/* 855C0 80094DC0 0B000424 */  addiu      $a0, $zero, 0xb
.L80094DC4:
/* 855C4 80094DC4 000043A0 */  sb         $v1, ($v0)
/* 855C8 80094DC8 010043A0 */  sb         $v1, 1($v0)
/* 855CC 80094DCC FFFF8424 */  addiu      $a0, $a0, -1
/* 855D0 80094DD0 FCFF8104 */  bgez       $a0, .L80094DC4
/* 855D4 80094DD4 02004224 */   addiu     $v0, $v0, 2
/* 855D8 80094DD8 FF000324 */  addiu      $v1, $zero, 0xff
/* 855DC 80094DDC 1B80023C */  lui        $v0, %hi(D_801B2B38)
/* 855E0 80094DE0 382B4224 */  addiu      $v0, $v0, %lo(D_801B2B38)
/* 855E4 80094DE4 03000424 */  addiu      $a0, $zero, 3
.L80094DE8:
/* 855E8 80094DE8 000043A0 */  sb         $v1, ($v0)
/* 855EC 80094DEC 010043A0 */  sb         $v1, 1($v0)
/* 855F0 80094DF0 FFFF8424 */  addiu      $a0, $a0, -1
/* 855F4 80094DF4 FCFF8104 */  bgez       $a0, .L80094DE8
/* 855F8 80094DF8 02004224 */   addiu     $v0, $v0, 2
/* 855FC 80094DFC 0800E003 */  jr         $ra
/* 85600 80094E00 00000000 */   nop
