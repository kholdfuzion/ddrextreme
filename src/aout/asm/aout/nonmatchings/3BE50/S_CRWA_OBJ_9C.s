.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_CRWA_OBJ_9C
/* A9120 800B8920 0F80143C */  lui        $s4, %hi(D_800EC80C)
/* A9124 800B8924 0CC8948E */  lw         $s4, %lo(D_800EC80C)($s4)
/* A9128 800B8928 01000224 */  addiu      $v0, $zero, 1
/* A912C 800B892C 04008216 */  bne        $s4, $v0, .L800B8940
/* A9130 800B8930 00000000 */   nop
/* A9134 800B8934 0F80013C */  lui        $at, %hi(D_800EC80C)
/* A9138 800B8938 0CC820AC */  sw         $zero, %lo(D_800EC80C)($at)
/* A913C 800B893C 01001524 */  addiu      $s5, $zero, 1
.L800B8940:
/* A9140 800B8940 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A9144 800B8944 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A9148 800B8948 00000000 */  nop
/* A914C 800B894C 07004010 */  beqz       $v0, .L800B896C
/* A9150 800B8950 01001324 */   addiu     $s3, $zero, 1
/* A9154 800B8954 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A9158 800B8958 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A915C 800B895C 00000000 */  nop
/* A9160 800B8960 1000A2AF */  sw         $v0, 0x10($sp)
/* A9164 800B8964 0F80013C */  lui        $at, %hi(D_800EC828)
/* A9168 800B8968 28C820AC */  sw         $zero, %lo(D_800EC828)($at)
.L800B896C:
/* A916C 800B896C 0104222E */  sltiu      $v0, $s1, 0x401
.L800B8970:
/* A9170 800B8970 03004010 */  beqz       $v0, .L800B8980
/* A9174 800B8974 00041024 */   addiu     $s0, $zero, 0x400
/* A9178 800B8978 21802002 */  addu       $s0, $s1, $zero
/* A917C 800B897C 21980000 */  addu       $s3, $zero, $zero
.L800B8980:
/* A9180 800B8980 02000424 */  addiu      $a0, $zero, 2
/* A9184 800B8984 96DC020C */  jal        _spu_t
/* A9188 800B8988 21284002 */   addu      $a1, $s2, $zero
/* A918C 800B898C 96DC020C */  jal        _spu_t
/* A9190 800B8990 01000424 */   addiu     $a0, $zero, 1
/* A9194 800B8994 03000424 */  addiu      $a0, $zero, 3
/* A9198 800B8998 0F80053C */  lui        $a1, %hi(D_800EC860)
/* A919C 800B899C 60C8A524 */  addiu      $a1, $a1, %lo(D_800EC860)
/* A91A0 800B89A0 96DC020C */  jal        _spu_t
/* A91A4 800B89A4 21300002 */   addu      $a2, $s0, $zero
/* A91A8 800B89A8 0F80043C */  lui        $a0, %hi(D_800EC778)
/* A91AC 800B89AC 78C7848C */  lw         $a0, %lo(D_800EC778)($a0)
/* A91B0 800B89B0 00FC3126 */  addiu      $s1, $s1, -0x400
/* A91B4 800B89B4 89E2020C */  jal        WaitEvent
/* A91B8 800B89B8 00045226 */   addiu     $s2, $s2, 0x400
/* A91BC 800B89BC ECFF6016 */  bnez       $s3, .L800B8970
/* A91C0 800B89C0 0104222E */   sltiu     $v0, $s1, 0x401
/* A91C4 800B89C4 0300A012 */  beqz       $s5, .L800B89D4
/* A91C8 800B89C8 00000000 */   nop
/* A91CC 800B89CC 0F80013C */  lui        $at, %hi(D_800EC80C)
/* A91D0 800B89D0 0CC834AC */  sw         $s4, %lo(D_800EC80C)($at)
.L800B89D4:
/* A91D4 800B89D4 1000A28F */  lw         $v0, 0x10($sp)
/* A91D8 800B89D8 00000000 */  nop
/* A91DC 800B89DC 05004010 */  beqz       $v0, S_CRWA_OBJ_170
/* A91E0 800B89E0 21100000 */   addu      $v0, $zero, $zero
/* A91E4 800B89E4 1000A28F */  lw         $v0, 0x10($sp)
/* A91E8 800B89E8 0F80013C */  lui        $at, %hi(D_800EC828)
/* A91EC 800B89EC 28C822AC */  sw         $v0, %lo(D_800EC828)($at)
/* A91F0 800B89F0 21100000 */  addu       $v0, $zero, $zero
