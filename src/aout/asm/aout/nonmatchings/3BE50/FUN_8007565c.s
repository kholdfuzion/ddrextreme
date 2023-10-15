.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007565c
/* 65E5C 8007565C 1B80053C */  lui        $a1, 0x801b
/* 65E60 80075660 C2170400 */  srl        $v0, $a0, 0x1f
/* 65E64 80075664 21108200 */  addu       $v0, $a0, $v0
/* 65E68 80075668 43100200 */  sra        $v0, $v0, 1
/* 65E6C 8007566C 40100200 */  sll        $v0, $v0, 1
/* 65E70 80075670 23208200 */  subu       $a0, $a0, $v0
/* 65E74 80075674 00190400 */  sll        $v1, $a0, 4
/* 65E78 80075678 23186400 */  subu       $v1, $v1, $a0
/* 65E7C 8007567C C0180300 */  sll        $v1, $v1, 3
/* 65E80 80075680 340EA28C */  lw         $v0, 0xe34($a1)
/* 65E84 80075684 0C006324 */  addiu      $v1, $v1, 0xc
/* 65E88 80075688 21104300 */  addu       $v0, $v0, $v1
/* 65E8C 8007568C 2C00448C */  lw         $a0, 0x2c($v0)
/* 65E90 80075690 0800E003 */  jr         $ra
/* 65E94 80075694 080044AC */   sw        $a0, 8($v0)
