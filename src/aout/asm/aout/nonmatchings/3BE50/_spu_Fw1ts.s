.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_Fw1ts
/* A7F8C 800B778C F8FFBD27 */  addiu      $sp, $sp, -8
/* A7F90 800B7790 0D000224 */  addiu      $v0, $zero, 0xd
/* A7F94 800B7794 0400A2AF */  sw         $v0, 4($sp)
/* A7F98 800B7798 F3DD0208 */  j          SPU_OBJ_B18
/* A7F9C 800B779C 0000A0AF */   sw        $zero, ($sp)
.L800B77A0:
/* A7FA0 800B77A0 0400A38F */  lw         $v1, 4($sp)
/* A7FA4 800B77A4 00000000 */  nop
/* A7FA8 800B77A8 40100300 */  sll        $v0, $v1, 1
/* A7FAC 800B77AC 21104300 */  addu       $v0, $v0, $v1
/* A7FB0 800B77B0 80100200 */  sll        $v0, $v0, 2
/* A7FB4 800B77B4 21104300 */  addu       $v0, $v0, $v1
/* A7FB8 800B77B8 0400A2AF */  sw         $v0, 4($sp)
/* A7FBC 800B77BC 0000A28F */  lw         $v0, ($sp)
/* A7FC0 800B77C0 00000000 */  nop
/* A7FC4 800B77C4 01004224 */  addiu      $v0, $v0, 1
/* A7FC8 800B77C8 0000A2AF */  sw         $v0, ($sp)
