.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_2764
/* AF48 8001A748 E368000C */  jal        SYS_OBJ_23A8
/* AF4C 8001A74C 00000000 */   nop
/* AF50 8001A750 266A000C */  jal        SYS_OBJ_28B4
/* AF54 8001A754 00000000 */   nop
/* AF58 8001A758 3E004014 */  bnez       $v0, SYS_OBJ_2870
/* AF5C 8001A75C FFFF0224 */   addiu     $v0, $zero, -1
