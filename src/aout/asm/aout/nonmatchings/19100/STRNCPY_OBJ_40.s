.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel STRNCPY_OBJ_40
/* 1F594 8002ED94 2A106600 */  slt        $v0, $v1, $a2
/* 1F598 8002ED98 FBFF4014 */  bnez       $v0, .L8002ED88
/* 1F59C 8002ED9C 2110E000 */   addu      $v0, $a3, $zero
/* 1F5A0 8002EDA0 6FBB0008 */  j          STRNCPY_OBJ_68
/* 1F5A4 8002EDA4 00000000 */   nop
.L8002EDA8:
/* 1F5A8 8002EDA8 01006324 */  addiu      $v1, $v1, 1
/* 1F5AC 8002EDAC 2A106600 */  slt        $v0, $v1, $a2
/* 1F5B0 8002EDB0 EEFF4014 */  bnez       $v0, .L8002ED6C
/* 1F5B4 8002EDB4 00000000 */   nop
.L8002EDB8:
/* 1F5B8 8002EDB8 2110E000 */  addu       $v0, $a3, $zero
