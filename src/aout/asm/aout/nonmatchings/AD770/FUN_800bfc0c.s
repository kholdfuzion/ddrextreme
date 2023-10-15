.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bfc0c
/* B040C 800BFC0C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0410 800BFC10 1400BFAF */  sw         $ra, 0x14($sp)
/* B0414 800BFC14 1000B0AF */  sw         $s0, 0x10($sp)
/* B0418 800BFC18 FF009030 */  andi       $s0, $a0, 0xff
/* B041C 800BFC1C 641F033C */  lui        $v1, 0x1f64
/* B0420 800BFC20 AC006334 */  ori        $v1, $v1, 0xac
/* B0424 800BFC24 00131000 */  sll        $v0, $s0, 0xc
/* B0428 800BFC28 000062A4 */  sh         $v0, ($v1)
/* B042C 800BFC2C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0430 800BFC30 30570324 */  addiu      $v1, $zero, 0x5730
/* B0434 800BFC34 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0438 800BFC38 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B043C 800BFC3C 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0440 800BFC40 641F033C */  lui        $v1, 0x1f64
/* B0444 800BFC44 AC006334 */  ori        $v1, $v1, 0xac
/* B0448 800BFC48 00131000 */  sll        $v0, $s0, 0xc
/* B044C 800BFC4C 00204234 */  ori        $v0, $v0, 0x2000
/* B0450 800BFC50 000062A4 */  sh         $v0, ($v1)
/* B0454 800BFC54 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0458 800BFC58 30570324 */  addiu      $v1, $zero, 0x5730
/* B045C 800BFC5C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0460 800BFC60 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0464 800BFC64 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
.L800BFC68:
/* B0468 800BFC68 F4FD020C */  jal        FUN_800bf7d0
/* B046C 800BFC6C 00000000 */   nop
/* B0470 800BFC70 FDFF4010 */  beqz       $v0, .L800BFC68
/* B0474 800BFC74 641F033C */   lui       $v1, 0x1f64
/* B0478 800BFC78 AC006334 */  ori        $v1, $v1, 0xac
/* B047C 800BFC7C 00131000 */  sll        $v0, $s0, 0xc
/* B0480 800BFC80 00204234 */  ori        $v0, $v0, 0x2000
/* B0484 800BFC84 000062A4 */  sh         $v0, ($v1)
/* B0488 800BFC88 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B048C 800BFC8C 30570324 */  addiu      $v1, $zero, 0x5730
/* B0490 800BFC90 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0494 800BFC94 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0498 800BFC98 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B049C 800BFC9C 641F033C */  lui        $v1, 0x1f64
/* B04A0 800BFCA0 AC006334 */  ori        $v1, $v1, 0xac
/* B04A4 800BFCA4 00131000 */  sll        $v0, $s0, 0xc
/* B04A8 800BFCA8 00204234 */  ori        $v0, $v0, 0x2000
/* B04AC 800BFCAC 000062A4 */  sh         $v0, ($v1)
/* B04B0 800BFCB0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B04B4 800BFCB4 30570324 */  addiu      $v1, $zero, 0x5730
/* B04B8 800BFCB8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B04BC 800BFCBC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B04C0 800BFCC0 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B04C4 800BFCC4 641F033C */  lui        $v1, 0x1f64
/* B04C8 800BFCC8 AC006334 */  ori        $v1, $v1, 0xac
/* B04CC 800BFCCC 00131000 */  sll        $v0, $s0, 0xc
/* B04D0 800BFCD0 00204234 */  ori        $v0, $v0, 0x2000
/* B04D4 800BFCD4 000062A4 */  sh         $v0, ($v1)
/* B04D8 800BFCD8 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B04DC 800BFCDC 30570324 */  addiu      $v1, $zero, 0x5730
/* B04E0 800BFCE0 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B04E4 800BFCE4 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B04E8 800BFCE8 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B04EC 800BFCEC 641F033C */  lui        $v1, 0x1f64
/* B04F0 800BFCF0 AC006334 */  ori        $v1, $v1, 0xac
/* B04F4 800BFCF4 00131000 */  sll        $v0, $s0, 0xc
/* B04F8 800BFCF8 000062A4 */  sh         $v0, ($v1)
/* B04FC 800BFCFC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0500 800BFD00 30570324 */  addiu      $v1, $zero, 0x5730
/* B0504 800BFD04 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0508 800BFD08 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B050C 800BFD0C 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0510 800BFD10 641F033C */  lui        $v1, 0x1f64
/* B0514 800BFD14 AC006334 */  ori        $v1, $v1, 0xac
/* B0518 800BFD18 00100224 */  addiu      $v0, $zero, 0x1000
/* B051C 800BFD1C 000062A4 */  sh         $v0, ($v1)
/* B0520 800BFD20 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0524 800BFD24 30570324 */  addiu      $v1, $zero, 0x5730
/* B0528 800BFD28 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B052C 800BFD2C 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0530 800BFD30 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0534 800BFD34 641F033C */  lui        $v1, 0x1f64
/* B0538 800BFD38 AC006334 */  ori        $v1, $v1, 0xac
/* B053C 800BFD3C 00100224 */  addiu      $v0, $zero, 0x1000
/* B0540 800BFD40 000062A4 */  sh         $v0, ($v1)
/* B0544 800BFD44 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0548 800BFD48 30570324 */  addiu      $v1, $zero, 0x5730
/* B054C 800BFD4C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0550 800BFD50 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0554 800BFD54 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0558 800BFD58 1400BF8F */  lw         $ra, 0x14($sp)
/* B055C 800BFD5C 1000B08F */  lw         $s0, 0x10($sp)
/* B0560 800BFD60 0800E003 */  jr         $ra
/* B0564 800BFD64 1800BD27 */   addiu     $sp, $sp, 0x18
