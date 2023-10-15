.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_B18
/* A7FCC 800B77CC 0000A28F */  lw         $v0, ($sp)
/* A7FD0 800B77D0 00000000 */  nop
/* A7FD4 800B77D4 3C004228 */  slti       $v0, $v0, 0x3c
/* A7FD8 800B77D8 F1FF4014 */  bnez       $v0, .L800B77A0
/* A7FDC 800B77DC 00000000 */   nop
/* A7FE0 800B77E0 0800E003 */  jr         $ra
/* A7FE4 800B77E4 0800BD27 */   addiu     $sp, $sp, 8
/* A7FE8 800B77E8 00000000 */  nop
/* A7FEC 800B77EC 00000000 */  nop
/* A7FF0 800B77F0 00000000 */  nop
