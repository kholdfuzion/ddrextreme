.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _SpuInit
/* A7354 800B6B54 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7358 800B6B58 1000B0AF */  sw         $s0, 0x10($sp)
/* A735C 800B6B5C 1400BFAF */  sw         $ra, 0x14($sp)
/* A7360 800B6B60 596C000C */  jal        ResetCallback
/* A7364 800B6B64 21808000 */   addu      $s0, $a0, $zero
/* A7368 800B6B68 2DDB020C */  jal        _spu_init
/* A736C 800B6B6C 21200002 */   addu      $a0, $s0, $zero
/* A7370 800B6B70 08000016 */  bnez       $s0, .L800B6B94
/* A7374 800B6B74 00C00434 */   ori       $a0, $zero, 0xc000
/* A7378 800B6B78 17000324 */  addiu      $v1, $zero, 0x17
/* A737C 800B6B7C 0F80023C */  lui        $v0, %hi(D_800EC7DA)
/* A7380 800B6B80 DAC74224 */  addiu      $v0, $v0, %lo(D_800EC7DA)
.L800B6B84:
/* A7384 800B6B84 000044A4 */  sh         $a0, ($v0)
/* A7388 800B6B88 FFFF6324 */  addiu      $v1, $v1, -1
/* A738C 800B6B8C FDFF6104 */  bgez       $v1, .L800B6B84
/* A7390 800B6B90 FEFF4224 */   addiu     $v0, $v0, -2
.L800B6B94:
/* A7394 800B6B94 0FDB020C */  jal        SpuStart
/* A7398 800B6B98 00000000 */   nop
/* A739C 800B6B9C D1000424 */  addiu      $a0, $zero, 0xd1
/* A73A0 800B6BA0 0F80023C */  lui        $v0, %hi(D_800EC794)
/* A73A4 800B6BA4 94C74224 */  addiu      $v0, $v0, %lo(D_800EC794)
/* A73A8 800B6BA8 0F80053C */  lui        $a1, %hi(D_800ECD80)
/* A73AC 800B6BAC 80CDA58C */  lw         $a1, %lo(D_800ECD80)($a1)
/* A73B0 800B6BB0 0F80013C */  lui        $at, %hi(D_800EC784)
/* A73B4 800B6BB4 84C720AC */  sw         $zero, %lo(D_800EC784)($at)
/* A73B8 800B6BB8 0F80013C */  lui        $at, %hi(D_800EC788)
/* A73BC 800B6BBC 88C720AC */  sw         $zero, %lo(D_800EC788)($at)
/* A73C0 800B6BC0 000040AC */  sw         $zero, ($v0)
/* A73C4 800B6BC4 040040A4 */  sh         $zero, 4($v0)
/* A73C8 800B6BC8 060040A4 */  sh         $zero, 6($v0)
/* A73CC 800B6BCC 080040AC */  sw         $zero, 8($v0)
/* A73D0 800B6BD0 0C0040AC */  sw         $zero, 0xc($v0)
/* A73D4 800B6BD4 0F80013C */  lui        $at, %hi(D_800EC78C)
/* A73D8 800B6BD8 8CC725AC */  sw         $a1, %lo(D_800EC78C)($at)
/* A73DC 800B6BDC 70DD020C */  jal        _spu_FsetRXX
/* A73E0 800B6BE0 21300000 */   addu      $a2, $zero, $zero
/* A73E4 800B6BE4 0F80013C */  lui        $at, %hi(D_800EC850)
/* A73E8 800B6BE8 50C820AC */  sw         $zero, %lo(D_800EC850)($at)
/* A73EC 800B6BEC 0F80013C */  lui        $at, %hi(D_800EC854)
/* A73F0 800B6BF0 54C820AC */  sw         $zero, %lo(D_800EC854)($at)
/* A73F4 800B6BF4 0F80013C */  lui        $at, %hi(D_800EC858)
/* A73F8 800B6BF8 58C820AC */  sw         $zero, %lo(D_800EC858)($at)
/* A73FC 800B6BFC 0F80013C */  lui        $at, %hi(D_800EC780)
/* A7400 800B6C00 80C720AC */  sw         $zero, %lo(D_800EC780)($at)
/* A7404 800B6C04 0F80013C */  lui        $at, %hi(D_800EC80C)
/* A7408 800B6C08 0CC820AC */  sw         $zero, %lo(D_800EC80C)($at)
/* A740C 800B6C0C 0F80013C */  lui        $at, %hi(D_800EC77C)
/* A7410 800B6C10 7CC720AC */  sw         $zero, %lo(D_800EC77C)($at)
/* A7414 800B6C14 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A7418 800B6C18 A8C720AC */  sw         $zero, %lo(D_800EC7A8)($at)
/* A741C 800B6C1C 0F80013C */  lui        $at, %hi(D_800EC7A4)
/* A7420 800B6C20 A4C720AC */  sw         $zero, %lo(D_800EC7A4)($at)
/* A7424 800B6C24 0F80013C */  lui        $at, %hi(D_800EC7DC)
/* A7428 800B6C28 DCC720AC */  sw         $zero, %lo(D_800EC7DC)($at)
/* A742C 800B6C2C 1400BF8F */  lw         $ra, 0x14($sp)
/* A7430 800B6C30 1000B08F */  lw         $s0, 0x10($sp)
/* A7434 800B6C34 0800E003 */  jr         $ra
/* A7438 800B6C38 1800BD27 */   addiu     $sp, $sp, 0x18
