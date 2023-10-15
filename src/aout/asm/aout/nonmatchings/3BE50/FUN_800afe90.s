.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800afe90
/* A0690 800AFE90 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A0694 800AFE94 2000BFAF */  sw         $ra, 0x20($sp)
/* A0698 800AFE98 FFFF8630 */  andi       $a2, $a0, 0xffff
/* A069C 800AFE9C 21180000 */  addu       $v1, $zero, $zero
/* A06A0 800AFEA0 FEFF0534 */  ori        $a1, $zero, 0xfffe
/* A06A4 800AFEA4 1D80073C */  lui        $a3, %hi(D_801CC948)
/* A06A8 800AFEA8 48C9E224 */  addiu      $v0, $a3, %lo(D_801CC948)
/* A06AC 800AFEAC 05004424 */  addiu      $a0, $v0, 5
.L800AFEB0:
/* A06B0 800AFEB0 00008290 */  lbu        $v0, ($a0)
/* A06B4 800AFEB4 00000000 */  nop
/* A06B8 800AFEB8 06004010 */  beqz       $v0, .L800AFED4
/* A06BC 800AFEBC 21106000 */   addu      $v0, $v1, $zero
/* A06C0 800AFEC0 01006324 */  addiu      $v1, $v1, 1
/* A06C4 800AFEC4 2A10A300 */  slt        $v0, $a1, $v1
/* A06C8 800AFEC8 F9FF4010 */  beqz       $v0, .L800AFEB0
/* A06CC 800AFECC 18008424 */   addiu     $a0, $a0, 0x18
/* A06D0 800AFED0 21100000 */  addu       $v0, $zero, $zero
.L800AFED4:
/* A06D4 800AFED4 2A10C200 */  slt        $v0, $a2, $v0
/* A06D8 800AFED8 05004014 */  bnez       $v0, .L800AFEF0
/* A06DC 800AFEDC 21280000 */   addu      $a1, $zero, $zero
/* A06E0 800AFEE0 04C00208 */  j          .L800B0010
/* A06E4 800AFEE4 FFFF0224 */   addiu     $v0, $zero, -1
.L800AFEE8:
/* A06E8 800AFEE8 C8BF0208 */  j          .L800AFF20
/* A06EC 800AFEEC 21108000 */   addu      $v0, $a0, $zero
.L800AFEF0:
/* A06F0 800AFEF0 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A06F4 800AFEF4 B8104324 */  addiu      $v1, $v0, %lo(D_801D10B8)
/* A06F8 800AFEF8 21206000 */  addu       $a0, $v1, $zero
.L800AFEFC:
/* A06FC 800AFEFC 00006294 */  lhu        $v0, ($v1)
/* A0700 800AFF00 00000000 */  nop
/* A0704 800AFF04 F8FF4610 */  beq        $v0, $a2, .L800AFEE8
/* A0708 800AFF08 10006324 */   addiu     $v1, $v1, 0x10
/* A070C 800AFF0C 0100A524 */  addiu      $a1, $a1, 1
/* A0710 800AFF10 2C01A228 */  slti       $v0, $a1, 0x12c
/* A0714 800AFF14 F9FF4014 */  bnez       $v0, .L800AFEFC
/* A0718 800AFF18 10008424 */   addiu     $a0, $a0, 0x10
/* A071C 800AFF1C 21100000 */  addu       $v0, $zero, $zero
.L800AFF20:
/* A0720 800AFF20 02004010 */  beqz       $v0, .L800AFF2C
/* A0724 800AFF24 21180000 */   addu      $v1, $zero, $zero
/* A0728 800AFF28 07004390 */  lbu        $v1, 7($v0)
.L800AFF2C:
/* A072C 800AFF2C 00000000 */  nop
/* A0730 800AFF30 37006014 */  bnez       $v1, .L800B0010
/* A0734 800AFF34 21100000 */   addu      $v0, $zero, $zero
/* A0738 800AFF38 1D80023C */  lui        $v0, %hi(D_801D0072)
/* A073C 800AFF3C 72004494 */  lhu        $a0, %lo(D_801D0072)($v0)
/* A0740 800AFF40 FFFF0334 */  ori        $v1, $zero, 0xffff
/* A0744 800AFF44 32008314 */  bne        $a0, $v1, .L800B0010
/* A0748 800AFF48 01000224 */   addiu     $v0, $zero, 1
/* A074C 800AFF4C 48C9E424 */  addiu      $a0, $a3, -0x36b8
/* A0750 800AFF50 40100600 */  sll        $v0, $a2, 1
/* A0754 800AFF54 21104600 */  addu       $v0, $v0, $a2
/* A0758 800AFF58 C0100200 */  sll        $v0, $v0, 3
/* A075C 800AFF5C 21288200 */  addu       $a1, $a0, $v0
/* A0760 800AFF60 2120A000 */  addu       $a0, $a1, $zero
/* A0764 800AFF64 1D80033C */  lui        $v1, %hi(D_801D10B0)
/* A0768 800AFF68 B0106724 */  addiu      $a3, $v1, %lo(D_801D10B0)
/* A076C 800AFF6C 1000A28C */  lw         $v0, 0x10($a1)
/* A0770 800AFF70 1400848C */  lw         $a0, 0x14($a0)
/* A0774 800AFF74 0400E58C */  lw         $a1, 4($a3)
/* A0778 800AFF78 00000000 */  nop
/* A077C 800AFF7C 2118A400 */  addu       $v1, $a1, $a0
/* A0780 800AFF80 01006324 */  addiu      $v1, $v1, 1
/* A0784 800AFF84 1800A2AF */  sw         $v0, 0x18($sp)
/* A0788 800AFF88 3001023C */  lui        $v0, 0x130
/* A078C 800AFF8C 2B104300 */  sltu       $v0, $v0, $v1
/* A0790 800AFF90 03004010 */  beqz       $v0, .L800AFFA0
/* A0794 800AFF94 1C00A4AF */   sw        $a0, 0x1c($sp)
/* A0798 800AFF98 EEBF0208 */  j          .L800AFFB8
/* A079C 800AFF9C 21180000 */   addu      $v1, $zero, $zero
.L800AFFA0:
/* A07A0 800AFFA0 01008224 */  addiu      $v0, $a0, 1
/* A07A4 800AFFA4 FEFF0324 */  addiu      $v1, $zero, -2
/* A07A8 800AFFA8 24104300 */  and        $v0, $v0, $v1
/* A07AC 800AFFAC 2110A200 */  addu       $v0, $a1, $v0
/* A07B0 800AFFB0 0400E2AC */  sw         $v0, 4($a3)
/* A07B4 800AFFB4 2118A000 */  addu       $v1, $a1, $zero
.L800AFFB8:
/* A07B8 800AFFB8 14006010 */  beqz       $v1, .L800B000C
/* A07BC 800AFFBC FFFF0834 */   ori       $t0, $zero, 0xffff
/* A07C0 800AFFC0 21380000 */  addu       $a3, $zero, $zero
/* A07C4 800AFFC4 1D80023C */  lui        $v0, %hi(D_801D10B8)
/* A07C8 800AFFC8 B8104524 */  addiu      $a1, $v0, %lo(D_801D10B8)
/* A07CC 800AFFCC 2120A000 */  addu       $a0, $a1, $zero
.L800AFFD0:
/* A07D0 800AFFD0 0000A294 */  lhu        $v0, ($a1)
/* A07D4 800AFFD4 00000000 */  nop
/* A07D8 800AFFD8 06004810 */  beq        $v0, $t0, .L800AFFF4
/* A07DC 800AFFDC 1000A524 */   addiu     $a1, $a1, 0x10
/* A07E0 800AFFE0 0100E724 */  addiu      $a3, $a3, 1
/* A07E4 800AFFE4 2C01E228 */  slti       $v0, $a3, 0x12c
/* A07E8 800AFFE8 F9FF4014 */  bnez       $v0, .L800AFFD0
/* A07EC 800AFFEC 10008424 */   addiu     $a0, $a0, 0x10
/* A07F0 800AFFF0 21200000 */  addu       $a0, $zero, $zero
.L800AFFF4:
/* A07F4 800AFFF4 1000A3AF */  sw         $v1, 0x10($sp)
/* A07F8 800AFFF8 1800A527 */  addiu      $a1, $sp, 0x18
/* A07FC 800AFFFC 73BF020C */  jal        FUN_800afdcc
/* A0800 800B0000 21380000 */   addu      $a3, $zero, $zero
/* A0804 800B0004 04C00208 */  j          .L800B0010
/* A0808 800B0008 00000000 */   nop
.L800B000C:
/* A080C 800B000C FFFF0224 */  addiu      $v0, $zero, -1
.L800B0010:
/* A0810 800B0010 2000BF8F */  lw         $ra, 0x20($sp)
/* A0814 800B0014 00000000 */  nop
/* A0818 800B0018 0800E003 */  jr         $ra
/* A081C 800B001C 2800BD27 */   addiu     $sp, $sp, 0x28
