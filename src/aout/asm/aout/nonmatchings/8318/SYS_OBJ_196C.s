.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_196C
/* A150 80019950 06000385 */  lh         $v1, 6($t0)
/* A154 80019954 06000495 */  lhu        $a0, 6($t0)
/* A158 80019958 0C006004 */  bltz       $v1, .L8001998C
/* A15C 8001995C 040002A5 */   sh        $v0, 4($t0)
/* A160 80019960 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* A164 80019964 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* A168 80019968 00000000 */  nop
/* A16C 8001996C FFFF4224 */  addiu      $v0, $v0, -1
/* A170 80019970 2A104300 */  slt        $v0, $v0, $v1
/* A174 80019974 0D80033C */  lui        $v1, %hi(D_800D2B9E)
/* A178 80019978 9E2B6394 */  lhu        $v1, %lo(D_800D2B9E)($v1)
/* A17C 8001997C 04004014 */  bnez       $v0, SYS_OBJ_19AC
/* A180 80019980 FFFF6324 */   addiu     $v1, $v1, -1
/* A184 80019984 64660008 */  j          SYS_OBJ_19AC
/* A188 80019988 21188000 */   addu      $v1, $a0, $zero
.L8001998C:
/* A18C 8001998C 21180000 */  addu       $v1, $zero, $zero
