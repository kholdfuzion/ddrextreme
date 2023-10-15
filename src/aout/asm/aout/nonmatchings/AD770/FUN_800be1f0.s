.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be1f0
/* AE9F0 800BE1F0 401F023C */  lui        $v0, 0x1f40
/* AE9F4 800BE1F4 06004294 */  lhu        $v0, 6($v0)
/* AE9F8 800BE1F8 00000000 */  nop
/* AE9FC 800BE1FC 27100200 */  nor        $v0, $zero, $v0
/* AEA00 800BE200 83120200 */  sra        $v0, $v0, 0xa
/* AEA04 800BE204 0800E003 */  jr         $ra
/* AEA08 800BE208 03004230 */   andi      $v0, $v0, 3
