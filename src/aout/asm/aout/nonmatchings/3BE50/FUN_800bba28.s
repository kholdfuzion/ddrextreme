.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bba28
/* AC228 800BBA28 1724033C */  lui        $v1, 0x2417
/* AC22C 800BBA2C FF3F6334 */  ori        $v1, $v1, 0x3fff
/* AC230 800BBA30 801F043C */  lui        $a0, 0x1f80
/* AC234 800BBA34 081083AC */  sw         $v1, 0x1008($a0)
/* AC238 800BBA38 0810828C */  lw         $v0, 0x1008($a0)
/* AC23C 800BBA3C 00000000 */  nop
/* AC240 800BBA40 06004310 */  beq        $v0, $v1, .L800BBA5C
/* AC244 800BBA44 1724033C */   lui       $v1, 0x2417
/* AC248 800BBA48 FF3F6334 */  ori        $v1, $v1, 0x3fff
.L800BBA4C:
/* AC24C 800BBA4C 0810828C */  lw         $v0, 0x1008($a0)
/* AC250 800BBA50 00000000 */  nop
/* AC254 800BBA54 FDFF4314 */  bne        $v0, $v1, .L800BBA4C
/* AC258 800BBA58 00000000 */   nop
.L800BBA5C:
/* AC25C 800BBA5C 0800E003 */  jr         $ra
/* AC260 800BBA60 00000000 */   nop
