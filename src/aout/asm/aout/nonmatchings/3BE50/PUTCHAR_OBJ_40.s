.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel PUTCHAR_OBJ_40
/* AC34C 800BBB4C C3EE020C */  jal        _putchar
/* AC350 800BBB50 20000424 */   addiu     $a0, $zero, 0x20
/* AC354 800BBB54 0F80023C */  lui        $v0, %hi(D_800ED08C)
/* AC358 800BBB58 8CD0428C */  lw         $v0, %lo(D_800ED08C)($v0)
/* AC35C 800BBB5C 00000000 */  nop
/* AC360 800BBB60 07004230 */  andi       $v0, $v0, 7
/* AC364 800BBB64 24004010 */  beqz       $v0, .L800BBBF8
/* AC368 800BBB68 00000000 */   nop
/* AC36C 800BBB6C D3EE0208 */  j          PUTCHAR_OBJ_40
/* AC370 800BBB70 00000000 */   nop
.L800BBB74:
/* AC374 800BBB74 0E80013C */  lui        $at, %hi(D_800D8C0D)
/* AC378 800BBB78 21082200 */  addu       $at, $at, $v0
/* AC37C 800BBB7C 0D8C2280 */  lb         $v0, %lo(D_800D8C0D)($at)
/* AC380 800BBB80 00000000 */  nop
/* AC384 800BBB84 97004230 */  andi       $v0, $v0, 0x97
/* AC388 800BBB88 07004010 */  beqz       $v0, PUTCHAR_OBJ_9C
/* AC38C 800BBB8C 00000000 */   nop
/* AC390 800BBB90 0F80023C */  lui        $v0, %hi(D_800ED08C)
/* AC394 800BBB94 8CD0428C */  lw         $v0, %lo(D_800ED08C)($v0)
/* AC398 800BBB98 00000000 */  nop
/* AC39C 800BBB9C 01004224 */  addiu      $v0, $v0, 1
/* AC3A0 800BBBA0 0F80013C */  lui        $at, %hi(D_800ED08C)
/* AC3A4 800BBBA4 8CD022AC */  sw         $v0, %lo(D_800ED08C)($at)
