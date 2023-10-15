.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2c74
/* 93474 800A2C74 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 93478 800A2C78 1800B0AF */  sw         $s0, 0x18($sp)
/* 9347C 800A2C7C 21808000 */  addu       $s0, $a0, $zero
/* 93480 800A2C80 2138A000 */  addu       $a3, $a1, $zero
/* 93484 800A2C84 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 93488 800A2C88 2188C000 */  addu       $s1, $a2, $zero
/* 9348C 800A2C8C FFFFE524 */  addiu      $a1, $a3, -1
/* 93490 800A2C90 3F00A22C */  sltiu      $v0, $a1, 0x3f
/* 93494 800A2C94 09004010 */  beqz       $v0, .L800A2CBC
/* 93498 800A2C98 2000BFAF */   sw        $ra, 0x20($sp)
/* 9349C 800A2C9C 1B80033C */  lui        $v1, %hi(D_801B2B88)
/* 934A0 800A2CA0 882B628C */  lw         $v0, %lo(D_801B2B88)($v1)
/* 934A4 800A2CA4 80200700 */  sll        $a0, $a3, 2
/* 934A8 800A2CA8 21104400 */  addu       $v0, $v0, $a0
/* 934AC 800A2CAC 0400438C */  lw         $v1, 4($v0)
/* 934B0 800A2CB0 00000000 */  nop
/* 934B4 800A2CB4 03006014 */  bnez       $v1, .L800A2CC4
/* 934B8 800A2CB8 1F00A22C */   sltiu     $v0, $a1, 0x1f
.L800A2CBC:
/* 934BC 800A2CBC 8D8B0208 */  j          .L800A2E34
/* 934C0 800A2CC0 21100000 */   addu      $v0, $zero, $zero
.L800A2CC4:
/* 934C4 800A2CC4 1A004010 */  beqz       $v0, .L800A2D30
/* 934C8 800A2CC8 0180023C */   lui       $v0, %hi(D_8001698C)
/* 934CC 800A2CCC 8C694624 */  addiu      $a2, $v0, %lo(D_8001698C)
/* 934D0 800A2CD0 0300C388 */  lwl        $v1, 3($a2)
/* 934D4 800A2CD4 0000C398 */  lwr        $v1, ($a2)
/* 934D8 800A2CD8 0700C488 */  lwl        $a0, 7($a2)
/* 934DC 800A2CDC 0400C498 */  lwr        $a0, 4($a2)
/* 934E0 800A2CE0 0B00C588 */  lwl        $a1, 0xb($a2)
/* 934E4 800A2CE4 0800C598 */  lwr        $a1, 8($a2)
/* 934E8 800A2CE8 030003AA */  swl        $v1, 3($s0)
/* 934EC 800A2CEC 000003BA */  swr        $v1, ($s0)
/* 934F0 800A2CF0 070004AA */  swl        $a0, 7($s0)
/* 934F4 800A2CF4 040004BA */  swr        $a0, 4($s0)
/* 934F8 800A2CF8 0B0005AA */  swl        $a1, 0xb($s0)
/* 934FC 800A2CFC 080005BA */  swr        $a1, 8($s0)
/* 93500 800A2D00 0F00C388 */  lwl        $v1, 0xf($a2)
/* 93504 800A2D04 0C00C398 */  lwr        $v1, 0xc($a2)
/* 93508 800A2D08 00000000 */  nop
/* 9350C 800A2D0C 0F0003AA */  swl        $v1, 0xf($s0)
/* 93510 800A2D10 0C0003BA */  swr        $v1, 0xc($s0)
/* 93514 800A2D14 1000A427 */  addiu      $a0, $sp, 0x10
/* 93518 800A2D18 0180053C */  lui        $a1, %hi(D_8001699C)
/* 9351C 800A2D1C 9C69A524 */  addiu      $a1, $a1, %lo(D_8001699C)
/* 93520 800A2D20 8E81000C */  jal        sprintf
/* 93524 800A2D24 2130E000 */   addu      $a2, $a3, $zero
/* 93528 800A2D28 658B0208 */  j          .L800A2D94
/* 9352C 800A2D2C 21200002 */   addu      $a0, $s0, $zero
.L800A2D30:
/* 93530 800A2D30 0180023C */  lui        $v0, %hi(D_800169A4)
/* 93534 800A2D34 A4694624 */  addiu      $a2, $v0, %lo(D_800169A4)
/* 93538 800A2D38 0300C388 */  lwl        $v1, 3($a2)
/* 9353C 800A2D3C 0000C398 */  lwr        $v1, ($a2)
/* 93540 800A2D40 0700C488 */  lwl        $a0, 7($a2)
/* 93544 800A2D44 0400C498 */  lwr        $a0, 4($a2)
/* 93548 800A2D48 0B00C588 */  lwl        $a1, 0xb($a2)
/* 9354C 800A2D4C 0800C598 */  lwr        $a1, 8($a2)
/* 93550 800A2D50 030003AA */  swl        $v1, 3($s0)
/* 93554 800A2D54 000003BA */  swr        $v1, ($s0)
/* 93558 800A2D58 070004AA */  swl        $a0, 7($s0)
/* 9355C 800A2D5C 040004BA */  swr        $a0, 4($s0)
/* 93560 800A2D60 0B0005AA */  swl        $a1, 0xb($s0)
/* 93564 800A2D64 080005BA */  swr        $a1, 8($s0)
/* 93568 800A2D68 0F00C388 */  lwl        $v1, 0xf($a2)
/* 9356C 800A2D6C 0C00C398 */  lwr        $v1, 0xc($a2)
/* 93570 800A2D70 00000000 */  nop
/* 93574 800A2D74 0F0003AA */  swl        $v1, 0xf($s0)
/* 93578 800A2D78 0C0003BA */  swr        $v1, 0xc($s0)
/* 9357C 800A2D7C 1000A427 */  addiu      $a0, $sp, 0x10
/* 93580 800A2D80 0180053C */  lui        $a1, %hi(D_8001699C)
/* 93584 800A2D84 9C69A524 */  addiu      $a1, $a1, %lo(D_8001699C)
/* 93588 800A2D88 8E81000C */  jal        sprintf
/* 9358C 800A2D8C E1FFE624 */   addiu     $a2, $a3, -0x1f
/* 93590 800A2D90 21200002 */  addu       $a0, $s0, $zero
.L800A2D94:
/* 93594 800A2D94 3F71000C */  jal        FUN_8001c4fc
/* 93598 800A2D98 1000A527 */   addiu     $a1, $sp, 0x10
/* 9359C 800A2D9C 01000324 */  addiu      $v1, $zero, 1
/* 935A0 800A2DA0 13002312 */  beq        $s1, $v1, .L800A2DF0
/* 935A4 800A2DA4 0200222A */   slti      $v0, $s1, 2
/* 935A8 800A2DA8 05004010 */  beqz       $v0, .L800A2DC0
/* 935AC 800A2DAC 02000224 */   addiu     $v0, $zero, 2
/* 935B0 800A2DB0 09002012 */  beqz       $s1, .L800A2DD8
/* 935B4 800A2DB4 21100002 */   addu      $v0, $s0, $zero
/* 935B8 800A2DB8 8D8B0208 */  j          .L800A2E34
/* 935BC 800A2DBC 00000000 */   nop
.L800A2DC0:
/* 935C0 800A2DC0 11002212 */  beq        $s1, $v0, .L800A2E08
/* 935C4 800A2DC4 03000224 */   addiu     $v0, $zero, 3
/* 935C8 800A2DC8 15002212 */  beq        $s1, $v0, .L800A2E20
/* 935CC 800A2DCC 21100002 */   addu      $v0, $s0, $zero
/* 935D0 800A2DD0 8D8B0208 */  j          .L800A2E34
/* 935D4 800A2DD4 00000000 */   nop
.L800A2DD8:
/* 935D8 800A2DD8 21200002 */  addu       $a0, $s0, $zero
/* 935DC 800A2DDC 0180053C */  lui        $a1, %hi(D_800169B4)
/* 935E0 800A2DE0 3F71000C */  jal        FUN_8001c4fc
/* 935E4 800A2DE4 B469A524 */   addiu     $a1, $a1, %lo(D_800169B4)
/* 935E8 800A2DE8 8D8B0208 */  j          .L800A2E34
/* 935EC 800A2DEC 21100002 */   addu      $v0, $s0, $zero
.L800A2DF0:
/* 935F0 800A2DF0 21200002 */  addu       $a0, $s0, $zero
/* 935F4 800A2DF4 0180053C */  lui        $a1, %hi(D_800169BC)
/* 935F8 800A2DF8 3F71000C */  jal        FUN_8001c4fc
/* 935FC 800A2DFC BC69A524 */   addiu     $a1, $a1, %lo(D_800169BC)
/* 93600 800A2E00 8D8B0208 */  j          .L800A2E34
/* 93604 800A2E04 21100002 */   addu      $v0, $s0, $zero
.L800A2E08:
/* 93608 800A2E08 21200002 */  addu       $a0, $s0, $zero
/* 9360C 800A2E0C 0180053C */  lui        $a1, %hi(D_800169C4)
/* 93610 800A2E10 3F71000C */  jal        FUN_8001c4fc
/* 93614 800A2E14 C469A524 */   addiu     $a1, $a1, %lo(D_800169C4)
/* 93618 800A2E18 8D8B0208 */  j          .L800A2E34
/* 9361C 800A2E1C 21100002 */   addu      $v0, $s0, $zero
.L800A2E20:
/* 93620 800A2E20 21200002 */  addu       $a0, $s0, $zero
/* 93624 800A2E24 0180053C */  lui        $a1, %hi(D_800169CC)
/* 93628 800A2E28 3F71000C */  jal        FUN_8001c4fc
/* 9362C 800A2E2C CC69A524 */   addiu     $a1, $a1, %lo(D_800169CC)
/* 93630 800A2E30 21100002 */  addu       $v0, $s0, $zero
.L800A2E34:
/* 93634 800A2E34 2000BF8F */  lw         $ra, 0x20($sp)
/* 93638 800A2E38 1C00B18F */  lw         $s1, 0x1c($sp)
/* 9363C 800A2E3C 1800B08F */  lw         $s0, 0x18($sp)
/* 93640 800A2E40 0800E003 */  jr         $ra
/* 93644 800A2E44 2800BD27 */   addiu     $sp, $sp, 0x28
