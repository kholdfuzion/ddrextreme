.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001C148
/* C948 8001C148 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C94C 8001C14C 1000BFAF */  sw         $ra, 0x10($sp)
/* C950 8001C150 3F72000C */  jal        FUN_8001c8fc
/* C954 8001C154 00000000 */   nop
/* C958 8001C158 55A1000C */  jal        FUN_80028554
/* C95C 8001C15C 00000000 */   nop
/* C960 8001C160 5BA2000C */  jal        FUN_8002896c
/* C964 8001C164 00000000 */   nop
/* C968 8001C168 FACA020C */  jal        FUN_800b2be8
/* C96C 8001C16C 00000000 */   nop
/* C970 8001C170 079C020C */  jal        FUN_800a701c
/* C974 8001C174 00000000 */   nop
/* C978 8001C178 1000BF8F */  lw         $ra, 0x10($sp)
/* C97C 8001C17C 00000000 */  nop
/* C980 8001C180 0800E003 */  jr         $ra
/* C984 8001C184 1800BD27 */   addiu     $sp, $sp, 0x18
