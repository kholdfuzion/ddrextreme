.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_16CC
/* 9EB0 800196B0 FF03A330 */  andi       $v1, $a1, 0x3ff
.L800196B4:
/* 9EB4 800196B4 801A0300 */  sll        $v1, $v1, 0xa
/* 9EB8 800196B8 FF038230 */  andi       $v0, $a0, 0x3ff
/* 9EBC 800196BC 00E3043C */  lui        $a0, 0xe300
/* 9EC0 800196C0 25104400 */  or         $v0, $v0, $a0
/* 9EC4 800196C4 0800E003 */  jr         $ra
/* 9EC8 800196C8 25106200 */   or        $v0, $v1, $v0
