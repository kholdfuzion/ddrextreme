.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009994c
/* 8A14C 8009994C 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 8A150 80099950 A8FF6324 */  addiu      $v1, $v1, %lo(D_800EFFA8)
/* 8A154 80099954 7800628C */  lw         $v0, 0x78($v1)
/* 8A158 80099958 3400848C */  lw         $a0, 0x34($a0)
/* 8A15C 8009995C 00000000 */  nop
/* 8A160 80099960 23104400 */  subu       $v0, $v0, $a0
/* 8A164 80099964 100E4228 */  slti       $v0, $v0, 0xe10
/* 8A168 80099968 02004010 */  beqz       $v0, .L80099974
/* 8A16C 8009996C 100E8224 */   addiu     $v0, $a0, 0xe10
/* 8A170 80099970 780062AC */  sw         $v0, 0x78($v1)
.L80099974:
/* 8A174 80099974 0800E003 */  jr         $ra
/* 8A178 80099978 00000000 */   nop
