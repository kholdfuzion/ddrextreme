.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3b90
/* B4390 800C3B90 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B4394 800C3B94 2000B0AF */  sw         $s0, 0x20($sp)
/* B4398 800C3B98 21808000 */  addu       $s0, $a0, $zero
/* B439C 800C3B9C 2400BFAF */  sw         $ra, 0x24($sp)
/* B43A0 800C3BA0 04000392 */  lbu        $v1, 4($s0)
/* B43A4 800C3BA4 81000224 */  addiu      $v0, $zero, 0x81
/* B43A8 800C3BA8 1D006210 */  beq        $v1, $v0, .L800C3C20
/* B43AC 800C3BAC 82006228 */   slti      $v0, $v1, 0x82
/* B43B0 800C3BB0 05004010 */  beqz       $v0, .L800C3BC8
/* B43B4 800C3BB4 01000224 */   addiu     $v0, $zero, 1
/* B43B8 800C3BB8 08006210 */  beq        $v1, $v0, .L800C3BDC
/* B43BC 800C3BBC 21100000 */   addu      $v0, $zero, $zero
/* B43C0 800C3BC0 140F0308 */  j          .L800C3C50
/* B43C4 800C3BC4 00000000 */   nop
.L800C3BC8:
/* B43C8 800C3BC8 82000224 */  addiu      $v0, $zero, 0x82
/* B43CC 800C3BCC 19006210 */  beq        $v1, $v0, .L800C3C34
/* B43D0 800C3BD0 14000426 */   addiu     $a0, $s0, 0x14
/* B43D4 800C3BD4 140F0308 */  j          .L800C3C50
/* B43D8 800C3BD8 21100000 */   addu      $v0, $zero, $zero
.L800C3BDC:
/* B43DC 800C3BDC 04000226 */  addiu      $v0, $s0, 4
/* B43E0 800C3BE0 04004390 */  lbu        $v1, 4($v0)
/* B43E4 800C3BE4 06004690 */  lbu        $a2, 6($v0)
/* B43E8 800C3BE8 05004790 */  lbu        $a3, 5($v0)
/* B43EC 800C3BEC 1000A3AF */  sw         $v1, 0x10($sp)
/* B43F0 800C3BF0 03004390 */  lbu        $v1, 3($v0)
/* B43F4 800C3BF4 14000426 */  addiu      $a0, $s0, 0x14
/* B43F8 800C3BF8 1400A3AF */  sw         $v1, 0x14($sp)
/* B43FC 800C3BFC 02004390 */  lbu        $v1, 2($v0)
/* B4400 800C3C00 0180053C */  lui        $a1, %hi(D_80017814)
/* B4404 800C3C04 1800A3AF */  sw         $v1, 0x18($sp)
/* B4408 800C3C08 01004290 */  lbu        $v0, 1($v0)
/* B440C 800C3C0C 1478A524 */  addiu      $a1, $a1, %lo(D_80017814)
/* B4410 800C3C10 8E81000C */  jal        sprintf
/* B4414 800C3C14 1C00A2AF */   sw        $v0, 0x1c($sp)
/* B4418 800C3C18 140F0308 */  j          .L800C3C50
/* B441C 800C3C1C 14000226 */   addiu     $v0, $s0, 0x14
.L800C3C20:
/* B4420 800C3C20 14000426 */  addiu      $a0, $s0, 0x14
/* B4424 800C3C24 AB0C030C */  jal        FUN_800c32ac
/* B4428 800C3C28 04000526 */   addiu     $a1, $s0, 4
/* B442C 800C3C2C 140F0308 */  j          .L800C3C50
/* B4430 800C3C30 14000226 */   addiu     $v0, $s0, 0x14
.L800C3C34:
/* B4434 800C3C34 04000226 */  addiu      $v0, $s0, 4
/* B4438 800C3C38 0180053C */  lui        $a1, %hi(D_80017830)
/* B443C 800C3C3C 01004690 */  lbu        $a2, 1($v0)
/* B4440 800C3C40 02004790 */  lbu        $a3, 2($v0)
/* B4444 800C3C44 8E81000C */  jal        sprintf
/* B4448 800C3C48 3078A524 */   addiu     $a1, $a1, %lo(D_80017830)
/* B444C 800C3C4C 14000226 */  addiu      $v0, $s0, 0x14
.L800C3C50:
/* B4450 800C3C50 2400BF8F */  lw         $ra, 0x24($sp)
/* B4454 800C3C54 2000B08F */  lw         $s0, 0x20($sp)
/* B4458 800C3C58 0800E003 */  jr         $ra
/* B445C 800C3C5C 2800BD27 */   addiu     $sp, $sp, 0x28
