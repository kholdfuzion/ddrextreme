.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SAV_OBJ_2AC
/* A9070 800B8870 FF00023C */  lui        $v0, 0xff
/* A9074 800B8874 FFFF4234 */  ori        $v0, $v0, 0xffff
