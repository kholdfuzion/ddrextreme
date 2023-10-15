.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2CF4
/* B4D8 8001ACD8 24104300 */  and        $v0, $v0, $v1
/* B4DC 8001ACDC F5FF4014 */  bnez       $v0, .L8001ACB4
/* B4E0 8001ACE0 00000000 */   nop
/* B4E4 8001ACE4 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B4E8 8001ACE8 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B4EC 8001ACEC 00000000 */  nop
/* B4F0 8001ACF0 0000428C */  lw         $v0, ($v0)
/* B4F4 8001ACF4 0004033C */  lui        $v1, 0x400
/* B4F8 8001ACF8 24104300 */  and        $v0, $v0, $v1
/* B4FC 8001ACFC EDFF4010 */  beqz       $v0, .L8001ACB4
/* B500 8001AD00 00000000 */   nop
/* B504 8001AD04 0280053C */  lui        $a1, %hi(_GPU_ResetCallback)
/* B508 8001AD08 94AEA524 */  addiu      $a1, $a1, %lo(_GPU_ResetCallback)
/* B50C 8001AD0C 716C000C */  jal        DMACallback
/* B510 8001AD10 02000424 */   addiu     $a0, $zero, 2
/* B514 8001AD14 04000286 */  lh         $v0, 4($s0)
/* B518 8001AD18 00000000 */  nop
/* B51C 8001AD1C 18004010 */  beqz       $v0, SYS_OBJ_2D9C
/* B520 8001AD20 FFFF0224 */   addiu     $v0, $zero, -1
/* B524 8001AD24 06000286 */  lh         $v0, 6($s0)
/* B528 8001AD28 00000000 */  nop
/* B52C 8001AD2C 03004014 */  bnez       $v0, .L8001AD3C
/* B530 8001AD30 00141100 */   sll       $v0, $s1, 0x10
/* B534 8001AD34 606B0008 */  j          SYS_OBJ_2D9C
/* B538 8001AD38 FFFF0224 */   addiu     $v0, $zero, -1
.L8001AD3C:
/* B53C 8001AD3C FFFF4332 */  andi       $v1, $s2, 0xffff
/* B540 8001AD40 25104300 */  or         $v0, $v0, $v1
/* B544 8001AD44 0000058E */  lw         $a1, ($s0)
/* B548 8001AD48 0D80033C */  lui        $v1, %hi(D_800D2B90)
/* B54C 8001AD4C 902B638C */  lw         $v1, %lo(D_800D2B90)($v1)
/* B550 8001AD50 0D80043C */  lui        $a0, %hi(D_800D2C38)
/* B554 8001AD54 382C8424 */  addiu      $a0, $a0, %lo(D_800D2C38)
/* B558 8001AD58 040082AC */  sw         $v0, 4($a0)
/* B55C 8001AD5C 000085AC */  sw         $a1, ($a0)
/* B560 8001AD60 0400028E */  lw         $v0, 4($s0)
/* B564 8001AD64 00000000 */  nop
/* B568 8001AD68 080082AC */  sw         $v0, 8($a0)
/* B56C 8001AD6C 1800628C */  lw         $v0, 0x18($v1)
/* B570 8001AD70 00000000 */  nop
/* B574 8001AD74 09F84000 */  jalr       $v0
/* B578 8001AD78 F8FF8424 */   addiu     $a0, $a0, -8
/* B57C 8001AD7C 21100000 */  addu       $v0, $zero, $zero
