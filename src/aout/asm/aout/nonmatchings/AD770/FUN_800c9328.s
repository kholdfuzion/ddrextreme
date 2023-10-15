.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9328
/* B9B28 800C9328 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B9B2C 800C932C 1000B0AF */  sw         $s0, 0x10($sp)
/* B9B30 800C9330 21808000 */  addu       $s0, $a0, $zero
/* B9B34 800C9334 1400B1AF */  sw         $s1, 0x14($sp)
/* B9B38 800C9338 2188A000 */  addu       $s1, $a1, $zero
/* B9B3C 800C933C 1800B2AF */  sw         $s2, 0x18($sp)
/* B9B40 800C9340 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B9B44 800C9344 5526030C */  jal        FUN_800c9954
/* B9B48 800C9348 2190C000 */   addu      $s2, $a2, $zero
/* B9B4C 800C934C 2080033C */  lui        $v1, %hi(D_801FB7F0)
/* B9B50 800C9350 0D000524 */  addiu      $a1, $zero, 0xd
/* B9B54 800C9354 F0B76424 */  addiu      $a0, $v1, %lo(D_801FB7F0)
/* B9B58 800C9358 02004018 */  blez       $v0, .L800C9364
/* B9B5C 800C935C F0B762AC */   sw        $v0, -0x4810($v1)
/* B9B60 800C9360 01000524 */  addiu      $a1, $zero, 1
.L800C9364:
/* B9B64 800C9364 FEFF0324 */  addiu      $v1, $zero, -2
/* B9B68 800C9368 0C0083AC */  sw         $v1, 0xc($a0)
/* B9B6C 800C936C 80000324 */  addiu      $v1, $zero, 0x80
/* B9B70 800C9370 040085AC */  sw         $a1, 4($a0)
/* B9B74 800C9374 080080AC */  sw         $zero, 8($a0)
/* B9B78 800C9378 100090AC */  sw         $s0, 0x10($a0)
/* B9B7C 800C937C 140091AC */  sw         $s1, 0x14($a0)
/* B9B80 800C9380 180092AC */  sw         $s2, 0x18($a0)
/* B9B84 800C9384 1C0080A0 */  sb         $zero, 0x1c($a0)
/* B9B88 800C9388 1D0080A0 */  sb         $zero, 0x1d($a0)
/* B9B8C 800C938C 1E0080A0 */  sb         $zero, 0x1e($a0)
/* B9B90 800C9390 1F0080A0 */  sb         $zero, 0x1f($a0)
/* B9B94 800C9394 200080AC */  sw         $zero, 0x20($a0)
/* B9B98 800C9398 240080AC */  sw         $zero, 0x24($a0)
/* B9B9C 800C939C A00083AC */  sw         $v1, 0xa0($a0)
/* B9BA0 800C93A0 A40080AC */  sw         $zero, 0xa4($a0)
/* B9BA4 800C93A4 A80080AC */  sw         $zero, 0xa8($a0)
/* B9BA8 800C93A8 AC0080AC */  sw         $zero, 0xac($a0)
/* B9BAC 800C93AC 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B9BB0 800C93B0 1800B28F */  lw         $s2, 0x18($sp)
/* B9BB4 800C93B4 1400B18F */  lw         $s1, 0x14($sp)
/* B9BB8 800C93B8 1000B08F */  lw         $s0, 0x10($sp)
/* B9BBC 800C93BC 21100000 */  addu       $v0, $zero, $zero
/* B9BC0 800C93C0 0800E003 */  jr         $ra
/* B9BC4 800C93C4 2000BD27 */   addiu     $sp, $sp, 0x20
