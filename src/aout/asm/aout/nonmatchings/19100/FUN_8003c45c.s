.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c45c
/* 2CC5C 8003C45C 0400868C */  lw         $a2, 4($a0)
/* 2CC60 8003C460 0000888C */  lw         $t0, ($a0)
/* 2CC64 8003C464 0000A98C */  lw         $t1, ($a1)
/* 2CC68 8003C468 0800A78C */  lw         $a3, 8($a1)
/* 2CC6C 8003C46C 2330C800 */  subu       $a2, $a2, $t0
/* 2CC70 8003C470 2338E900 */  subu       $a3, $a3, $t1
/* 2CC74 8003C474 1800C700 */  mult       $a2, $a3
/* 2CC78 8003C478 0800838C */  lw         $v1, 8($a0)
/* 2CC7C 8003C47C 0400A48C */  lw         $a0, 4($a1)
/* 2CC80 8003C480 12100000 */  mflo       $v0
/* 2CC84 8003C484 23186800 */  subu       $v1, $v1, $t0
/* 2CC88 8003C488 23208900 */  subu       $a0, $a0, $t1
/* 2CC8C 8003C48C 18008300 */  mult       $a0, $v1
/* 2CC90 8003C490 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 2CC94 8003C494 0000A6AF */  sw         $a2, ($sp)
/* 2CC98 8003C498 0400A3AF */  sw         $v1, 4($sp)
/* 2CC9C 8003C49C 0800A4AF */  sw         $a0, 8($sp)
/* 2CCA0 8003C4A0 0C00A7AF */  sw         $a3, 0xc($sp)
/* 2CCA4 8003C4A4 12280000 */  mflo       $a1
/* 2CCA8 8003C4A8 23104500 */  subu       $v0, $v0, $a1
/* 2CCAC 8003C4AC C2170200 */  srl        $v0, $v0, 0x1f
/* 2CCB0 8003C4B0 0800E003 */  jr         $ra
/* 2CCB4 8003C4B4 1000BD27 */   addiu     $sp, $sp, 0x10
