.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetReverb
/* A8114 800B7914 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A8118 800B7918 1000B0AF */  sw         $s0, 0x10($sp)
/* A811C 800B791C 21808000 */  addu       $s0, $a0, $zero
/* A8120 800B7920 06000012 */  beqz       $s0, .L800B793C
/* A8124 800B7924 1400BFAF */   sw        $ra, 0x14($sp)
/* A8128 800B7928 01000224 */  addiu      $v0, $zero, 1
/* A812C 800B792C 12000212 */  beq        $s0, $v0, .L800B7978
/* A8130 800B7930 00000000 */   nop
/* A8134 800B7934 79DE0208 */  j          S_SR_OBJ_D0
/* A8138 800B7938 00000000 */   nop
.L800B793C:
/* A813C 800B793C 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A8140 800B7940 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A8144 800B7944 00000000 */  nop
/* A8148 800B7948 AA014494 */  lhu        $a0, 0x1aa($v0)
/* A814C 800B794C 0F80013C */  lui        $at, %hi(D_800EC784)
/* A8150 800B7950 84C720AC */  sw         $zero, %lo(D_800EC784)($at)
/* A8154 800B7954 7FFF8330 */  andi       $v1, $a0, 0xff7f
/* A8158 800B7958 AA0143A4 */  sh         $v1, 0x1aa($v0)
/* A815C 800B795C 840140A4 */  sh         $zero, 0x184($v0)
/* A8160 800B7960 860140A4 */  sh         $zero, 0x186($v0)
/* A8164 800B7964 0F80023C */  lui        $v0, %hi(D_800EC798)
/* A8168 800B7968 98C74224 */  addiu      $v0, $v0, %lo(D_800EC798)
/* A816C 800B796C 000040A4 */  sh         $zero, ($v0)
/* A8170 800B7970 79DE0208 */  j          S_SR_OBJ_D0
/* A8174 800B7974 020040A4 */   sh        $zero, 2($v0)
.L800B7978:
/* A8178 800B7978 0F80023C */  lui        $v0, %hi(D_800EC788)
/* A817C 800B797C 88C7428C */  lw         $v0, %lo(D_800EC788)($v0)
/* A8180 800B7980 00000000 */  nop
/* A8184 800B7984 0F005010 */  beq        $v0, $s0, .L800B79C4
/* A8188 800B7988 00000000 */   nop
/* A818C 800B798C 0F80043C */  lui        $a0, %hi(D_800EC78C)
/* A8190 800B7990 8CC7848C */  lw         $a0, %lo(D_800EC78C)($a0)
/* A8194 800B7994 A1DE020C */  jal        _SpuIsInAllocateArea_
/* A8198 800B7998 00000000 */   nop
/* A819C 800B799C 09004010 */  beqz       $v0, .L800B79C4
/* A81A0 800B79A0 00000000 */   nop
/* A81A4 800B79A4 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A81A8 800B79A8 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A81AC 800B79AC 00000000 */  nop
/* A81B0 800B79B0 AA016494 */  lhu        $a0, 0x1aa($v1)
/* A81B4 800B79B4 0F80013C */  lui        $at, %hi(D_800EC784)
/* A81B8 800B79B8 84C720AC */  sw         $zero, %lo(D_800EC784)($at)
/* A81BC 800B79BC 78DE0208 */  j          S_SR_OBJ_CC
/* A81C0 800B79C0 7FFF8230 */   andi      $v0, $a0, 0xff7f
.L800B79C4:
/* A81C4 800B79C4 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A81C8 800B79C8 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A81CC 800B79CC 00000000 */  nop
/* A81D0 800B79D0 AA016494 */  lhu        $a0, 0x1aa($v1)
/* A81D4 800B79D4 0F80013C */  lui        $at, %hi(D_800EC784)
/* A81D8 800B79D8 84C730AC */  sw         $s0, %lo(D_800EC784)($at)
/* A81DC 800B79DC 80008234 */  ori        $v0, $a0, 0x80
