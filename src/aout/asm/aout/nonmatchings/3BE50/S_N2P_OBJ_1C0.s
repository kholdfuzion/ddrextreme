.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_N2P_OBJ_1C0
/* A9E94 800B9694 01002225 */  addiu      $v0, $t1, 1
/* A9E98 800B9698 2148A200 */  addu       $t1, $a1, $v0
/* A9E9C 800B969C F4FF6325 */  addiu      $v1, $t3, -0xc
/* A9EA0 800B96A0 40100300 */  sll        $v0, $v1, 1
/* A9EA4 800B96A4 21104300 */  addu       $v0, $v0, $v1
/* A9EA8 800B96A8 80100200 */  sll        $v0, $v0, 2
/* A9EAC 800B96AC 21108200 */  addu       $v0, $a0, $v0
/* A9EB0 800B96B0 21104201 */  addu       $v0, $t2, $v0
/* A9EB4 800B96B4 FFFF2431 */  andi       $a0, $t1, 0xffff
/* A9EB8 800B96B8 C2190400 */  srl        $v1, $a0, 7
/* A9EBC 800B96BC 21504300 */  addu       $t2, $v0, $v1
/* A9EC0 800B96C0 FFFF4231 */  andi       $v0, $t2, 0xffff
/* A9EC4 800B96C4 00120200 */  sll        $v0, $v0, 8
/* A9EC8 800B96C8 7E008430 */  andi       $a0, $a0, 0x7e
/* A9ECC 800B96CC 0800E003 */  jr         $ra
/* A9ED0 800B96D0 25104400 */   or        $v0, $v0, $a0
