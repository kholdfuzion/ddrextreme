.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SVA_OBJ_1A0
/* A9874 800B9074 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9878 800B9078 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A987C 800B907C 40181300 */  sll        $v1, $s3, 1
/* A9880 800B9080 21186200 */  addu       $v1, $v1, $v0
/* A9884 800B9084 2510A400 */  or         $v0, $a1, $a0
/* A9888 800B9088 000062A4 */  sh         $v0, ($v1)
.L800B908C:
/* A988C 800B908C 03004016 */  bnez       $s2, .L800B909C
/* A9890 800B9090 02002232 */   andi      $v0, $s1, 2
/* A9894 800B9094 35004010 */  beqz       $v0, .L800B916C
/* A9898 800B9098 00000000 */   nop
.L800B909C:
/* A989C 800B909C 0A000296 */  lhu        $v0, 0xa($s0)
/* A98A0 800B90A0 21200000 */  addu       $a0, $zero, $zero
/* A98A4 800B90A4 04004016 */  bnez       $s2, .L800B90B8
/* A98A8 800B90A8 FF7F4530 */   andi      $a1, $v0, 0x7fff
/* A98AC 800B90AC 08002232 */  andi       $v0, $s1, 8
/* A98B0 800B90B0 1C004010 */  beqz       $v0, S_SVA_OBJ_250
/* A98B4 800B90B4 00000000 */   nop
.L800B90B8:
/* A98B8 800B90B8 0E000296 */  lhu        $v0, 0xe($s0)
/* A98BC 800B90BC 00000000 */  nop
/* A98C0 800B90C0 FFFF4224 */  addiu      $v0, $v0, -1
/* A98C4 800B90C4 00140200 */  sll        $v0, $v0, 0x10
/* A98C8 800B90C8 031C0200 */  sra        $v1, $v0, 0x10
/* A98CC 800B90CC 0700622C */  sltiu      $v0, $v1, 7
/* A98D0 800B90D0 14004010 */  beqz       $v0, S_SVA_OBJ_250
/* A98D4 800B90D4 80100300 */   sll       $v0, $v1, 2
/* A98D8 800B90D8 0180013C */  lui        $at, %hi(D_80017380)
/* A98DC 800B90DC 21082200 */  addu       $at, $at, $v0
/* A98E0 800B90E0 8073228C */  lw         $v0, %lo(D_80017380)($at)
/* A98E4 800B90E4 00000000 */  nop
/* A98E8 800B90E8 08004000 */  jr         $v0
/* A98EC 800B90EC 00000000 */   nop
