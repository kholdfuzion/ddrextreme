.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel file_800c2c7c
/* B347C 800C2C7C D0FFBD27 */  addiu      $sp, $sp, -0x30
/* B3480 800C2C80 2000B4AF */  sw         $s4, 0x20($sp)
/* B3484 800C2C84 21A08000 */  addu       $s4, $a0, $zero
/* B3488 800C2C88 0180053C */  lui        $a1, %hi(D_800177F0)
/* B348C 800C2C8C F077A524 */  addiu      $a1, $a1, %lo(D_800177F0)
/* B3490 800C2C90 1000B0AF */  sw         $s0, 0x10($sp)
/* B3494 800C2C94 1F80103C */  lui        $s0, %hi(D_801F72D8)
/* B3498 800C2C98 1800B2AF */  sw         $s2, 0x18($sp)
/* B349C 800C2C9C D8721226 */  addiu      $s2, $s0, %lo(D_801F72D8)
/* B34A0 800C2CA0 2C00BFAF */  sw         $ra, 0x2c($sp)
/* B34A4 800C2CA4 2800B6AF */  sw         $s6, 0x28($sp)
/* B34A8 800C2CA8 2400B5AF */  sw         $s5, 0x24($sp)
/* B34AC 800C2CAC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* B34B0 800C2CB0 DD5F000C */  jal        strcmp
/* B34B4 800C2CB4 1400B1AF */   sw        $s1, 0x14($sp)
/* B34B8 800C2CB8 03004014 */  bnez       $v0, .L800C2CC8
/* B34BC 800C2CBC 01000224 */   addiu     $v0, $zero, 1
/* B34C0 800C2CC0 600B0308 */  j          .L800C2D80
/* B34C4 800C2CC4 080042AE */   sw        $v0, 8($s2)
.L800C2CC8:
/* B34C8 800C2CC8 D872028E */  lw         $v0, 0x72d8($s0)
/* B34CC 800C2CCC 00000000 */  nop
/* B34D0 800C2CD0 2C004010 */  beqz       $v0, .L800C2D84
/* B34D4 800C2CD4 21100000 */   addu      $v0, $zero, $zero
/* B34D8 800C2CD8 7E81000C */  jal        strlen
/* B34DC 800C2CDC 21208002 */   addu      $a0, $s4, $zero
/* B34E0 800C2CE0 0800438E */  lw         $v1, 8($s2)
/* B34E4 800C2CE4 00000000 */  nop
/* B34E8 800C2CE8 04006010 */  beqz       $v1, .L800C2CFC
/* B34EC 800C2CEC 21984000 */   addu      $s3, $v0, $zero
/* B34F0 800C2CF0 0400428E */  lw         $v0, 4($s2)
/* B34F4 800C2CF4 400B0308 */  j          .L800C2D00
/* B34F8 800C2CF8 27880200 */   nor       $s1, $zero, $v0
.L800C2CFC:
/* B34FC 800C2CFC 21880000 */  addu       $s1, $zero, $zero
.L800C2D00:
/* B3500 800C2D00 0000428E */  lw         $v0, ($s2)
/* B3504 800C2D04 00000000 */  nop
/* B3508 800C2D08 2A102202 */  slt        $v0, $s1, $v0
/* B350C 800C2D0C 1C004010 */  beqz       $v0, .L800C2D80
/* B3510 800C2D10 080040AE */   sw        $zero, 8($s2)
/* B3514 800C2D14 FFFF1624 */  addiu      $s6, $zero, -1
/* B3518 800C2D18 3D001524 */  addiu      $s5, $zero, 0x3d
.L800C2D1C:
/* B351C 800C2D1C 13003612 */  beq        $s1, $s6, .L800C2D6C
/* B3520 800C2D20 21288002 */   addu      $a1, $s4, $zero
/* B3524 800C2D24 0C00428E */  lw         $v0, 0xc($s2)
/* B3528 800C2D28 80801100 */  sll        $s0, $s1, 2
/* B352C 800C2D2C 21100202 */  addu       $v0, $s0, $v0
/* B3530 800C2D30 0000448C */  lw         $a0, ($v0)
/* B3534 800C2D34 35BB000C */  jal        strncmp
/* B3538 800C2D38 21306002 */   addu      $a2, $s3, $zero
/* B353C 800C2D3C 0B004014 */  bnez       $v0, .L800C2D6C
/* B3540 800C2D40 00000000 */   nop
/* B3544 800C2D44 0C00428E */  lw         $v0, 0xc($s2)
/* B3548 800C2D48 00000000 */  nop
/* B354C 800C2D4C 21100202 */  addu       $v0, $s0, $v0
/* B3550 800C2D50 0000428C */  lw         $v0, ($v0)
/* B3554 800C2D54 00000000 */  nop
/* B3558 800C2D58 21185300 */  addu       $v1, $v0, $s3
/* B355C 800C2D5C 00006290 */  lbu        $v0, ($v1)
/* B3560 800C2D60 00000000 */  nop
/* B3564 800C2D64 07005510 */  beq        $v0, $s5, .L800C2D84
/* B3568 800C2D68 01006224 */   addiu     $v0, $v1, 1
.L800C2D6C:
/* B356C 800C2D6C 0000428E */  lw         $v0, ($s2)
/* B3570 800C2D70 01003126 */  addiu      $s1, $s1, 1
/* B3574 800C2D74 2A102202 */  slt        $v0, $s1, $v0
/* B3578 800C2D78 E8FF4014 */  bnez       $v0, .L800C2D1C
/* B357C 800C2D7C 00000000 */   nop
.L800C2D80:
/* B3580 800C2D80 21100000 */  addu       $v0, $zero, $zero
.L800C2D84:
/* B3584 800C2D84 2C00BF8F */  lw         $ra, 0x2c($sp)
/* B3588 800C2D88 2800B68F */  lw         $s6, 0x28($sp)
/* B358C 800C2D8C 2400B58F */  lw         $s5, 0x24($sp)
/* B3590 800C2D90 2000B48F */  lw         $s4, 0x20($sp)
/* B3594 800C2D94 1C00B38F */  lw         $s3, 0x1c($sp)
/* B3598 800C2D98 1800B28F */  lw         $s2, 0x18($sp)
/* B359C 800C2D9C 1400B18F */  lw         $s1, 0x14($sp)
/* B35A0 800C2DA0 1000B08F */  lw         $s0, 0x10($sp)
/* B35A4 800C2DA4 0800E003 */  jr         $ra
/* B35A8 800C2DA8 3000BD27 */   addiu     $sp, $sp, 0x30
