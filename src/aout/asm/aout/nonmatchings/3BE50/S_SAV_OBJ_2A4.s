.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SAV_OBJ_2A4
/* A9068 800B8868 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A906C 800B886C 24500201 */  and        $t2, $t0, $v0
