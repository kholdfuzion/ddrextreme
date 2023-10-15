.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a1c8
/* 3A9C8 8004A1C8 01000424 */  addiu      $a0, $zero, 1
/* 3A9CC 8004A1CC 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 3A9D0 8004A1D0 A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 3A9D4 8004A1D4 3C0D4224 */  addiu      $v0, $v0, 0xd3c
/* 3A9D8 8004A1D8 1780033C */  lui        $v1, %hi(D_8016EB50)
/* 3A9DC 8004A1DC 50EB6324 */  addiu      $v1, $v1, %lo(D_8016EB50)
/* 3A9E0 8004A1E0 00016324 */  addiu      $v1, $v1, 0x100
.L8004A1E4:
/* 3A9E4 8004A1E4 000043AC */  sw         $v1, ($v0)
/* 3A9E8 8004A1E8 FCFF4224 */  addiu      $v0, $v0, -4
/* 3A9EC 8004A1EC FFFF8424 */  addiu      $a0, $a0, -1
/* 3A9F0 8004A1F0 FCFF8104 */  bgez       $a0, .L8004A1E4
/* 3A9F4 8004A1F4 00FF6324 */   addiu     $v1, $v1, -0x100
/* 3A9F8 8004A1F8 1780023C */  lui        $v0, %hi(D_8016ED58)
/* 3A9FC 8004A1FC 58ED4224 */  addiu      $v0, $v0, %lo(D_8016ED58)
/* 3AA00 8004A200 0F80033C */  lui        $v1, %hi(D_800F01D4)
/* 3AA04 8004A204 D4016324 */  addiu      $v1, $v1, %lo(D_800F01D4)
/* 3AA08 8004A208 0100043C */  lui        $a0, 1
/* 3AA0C 8004A20C 7C428434 */  ori        $a0, $a0, 0x427c
/* 3AA10 8004A210 01000524 */  addiu      $a1, $zero, 1
.L8004A214:
/* 3AA14 8004A214 000040AC */  sw         $zero, ($v0)
/* 3AA18 8004A218 040040AC */  sw         $zero, 4($v0)
/* 3AA1C 8004A21C 080040AC */  sw         $zero, 8($v0)
/* 3AA20 8004A220 0C004224 */  addiu      $v0, $v0, 0xc
/* 3AA24 8004A224 E40060A4 */  sh         $zero, 0xe4($v1)
/* 3AA28 8004A228 E80060A4 */  sh         $zero, 0xe8($v1)
/* 3AA2C 8004A22C FFFFA524 */  addiu      $a1, $a1, -1
/* 3AA30 8004A230 F8FFA104 */  bgez       $a1, .L8004A214
/* 3AA34 8004A234 21186400 */   addu      $v1, $v1, $a0
/* 3AA38 8004A238 1780023C */  lui        $v0, %hi(D_8016ED50)
/* 3AA3C 8004A23C 0800E003 */  jr         $ra
/* 3AA40 8004A240 50ED40AC */   sw        $zero, %lo(D_8016ED50)($v0)
