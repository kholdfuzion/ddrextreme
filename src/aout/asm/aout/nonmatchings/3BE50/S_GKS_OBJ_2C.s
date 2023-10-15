.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GKS_OBJ_2C
/* A9420 800B8C20 FFFF0224 */  addiu      $v0, $zero, -1
/* A9424 800B8C24 0500A214 */  bne        $a1, $v0, .L800B8C3C
/* A9428 800B8C28 00210500 */   sll       $a0, $a1, 4
/* A942C 800B8C2C 1FE30208 */  j          S_GKS_OBJ_88
/* A9430 800B8C30 00000000 */   nop
.L800B8C34:
/* A9434 800B8C34 08E30208 */  j          S_GKS_OBJ_2C
/* A9438 800B8C38 21286000 */   addu      $a1, $v1, $zero
.L800B8C3C:
/* A943C 800B8C3C 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9440 800B8C40 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A9444 800B8C44 0F80033C */  lui        $v1, %hi(D_800EC77C)
/* A9448 800B8C48 7CC7638C */  lw         $v1, %lo(D_800EC77C)($v1)
/* A944C 800B8C4C 21208200 */  addu       $a0, $a0, $v0
/* A9450 800B8C50 01000224 */  addiu      $v0, $zero, 1
/* A9454 800B8C54 0410A200 */  sllv       $v0, $v0, $a1
/* A9458 800B8C58 24186200 */  and        $v1, $v1, $v0
/* A945C 800B8C5C 0C008494 */  lhu        $a0, 0xc($a0)
/* A9460 800B8C60 03006014 */  bnez       $v1, .L800B8C70
/* A9464 800B8C64 2B100400 */   sltu      $v0, $zero, $a0
/* A9468 800B8C68 1FE30208 */  j          S_GKS_OBJ_88
/* A946C 800B8C6C 40100200 */   sll       $v0, $v0, 1
.L800B8C70:
/* A9470 800B8C70 02008014 */  bnez       $a0, S_GKS_OBJ_88
/* A9474 800B8C74 01000224 */   addiu     $v0, $zero, 1
/* A9478 800B8C78 03000224 */  addiu      $v0, $zero, 3
