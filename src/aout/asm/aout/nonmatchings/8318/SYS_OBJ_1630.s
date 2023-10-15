.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1630
/* 9E14 80019614 0200A010 */  beqz       $a1, .L80019620
/* 9E18 80019618 00E1033C */   lui       $v1, 0xe100
/* 9E1C 8001961C 00026334 */  ori        $v1, $v1, 0x200
.L80019620:
/* 9E20 80019620 02008010 */  beqz       $a0, .L8001962C
/* 9E24 80019624 FF09C230 */   andi      $v0, $a2, 0x9ff
/* 9E28 80019628 00044234 */  ori        $v0, $v0, 0x400
.L8001962C:
/* 9E2C 8001962C 0800E003 */  jr         $ra
/* 9E30 80019630 25106200 */   or        $v0, $v1, $v0
