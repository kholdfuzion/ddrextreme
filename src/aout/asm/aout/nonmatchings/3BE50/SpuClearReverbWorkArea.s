.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuClearReverbWorkArea
/* A9084 800B8884 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* A9088 800B8888 1800B0AF */  sw         $s0, 0x18($sp)
/* A908C 800B888C 21808000 */  addu       $s0, $a0, $zero
/* A9090 800B8890 2C00B5AF */  sw         $s5, 0x2c($sp)
/* A9094 800B8894 0A00022E */  sltiu      $v0, $s0, 0xa
/* A9098 800B8898 3000BFAF */  sw         $ra, 0x30($sp)
/* A909C 800B889C 2800B4AF */  sw         $s4, 0x28($sp)
/* A90A0 800B88A0 2400B3AF */  sw         $s3, 0x24($sp)
/* A90A4 800B88A4 2000B2AF */  sw         $s2, 0x20($sp)
/* A90A8 800B88A8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* A90AC 800B88AC 1000A0AF */  sw         $zero, 0x10($sp)
/* A90B0 800B88B0 0A004010 */  beqz       $v0, .L800B88DC
/* A90B4 800B88B4 21A80000 */   addu      $s5, $zero, $zero
/* A90B8 800B88B8 0F80033C */  lui        $v1, %hi(D_800ECD80)
/* A90BC 800B88BC 80CD6324 */  addiu      $v1, $v1, %lo(D_800ECD80)
/* A90C0 800B88C0 80101000 */  sll        $v0, $s0, 2
/* A90C4 800B88C4 21884300 */  addu       $s1, $v0, $v1
/* A90C8 800B88C8 0000248E */  lw         $a0, ($s1)
/* A90CC 800B88CC A1DE020C */  jal        _SpuIsInAllocateArea_
/* A90D0 800B88D0 00000000 */   nop
/* A90D4 800B88D4 03004010 */  beqz       $v0, .L800B88E4
/* A90D8 800B88D8 00000000 */   nop
.L800B88DC:
/* A90DC 800B88DC 7DE20208 */  j          S_CRWA_OBJ_170
/* A90E0 800B88E0 FFFF0224 */   addiu     $v0, $zero, -1
.L800B88E4:
/* A90E4 800B88E4 08000016 */  bnez       $s0, .L800B8908
/* A90E8 800B88E8 0100023C */   lui       $v0, 1
/* A90EC 800B88EC 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A90F0 800B88F0 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A90F4 800B88F4 10000324 */  addiu      $v1, $zero, 0x10
/* A90F8 800B88F8 04884300 */  sllv       $s1, $v1, $v0
/* A90FC 800B88FC F0FF0334 */  ori        $v1, $zero, 0xfff0
/* A9100 800B8900 48E20208 */  j          S_CRWA_OBJ_9C
/* A9104 800B8904 04904300 */   sllv      $s2, $v1, $v0
.L800B8908:
/* A9108 800B8908 0000248E */  lw         $a0, ($s1)
/* A910C 800B890C 0F80033C */  lui        $v1, %hi(D_800EC818)
/* A9110 800B8910 18C8638C */  lw         $v1, %lo(D_800EC818)($v1)
/* A9114 800B8914 23104400 */  subu       $v0, $v0, $a0
/* A9118 800B8918 04886200 */  sllv       $s1, $v0, $v1
/* A911C 800B891C 04906400 */  sllv       $s2, $a0, $v1
