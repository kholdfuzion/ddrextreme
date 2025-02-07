.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_13C0
/* 9BA4 800193A4 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9BA8 800193A8 1800B0AF */  sw         $s0, 0x18($sp)
/* 9BAC 800193AC 2180A000 */  addu       $s0, $a1, $zero
/* 9BB0 800193B0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 9BB4 800193B4 21888000 */  addu       $s1, $a0, $zero
/* 9BB8 800193B8 2000BFAF */  sw         $ra, 0x20($sp)
/* 9BBC 800193BC 00000486 */  lh         $a0, ($s0)
/* 9BC0 800193C0 02000586 */  lh         $a1, 2($s0)
/* 9BC4 800193C4 8D65000C */  jal        SYS_OBJ_1650
/* 9BC8 800193C8 00000000 */   nop
/* 9BCC 800193CC 040022AE */  sw         $v0, 4($s1)
/* 9BD0 800193D0 04000496 */  lhu        $a0, 4($s0)
/* 9BD4 800193D4 00000296 */  lhu        $v0, ($s0)
/* 9BD8 800193D8 02000596 */  lhu        $a1, 2($s0)
/* 9BDC 800193DC 21208200 */  addu       $a0, $a0, $v0
/* 9BE0 800193E0 FFFF8424 */  addiu      $a0, $a0, -1
/* 9BE4 800193E4 00240400 */  sll        $a0, $a0, 0x10
/* 9BE8 800193E8 06000296 */  lhu        $v0, 6($s0)
/* 9BEC 800193EC 03240400 */  sra        $a0, $a0, 0x10
/* 9BF0 800193F0 2128A200 */  addu       $a1, $a1, $v0
/* 9BF4 800193F4 FFFFA524 */  addiu      $a1, $a1, -1
/* 9BF8 800193F8 002C0500 */  sll        $a1, $a1, 0x10
/* 9BFC 800193FC B365000C */  jal        SYS_OBJ_16E8
/* 9C00 80019400 032C0500 */   sra       $a1, $a1, 0x10
/* 9C04 80019404 080022AE */  sw         $v0, 8($s1)
/* 9C08 80019408 08000486 */  lh         $a0, 8($s0)
/* 9C0C 8001940C 0A000586 */  lh         $a1, 0xa($s0)
/* 9C10 80019410 D965000C */  jal        SYS_OBJ_1780
/* 9C14 80019414 00000000 */   nop
/* 9C18 80019418 0C0022AE */  sw         $v0, 0xc($s1)
/* 9C1C 8001941C 17000492 */  lbu        $a0, 0x17($s0)
/* 9C20 80019420 16000592 */  lbu        $a1, 0x16($s0)
/* 9C24 80019424 14000696 */  lhu        $a2, 0x14($s0)
/* 9C28 80019428 8565000C */  jal        SYS_OBJ_1630
/* 9C2C 8001942C 00000000 */   nop
/* 9C30 80019430 0C000426 */  addiu      $a0, $s0, 0xc
/* 9C34 80019434 E065000C */  jal        SYS_OBJ_179C
/* 9C38 80019438 100022AE */   sw        $v0, 0x10($s1)
/* 9C3C 8001943C 140022AE */  sw         $v0, 0x14($s1)
/* 9C40 80019440 00E6023C */  lui        $v0, 0xe600
/* 9C44 80019444 180022AE */  sw         $v0, 0x18($s1)
/* 9C48 80019448 18000292 */  lbu        $v0, 0x18($s0)
/* 9C4C 8001944C 00000000 */  nop
/* 9C50 80019450 69004010 */  beqz       $v0, SYS_OBJ_1614
/* 9C54 80019454 07000824 */   addiu     $t0, $zero, 7
/* 9C58 80019458 00000296 */  lhu        $v0, ($s0)
/* 9C5C 8001945C 00000000 */  nop
/* 9C60 80019460 1000A2A7 */  sh         $v0, 0x10($sp)
/* 9C64 80019464 02000296 */  lhu        $v0, 2($s0)
/* 9C68 80019468 00000000 */  nop
/* 9C6C 8001946C 1200A2A7 */  sh         $v0, 0x12($sp)
/* 9C70 80019470 04000496 */  lhu        $a0, 4($s0)
/* 9C74 80019474 00000000 */  nop
/* 9C78 80019478 1400A4A7 */  sh         $a0, 0x14($sp)
/* 9C7C 8001947C 06000296 */  lhu        $v0, 6($s0)
/* 9C80 80019480 00000000 */  nop
/* 9C84 80019484 1600A2A7 */  sh         $v0, 0x16($sp)
/* 9C88 80019488 00140400 */  sll        $v0, $a0, 0x10
/* 9C8C 8001948C 031C0200 */  sra        $v1, $v0, 0x10
/* 9C90 80019490 0B006004 */  bltz       $v1, .L800194C0
/* 9C94 80019494 21100000 */   addu      $v0, $zero, $zero
/* 9C98 80019498 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* 9C9C 8001949C 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* 9CA0 800194A0 00000000 */  nop
/* 9CA4 800194A4 FFFF4224 */  addiu      $v0, $v0, -1
/* 9CA8 800194A8 2A104300 */  slt        $v0, $v0, $v1
/* 9CAC 800194AC 0D80033C */  lui        $v1, %hi(D_800D2B9C)
/* 9CB0 800194B0 9C2B6394 */  lhu        $v1, %lo(D_800D2B9C)($v1)
/* 9CB4 800194B4 02004014 */  bnez       $v0, .L800194C0
/* 9CB8 800194B8 FFFF6224 */   addiu     $v0, $v1, -1
/* 9CBC 800194BC 21108000 */  addu       $v0, $a0, $zero
.L800194C0:
/* 9CC0 800194C0 1600A387 */  lh         $v1, 0x16($sp)
/* 9CC4 800194C4 1600A497 */  lhu        $a0, 0x16($sp)
/* 9CC8 800194C8 0C006004 */  bltz       $v1, .L800194FC
/* 9CCC 800194CC 1400A2A7 */   sh        $v0, 0x14($sp)
/* 9CD0 800194D0 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* 9CD4 800194D4 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* 9CD8 800194D8 00000000 */  nop
/* 9CDC 800194DC FFFF4224 */  addiu      $v0, $v0, -1
/* 9CE0 800194E0 2A104300 */  slt        $v0, $v0, $v1
/* 9CE4 800194E4 0D80033C */  lui        $v1, %hi(D_800D2B9E)
/* 9CE8 800194E8 9E2B6394 */  lhu        $v1, %lo(D_800D2B9E)($v1)
/* 9CEC 800194EC 04004014 */  bnez       $v0, SYS_OBJ_151C
/* 9CF0 800194F0 FFFF6224 */   addiu     $v0, $v1, -1
/* 9CF4 800194F4 40650008 */  j          SYS_OBJ_151C
/* 9CF8 800194F8 21108000 */   addu      $v0, $a0, $zero
.L800194FC:
/* 9CFC 800194FC 21100000 */  addu       $v0, $zero, $zero
