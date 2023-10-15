.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PUTCHAR_OBJ_178
/* AC484 800BBC84 C3EE020C */  jal        _putchar
/* AC488 800BBC88 20000424 */   addiu     $a0, $zero, 0x20
/* AC48C 800BBC8C 0F80023C */  lui        $v0, %hi(D_800ED08C)
/* AC490 800BBC90 8CD0428C */  lw         $v0, %lo(D_800ED08C)($v0)
/* AC494 800BBC94 00000000 */  nop
/* AC498 800BBC98 07004230 */  andi       $v0, $v0, 7
/* AC49C 800BBC9C 24004010 */  beqz       $v0, .L800BBD30
/* AC4A0 800BBCA0 00000000 */   nop
/* AC4A4 800BBCA4 21EF0208 */  j          PUTCHAR_OBJ_178
/* AC4A8 800BBCA8 00000000 */   nop
.L800BBCAC:
/* AC4AC 800BBCAC 0E80013C */  lui        $at, %hi(D_800D8C0D)
/* AC4B0 800BBCB0 21082200 */  addu       $at, $at, $v0
/* AC4B4 800BBCB4 0D8C2280 */  lb         $v0, %lo(D_800D8C0D)($at)
/* AC4B8 800BBCB8 00000000 */  nop
/* AC4BC 800BBCBC 97004230 */  andi       $v0, $v0, 0x97
/* AC4C0 800BBCC0 07004010 */  beqz       $v0, PUTCHAR_OBJ_1D4
/* AC4C4 800BBCC4 00000000 */   nop
/* AC4C8 800BBCC8 0F80023C */  lui        $v0, %hi(D_800ED08C)
/* AC4CC 800BBCCC 8CD0428C */  lw         $v0, %lo(D_800ED08C)($v0)
/* AC4D0 800BBCD0 00000000 */  nop
/* AC4D4 800BBCD4 01004224 */  addiu      $v0, $v0, 1
/* AC4D8 800BBCD8 0F80013C */  lui        $at, %hi(D_800ED08C)
/* AC4DC 800BBCDC 8CD022AC */  sw         $v0, %lo(D_800ED08C)($at)
