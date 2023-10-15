.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_2D8
/* 11110 80020910 1002A28F */  lw         $v0, 0x210($sp)
/* 11114 80020914 00000000 */  nop
/* 11118 80020918 80004234 */  ori        $v0, $v0, 0x80
