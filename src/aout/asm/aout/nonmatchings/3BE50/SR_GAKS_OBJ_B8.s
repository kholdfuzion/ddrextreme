.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SR_GAKS_OBJ_B8
/* A962C 800B8E2C 0100E724 */  addiu      $a3, $a3, 1
/* A9630 800B8E30 2A10E500 */  slt        $v0, $a3, $a1
/* A9634 800B8E34 E7FF4014 */  bnez       $v0, .L800B8DD4
/* A9638 800B8E38 0100C624 */   addiu     $a2, $a2, 1
/* A963C 800B8E3C 21100000 */  addu       $v0, $zero, $zero
