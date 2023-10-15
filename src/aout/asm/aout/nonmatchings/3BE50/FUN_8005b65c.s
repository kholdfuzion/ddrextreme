.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b65c
/* 4BE5C 8005B65C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4BE60 8005B660 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 4BE64 8005B664 80100400 */  sll        $v0, $a0, 2
/* 4BE68 8005B668 21104400 */  addu       $v0, $v0, $a0
/* 4BE6C 8005B66C C0100200 */  sll        $v0, $v0, 3
/* 4BE70 8005B670 21104400 */  addu       $v0, $v0, $a0
/* 4BE74 8005B674 C0100200 */  sll        $v0, $v0, 3
/* 4BE78 8005B678 23104400 */  subu       $v0, $v0, $a0
/* 4BE7C 8005B67C 80100200 */  sll        $v0, $v0, 2
/* 4BE80 8005B680 21104400 */  addu       $v0, $v0, $a0
/* 4BE84 8005B684 C0100200 */  sll        $v0, $v0, 3
/* 4BE88 8005B688 40400300 */  sll        $t0, $v1, 1
/* 4BE8C 8005B68C 21400301 */  addu       $t0, $t0, $v1
/* 4BE90 8005B690 C0400800 */  sll        $t0, $t0, 3
/* 4BE94 8005B694 23400301 */  subu       $t0, $t0, $v1
/* 4BE98 8005B698 C0410800 */  sll        $t0, $t0, 7
/* 4BE9C 8005B69C 21400301 */  addu       $t0, $t0, $v1
/* 4BEA0 8005B6A0 80400800 */  sll        $t0, $t0, 2
/* 4BEA4 8005B6A4 21400301 */  addu       $t0, $t0, $v1
/* 4BEA8 8005B6A8 C0400800 */  sll        $t0, $t0, 3
/* 4BEAC 8005B6AC 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BEB0 8005B6B0 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BEB4 8005B6B4 21104300 */  addu       $v0, $v0, $v1
/* 4BEB8 8005B6B8 21400201 */  addu       $t0, $t0, $v0
/* 4BEBC 8005B6BC A0000825 */  addiu      $t0, $t0, 0xa0
/* 4BEC0 8005B6C0 80100500 */  sll        $v0, $a1, 2
/* 4BEC4 8005B6C4 21104500 */  addu       $v0, $v0, $a1
/* 4BEC8 8005B6C8 C0100200 */  sll        $v0, $v0, 3
/* 4BECC 8005B6CC 21104800 */  addu       $v0, $v0, $t0
/* 4BED0 8005B6D0 080046A4 */  sh         $a2, 8($v0)
/* 4BED4 8005B6D4 0A0047A4 */  sh         $a3, 0xa($v0)
/* 4BED8 8005B6D8 1000A38F */  lw         $v1, 0x10($sp)
/* 4BEDC 8005B6DC 1400A48F */  lw         $a0, 0x14($sp)
/* 4BEE0 8005B6E0 120047A4 */  sh         $a3, 0x12($v0)
/* 4BEE4 8005B6E4 180046A4 */  sh         $a2, 0x18($v0)
/* 4BEE8 8005B6E8 2118C300 */  addu       $v1, $a2, $v1
/* 4BEEC 8005B6EC 2138E400 */  addu       $a3, $a3, $a0
/* 4BEF0 8005B6F0 100043A4 */  sh         $v1, 0x10($v0)
/* 4BEF4 8005B6F4 1A0047A4 */  sh         $a3, 0x1a($v0)
/* 4BEF8 8005B6F8 200043A4 */  sh         $v1, 0x20($v0)
/* 4BEFC 8005B6FC 0800E003 */  jr         $ra
/* 4BF00 8005B700 220047A4 */   sh        $a3, 0x22($v0)
