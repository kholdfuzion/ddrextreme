.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bcb58
/* AD358 800BCB58 21180000 */  addu       $v1, $zero, $zero
/* AD35C 800BCB5C 1E80023C */  lui        $v0, %hi(D_801E17A8)
/* AD360 800BCB60 A8174424 */  addiu      $a0, $v0, %lo(D_801E17A8)
/* AD364 800BCB64 80100300 */  sll        $v0, $v1, 2
.L800BCB68:
/* AD368 800BCB68 21104300 */  addu       $v0, $v0, $v1
/* AD36C 800BCB6C C0100200 */  sll        $v0, $v0, 3
/* AD370 800BCB70 21104400 */  addu       $v0, $v0, $a0
/* AD374 800BCB74 E40040A0 */  sb         $zero, 0xe4($v0)
/* AD378 800BCB78 21106400 */  addu       $v0, $v1, $a0
/* AD37C 800BCB7C 7C0440A0 */  sb         $zero, 0x47c($v0)
/* AD380 800BCB80 01006324 */  addiu      $v1, $v1, 1
/* AD384 800BCB84 17006228 */  slti       $v0, $v1, 0x17
/* AD388 800BCB88 F7FF4014 */  bnez       $v0, .L800BCB68
/* AD38C 800BCB8C 80100300 */   sll       $v0, $v1, 2
/* AD390 800BCB90 0800E003 */  jr         $ra
/* AD394 800BCB94 00000000 */   nop
