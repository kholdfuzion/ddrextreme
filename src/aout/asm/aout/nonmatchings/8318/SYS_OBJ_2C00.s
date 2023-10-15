.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2C00
/* B3E4 8001ABE4 24104300 */  and        $v0, $v0, $v1
/* B3E8 8001ABE8 F5FF4014 */  bnez       $v0, .L8001ABC0
/* B3EC 8001ABEC 00000000 */   nop
/* B3F0 8001ABF0 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B3F4 8001ABF4 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B3F8 8001ABF8 00000000 */  nop
/* B3FC 8001ABFC 0000428C */  lw         $v0, ($v0)
/* B400 8001AC00 0004033C */  lui        $v1, 0x400
/* B404 8001AC04 24104300 */  and        $v0, $v0, $v1
/* B408 8001AC08 EDFF4010 */  beqz       $v0, .L8001ABC0
/* B40C 8001AC0C 00000000 */   nop
/* B410 8001AC10 0280053C */  lui        $a1, %hi(_GPU_ResetCallback)
/* B414 8001AC14 94AEA524 */  addiu      $a1, $a1, %lo(_GPU_ResetCallback)
/* B418 8001AC18 716C000C */  jal        DMACallback
/* B41C 8001AC1C 02000424 */   addiu     $a0, $zero, 2
/* B420 8001AC20 0D80023C */  lui        $v0, %hi(D_800D2B90)
/* B424 8001AC24 902B428C */  lw         $v0, %lo(D_800D2B90)($v0)
/* B428 8001AC28 21200002 */  addu       $a0, $s0, $zero
/* B42C 8001AC2C 1C00428C */  lw         $v0, 0x1c($v0)
/* B430 8001AC30 00000000 */  nop
/* B434 8001AC34 09F84000 */  jalr       $v0
/* B438 8001AC38 21282002 */   addu      $a1, $s1, $zero
/* B43C 8001AC3C 21100000 */  addu       $v0, $zero, $zero
.L8001AC40:
/* B440 8001AC40 1800BF8F */  lw         $ra, 0x18($sp)
/* B444 8001AC44 1400B18F */  lw         $s1, 0x14($sp)
/* B448 8001AC48 1000B08F */  lw         $s0, 0x10($sp)
/* B44C 8001AC4C 0800E003 */  jr         $ra
/* B450 8001AC50 2000BD27 */   addiu     $sp, $sp, 0x20
