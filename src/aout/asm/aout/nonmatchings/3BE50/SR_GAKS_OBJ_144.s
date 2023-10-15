.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SR_GAKS_OBJ_144
/* A96B8 800B8EB8 0100C624 */  addiu      $a2, $a2, 1
/* A96BC 800B8EBC 2A10CA00 */  slt        $v0, $a2, $t2
/* A96C0 800B8EC0 E7FF4014 */  bnez       $v0, .L800B8E60
/* A96C4 800B8EC4 0100A524 */   addiu     $a1, $a1, 1
/* A96C8 800B8EC8 0800E003 */  jr         $ra
/* A96CC 800B8ECC 00000000 */   nop
/* A96D0 800B8ED0 00000000 */  nop
