.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0a0c
/* A120C 800B0A0C FFFF8430 */  andi       $a0, $a0, 0xffff
/* A1210 800B0A10 21180000 */  addu       $v1, $zero, $zero
/* A1214 800B0A14 FEFF0634 */  ori        $a2, $zero, 0xfffe
/* A1218 800B0A18 1D80023C */  lui        $v0, %hi(D_801CC948)
/* A121C 800B0A1C 48C94224 */  addiu      $v0, $v0, %lo(D_801CC948)
/* A1220 800B0A20 05004524 */  addiu      $a1, $v0, 5
.L800B0A24:
/* A1224 800B0A24 0000A290 */  lbu        $v0, ($a1)
/* A1228 800B0A28 00000000 */  nop
/* A122C 800B0A2C 06004010 */  beqz       $v0, .L800B0A48
/* A1230 800B0A30 21106000 */   addu      $v0, $v1, $zero
/* A1234 800B0A34 01006324 */  addiu      $v1, $v1, 1
/* A1238 800B0A38 2A10C300 */  slt        $v0, $a2, $v1
/* A123C 800B0A3C F9FF4010 */  beqz       $v0, .L800B0A24
/* A1240 800B0A40 1800A524 */   addiu     $a1, $a1, 0x18
/* A1244 800B0A44 21100000 */  addu       $v0, $zero, $zero
.L800B0A48:
/* A1248 800B0A48 2A108200 */  slt        $v0, $a0, $v0
/* A124C 800B0A4C 07004010 */  beqz       $v0, .L800B0A6C
/* A1250 800B0A50 40180400 */   sll       $v1, $a0, 1
/* A1254 800B0A54 21186400 */  addu       $v1, $v1, $a0
/* A1258 800B0A58 C0180300 */  sll        $v1, $v1, 3
/* A125C 800B0A5C 1D80023C */  lui        $v0, %hi(D_801CC94D)
/* A1260 800B0A60 4DC94224 */  addiu      $v0, $v0, %lo(D_801CC94D)
/* A1264 800B0A64 0800E003 */  jr         $ra
/* A1268 800B0A68 21106200 */   addu      $v0, $v1, $v0
.L800B0A6C:
/* A126C 800B0A6C 0800E003 */  jr         $ra
/* A1270 800B0A70 21100000 */   addu      $v0, $zero, $zero
