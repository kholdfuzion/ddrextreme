.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800231a8
/* 139A8 800231A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 139AC 800231AC 08008424 */  addiu      $a0, $a0, 8
/* 139B0 800231B0 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 139B4 800231B4 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 139B8 800231B8 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 139BC 800231BC 27000224 */  addiu      $v0, $zero, 0x27
/* 139C0 800231C0 1000BFAF */  sw         $ra, 0x10($sp)
/* 139C4 800231C4 85B3010C */  jal        FUN_8006ce14
/* 139C8 800231C8 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 139CC 800231CC 04000424 */  addiu      $a0, $zero, 4
/* 139D0 800231D0 3EA2020C */  jal        FUN_800a88f8
/* 139D4 800231D4 02000524 */   addiu     $a1, $zero, 2
/* 139D8 800231D8 0C004494 */  lhu        $a0, 0xc($v0)
/* 139DC 800231DC 06C2020C */  jal        FUN_800b0818
/* 139E0 800231E0 00000000 */   nop
/* 139E4 800231E4 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 139E8 800231E8 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 139EC 800231EC 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 139F0 800231F0 B40D828C */  lw         $v0, 0xdb4($a0)
/* 139F4 800231F4 1000BF8F */  lw         $ra, 0x10($sp)
/* 139F8 800231F8 24104300 */  and        $v0, $v0, $v1
/* 139FC 800231FC 20004234 */  ori        $v0, $v0, 0x20
/* 13A00 80023200 B40D82AC */  sw         $v0, 0xdb4($a0)
/* 13A04 80023204 0800E003 */  jr         $ra
/* 13A08 80023208 1800BD27 */   addiu     $sp, $sp, 0x18
