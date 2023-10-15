.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel InitGeom
/* 12770 80021F70 0E80013C */  lui        $at, %hi(D_800D8940)
/* 12774 80021F74 40893FAC */  sw         $ra, %lo(D_800D8940)($at)
/* 12778 80021F78 3E88000C */  jal        _patch_gte
/* 1277C 80021F7C 00000000 */   nop
/* 12780 80021F80 0E801F3C */  lui        $ra, %hi(D_800D8940)
/* 12784 80021F84 4089FF8F */  lw         $ra, %lo(D_800D8940)($ra)
/* 12788 80021F88 00000000 */  nop
/* 1278C 80021F8C 00600240 */  mfc0       $v0, $12
/* 12790 80021F90 0040033C */  lui        $v1, 0x4000
/* 12794 80021F94 25104300 */  or         $v0, $v0, $v1
/* 12798 80021F98 00608240 */  mtc0       $v0, $12
/* 1279C 80021F9C 00000000 */  nop
/* 127A0 80021FA0 55010824 */  addiu      $t0, $zero, 0x155
/* 127A4 80021FA4 00E8C848 */  .byte      0x00, 0xe8, 0xc8, 0x48
/* 127A8 80021FA8 00000000 */  nop
/* 127AC 80021FAC 00010824 */  addiu      $t0, $zero, 0x100
/* 127B0 80021FB0 00F0C848 */  .byte      0x00, 0xf0, 0xc8, 0x48
/* 127B4 80021FB4 00000000 */  nop
/* 127B8 80021FB8 E8030824 */  addiu      $t0, $zero, 0x3e8
/* 127BC 80021FBC 00D0C848 */  .byte      0x00, 0xd0, 0xc8, 0x48
/* 127C0 80021FC0 00000000 */  nop
/* 127C4 80021FC4 9EEF0824 */  addiu      $t0, $zero, -0x1062
/* 127C8 80021FC8 00D8C848 */  .byte      0x00, 0xd8, 0xc8, 0x48
/* 127CC 80021FCC 00000000 */  nop
/* 127D0 80021FD0 4001083C */  lui        $t0, 0x140
/* 127D4 80021FD4 00E0C848 */  .byte      0x00, 0xe0, 0xc8, 0x48
/* 127D8 80021FD8 00000000 */  nop
/* 127DC 80021FDC 00C0C048 */  .byte      0x00, 0xc0, 0xc0, 0x48
/* 127E0 80021FE0 00C8C048 */  .byte      0x00, 0xc8, 0xc0, 0x48
/* 127E4 80021FE4 00000000 */  nop
/* 127E8 80021FE8 0800E003 */  jr         $ra
/* 127EC 80021FEC 00000000 */   nop
/* 127F0 80021FF0 00000000 */  nop
/* 127F4 80021FF4 00000000 */  nop
