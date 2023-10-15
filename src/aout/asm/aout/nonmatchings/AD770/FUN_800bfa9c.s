.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bfa9c
/* B029C 800BFA9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B02A0 800BFAA0 1000BFAF */  sw         $ra, 0x10($sp)
/* B02A4 800BFAA4 641F023C */  lui        $v0, 0x1f64
/* B02A8 800BFAA8 AC004234 */  ori        $v0, $v0, 0xac
/* B02AC 800BFAAC 000040A4 */  sh         $zero, ($v0)
/* B02B0 800BFAB0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B02B4 800BFAB4 30570324 */  addiu      $v1, $zero, 0x5730
/* B02B8 800BFAB8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B02BC 800BFABC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B02C0 800BFAC0 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B02C4 800BFAC4 641F023C */  lui        $v0, 0x1f64
/* B02C8 800BFAC8 AC004234 */  ori        $v0, $v0, 0xac
/* B02CC 800BFACC 000040A4 */  sh         $zero, ($v0)
/* B02D0 800BFAD0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B02D4 800BFAD4 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B02D8 800BFAD8 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B02DC 800BFADC 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B02E0 800BFAE0 641F023C */  lui        $v0, 0x1f64
/* B02E4 800BFAE4 AC004234 */  ori        $v0, $v0, 0xac
/* B02E8 800BFAE8 000040A4 */  sh         $zero, ($v0)
/* B02EC 800BFAEC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B02F0 800BFAF0 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B02F4 800BFAF4 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B02F8 800BFAF8 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B02FC 800BFAFC 641F023C */  lui        $v0, 0x1f64
/* B0300 800BFB00 AC004234 */  ori        $v0, $v0, 0xac
/* B0304 800BFB04 000040A4 */  sh         $zero, ($v0)
/* B0308 800BFB08 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B030C 800BFB0C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0310 800BFB10 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0314 800BFB14 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0318 800BFB18 641F033C */  lui        $v1, 0x1f64
/* B031C 800BFB1C AC006334 */  ori        $v1, $v1, 0xac
/* B0320 800BFB20 00200224 */  addiu      $v0, $zero, 0x2000
/* B0324 800BFB24 000062A4 */  sh         $v0, ($v1)
/* B0328 800BFB28 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B032C 800BFB2C 30570324 */  addiu      $v1, $zero, 0x5730
/* B0330 800BFB30 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0334 800BFB34 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0338 800BFB38 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
.L800BFB3C:
/* B033C 800BFB3C F4FD020C */  jal        FUN_800bf7d0
/* B0340 800BFB40 00000000 */   nop
/* B0344 800BFB44 FDFF4010 */  beqz       $v0, .L800BFB3C
/* B0348 800BFB48 641F033C */   lui       $v1, 0x1f64
/* B034C 800BFB4C AC006334 */  ori        $v1, $v1, 0xac
/* B0350 800BFB50 00200224 */  addiu      $v0, $zero, 0x2000
/* B0354 800BFB54 000062A4 */  sh         $v0, ($v1)
/* B0358 800BFB58 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B035C 800BFB5C 30570324 */  addiu      $v1, $zero, 0x5730
/* B0360 800BFB60 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0364 800BFB64 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0368 800BFB68 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B036C 800BFB6C 641F033C */  lui        $v1, 0x1f64
/* B0370 800BFB70 AC006334 */  ori        $v1, $v1, 0xac
/* B0374 800BFB74 00300224 */  addiu      $v0, $zero, 0x3000
/* B0378 800BFB78 000062A4 */  sh         $v0, ($v1)
/* B037C 800BFB7C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0380 800BFB80 30570324 */  addiu      $v1, $zero, 0x5730
/* B0384 800BFB84 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0388 800BFB88 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B038C 800BFB8C 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0390 800BFB90 641F033C */  lui        $v1, 0x1f64
/* B0394 800BFB94 AC006334 */  ori        $v1, $v1, 0xac
/* B0398 800BFB98 00300224 */  addiu      $v0, $zero, 0x3000
/* B039C 800BFB9C 000062A4 */  sh         $v0, ($v1)
/* B03A0 800BFBA0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B03A4 800BFBA4 30570324 */  addiu      $v1, $zero, 0x5730
/* B03A8 800BFBA8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B03AC 800BFBAC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B03B0 800BFBB0 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B03B4 800BFBB4 641F033C */  lui        $v1, 0x1f64
/* B03B8 800BFBB8 AC006334 */  ori        $v1, $v1, 0xac
/* B03BC 800BFBBC 00300224 */  addiu      $v0, $zero, 0x3000
/* B03C0 800BFBC0 000062A4 */  sh         $v0, ($v1)
/* B03C4 800BFBC4 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B03C8 800BFBC8 30570324 */  addiu      $v1, $zero, 0x5730
/* B03CC 800BFBCC 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B03D0 800BFBD0 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B03D4 800BFBD4 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B03D8 800BFBD8 641F033C */  lui        $v1, 0x1f64
/* B03DC 800BFBDC AC006334 */  ori        $v1, $v1, 0xac
/* B03E0 800BFBE0 00300224 */  addiu      $v0, $zero, 0x3000
/* B03E4 800BFBE4 000062A4 */  sh         $v0, ($v1)
/* B03E8 800BFBE8 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B03EC 800BFBEC 30570324 */  addiu      $v1, $zero, 0x5730
/* B03F0 800BFBF0 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B03F4 800BFBF4 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B03F8 800BFBF8 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B03FC 800BFBFC 1000BF8F */  lw         $ra, 0x10($sp)
/* B0400 800BFC00 00000000 */  nop
/* B0404 800BFC04 0800E003 */  jr         $ra
/* B0408 800BFC08 1800BD27 */   addiu     $sp, $sp, 0x18
