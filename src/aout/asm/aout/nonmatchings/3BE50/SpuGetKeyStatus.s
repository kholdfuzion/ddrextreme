.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuGetKeyStatus
/* A93F4 800B8BF4 FFFF0524 */  addiu      $a1, $zero, -1
/* A93F8 800B8BF8 21180000 */  addu       $v1, $zero, $zero
/* A93FC 800B8BFC 01000624 */  addiu      $a2, $zero, 1
/* A9400 800B8C00 04106600 */  sllv       $v0, $a2, $v1
.L800B8C04:
/* A9404 800B8C04 24108200 */  and        $v0, $a0, $v0
/* A9408 800B8C08 0A004014 */  bnez       $v0, .L800B8C34
/* A940C 800B8C0C 00000000 */   nop
/* A9410 800B8C10 01006324 */  addiu      $v1, $v1, 1
/* A9414 800B8C14 18006228 */  slti       $v0, $v1, 0x18
/* A9418 800B8C18 FAFF4014 */  bnez       $v0, .L800B8C04
/* A941C 800B8C1C 04106600 */   sllv      $v0, $a2, $v1
