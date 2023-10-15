.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb9ec
/* AC1EC 800BB9EC 1724033C */  lui        $v1, 0x2417
/* AC1F0 800BB9F0 473F6334 */  ori        $v1, $v1, 0x3f47
/* AC1F4 800BB9F4 801F043C */  lui        $a0, 0x1f80
/* AC1F8 800BB9F8 081083AC */  sw         $v1, 0x1008($a0)
/* AC1FC 800BB9FC 0810828C */  lw         $v0, 0x1008($a0)
/* AC200 800BBA00 00000000 */  nop
/* AC204 800BBA04 06004310 */  beq        $v0, $v1, .L800BBA20
/* AC208 800BBA08 1724033C */   lui       $v1, 0x2417
/* AC20C 800BBA0C 473F6334 */  ori        $v1, $v1, 0x3f47
.L800BBA10:
/* AC210 800BBA10 0810828C */  lw         $v0, 0x1008($a0)
/* AC214 800BBA14 00000000 */  nop
/* AC218 800BBA18 FDFF4314 */  bne        $v0, $v1, .L800BBA10
/* AC21C 800BBA1C 00000000 */   nop
.L800BBA20:
/* AC220 800BBA20 0800E003 */  jr         $ra
/* AC224 800BBA24 00000000 */   nop
