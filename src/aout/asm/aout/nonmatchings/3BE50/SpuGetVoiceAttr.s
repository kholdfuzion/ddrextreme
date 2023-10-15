.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuGetVoiceAttr
/* AA254 800B9A54 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* AA258 800B9A58 1000B0AF */  sw         $s0, 0x10($sp)
/* AA25C 800B9A5C 21808000 */  addu       $s0, $a0, $zero
/* AA260 800B9A60 1400B1AF */  sw         $s1, 0x14($sp)
/* AA264 800B9A64 FFFF1124 */  addiu      $s1, $zero, -1
/* AA268 800B9A68 21180000 */  addu       $v1, $zero, $zero
/* AA26C 800B9A6C 01000524 */  addiu      $a1, $zero, 1
/* AA270 800B9A70 1C00BFAF */  sw         $ra, 0x1c($sp)
/* AA274 800B9A74 1800B2AF */  sw         $s2, 0x18($sp)
/* AA278 800B9A78 0000048E */  lw         $a0, ($s0)
/* AA27C 800B9A7C 04106500 */  sllv       $v0, $a1, $v1
.L800B9A80:
/* AA280 800B9A80 24108200 */  and        $v0, $a0, $v0
/* AA284 800B9A84 22004014 */  bnez       $v0, .L800B9B10
/* AA288 800B9A88 00000000 */   nop
/* AA28C 800B9A8C 01006324 */  addiu      $v1, $v1, 1
/* AA290 800B9A90 18006228 */  slti       $v0, $v1, 0x18
/* AA294 800B9A94 FAFF4014 */  bnez       $v0, .L800B9A80
/* AA298 800B9A98 04106500 */   sllv      $v0, $a1, $v1
