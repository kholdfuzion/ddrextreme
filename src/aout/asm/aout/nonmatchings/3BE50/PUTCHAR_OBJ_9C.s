.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PUTCHAR_OBJ_9C
/* AC3A8 800BBBA8 0F80063C */  lui        $a2, %hi(D_800ED090)
/* AC3AC 800BBBAC 90D0C68C */  lw         $a2, %lo(D_800ED090)($a2)
/* AC3B0 800BBBB0 00000000 */  nop
/* AC3B4 800BBBB4 2000C228 */  slti       $v0, $a2, 0x20
/* AC3B8 800BBBB8 07004014 */  bnez       $v0, .L800BBBD8
/* AC3BC 800BBBBC 00000000 */   nop
/* AC3C0 800BBBC0 1E80053C */  lui        $a1, %hi(D_801E1778)
/* AC3C4 800BBBC4 7817A524 */  addiu      $a1, $a1, %lo(D_801E1778)
/* AC3C8 800BBBC8 5BEF020C */  jal        write
/* AC3CC 800BBBCC 01000424 */   addiu     $a0, $zero, 1
/* AC3D0 800BBBD0 0F80013C */  lui        $at, %hi(D_800ED090)
/* AC3D4 800BBBD4 90D020AC */  sw         $zero, %lo(D_800ED090)($at)
.L800BBBD8:
/* AC3D8 800BBBD8 0F80033C */  lui        $v1, %hi(D_800ED090)
/* AC3DC 800BBBDC 90D06324 */  addiu      $v1, $v1, %lo(D_800ED090)
/* AC3E0 800BBBE0 0000628C */  lw         $v0, ($v1)
/* AC3E4 800BBBE4 1E80013C */  lui        $at, %hi(D_801E1778)
/* AC3E8 800BBBE8 21082200 */  addu       $at, $at, $v0
/* AC3EC 800BBBEC 781730A0 */  sb         $s0, %lo(D_801E1778)($at)
/* AC3F0 800BBBF0 01004224 */  addiu      $v0, $v0, 1
/* AC3F4 800BBBF4 000062AC */  sw         $v0, ($v1)
.L800BBBF8:
/* AC3F8 800BBBF8 1400BF8F */  lw         $ra, 0x14($sp)
/* AC3FC 800BBBFC 1000B08F */  lw         $s0, 0x10($sp)
/* AC400 800BBC00 0800E003 */  jr         $ra
/* AC404 800BBC04 1800BD27 */   addiu     $sp, $sp, 0x18
