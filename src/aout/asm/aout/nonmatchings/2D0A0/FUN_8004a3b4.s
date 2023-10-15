.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004a3b4
/* 3ABB4 8004A3B4 01000424 */  addiu      $a0, $zero, 1
/* 3ABB8 8004A3B8 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 3ABBC 8004A3BC A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 3ABC0 8004A3C0 3C0D4224 */  addiu      $v0, $v0, 0xd3c
/* 3ABC4 8004A3C4 1780033C */  lui        $v1, %hi(D_8016EB50)
/* 3ABC8 8004A3C8 50EB6324 */  addiu      $v1, $v1, %lo(D_8016EB50)
/* 3ABCC 8004A3CC 00016324 */  addiu      $v1, $v1, 0x100
.L8004A3D0:
/* 3ABD0 8004A3D0 000043AC */  sw         $v1, ($v0)
/* 3ABD4 8004A3D4 FCFF4224 */  addiu      $v0, $v0, -4
/* 3ABD8 8004A3D8 FFFF8424 */  addiu      $a0, $a0, -1
/* 3ABDC 8004A3DC FCFF8104 */  bgez       $a0, .L8004A3D0
/* 3ABE0 8004A3E0 00FF6324 */   addiu     $v1, $v1, -0x100
/* 3ABE4 8004A3E4 1780023C */  lui        $v0, %hi(D_8016ED58)
/* 3ABE8 8004A3E8 58ED4224 */  addiu      $v0, $v0, %lo(D_8016ED58)
/* 3ABEC 8004A3EC 0F80033C */  lui        $v1, %hi(D_800F01D4)
/* 3ABF0 8004A3F0 D4016324 */  addiu      $v1, $v1, %lo(D_800F01D4)
/* 3ABF4 8004A3F4 0100043C */  lui        $a0, 1
/* 3ABF8 8004A3F8 7C428434 */  ori        $a0, $a0, 0x427c
/* 3ABFC 8004A3FC 01000524 */  addiu      $a1, $zero, 1
.L8004A400:
/* 3AC00 8004A400 000040AC */  sw         $zero, ($v0)
/* 3AC04 8004A404 040040AC */  sw         $zero, 4($v0)
/* 3AC08 8004A408 080040AC */  sw         $zero, 8($v0)
/* 3AC0C 8004A40C 0C004224 */  addiu      $v0, $v0, 0xc
/* 3AC10 8004A410 E40060A4 */  sh         $zero, 0xe4($v1)
/* 3AC14 8004A414 E80060A4 */  sh         $zero, 0xe8($v1)
/* 3AC18 8004A418 FFFFA524 */  addiu      $a1, $a1, -1
/* 3AC1C 8004A41C F8FFA104 */  bgez       $a1, .L8004A400
/* 3AC20 8004A420 21186400 */   addu      $v1, $v1, $a0
/* 3AC24 8004A424 1780023C */  lui        $v0, %hi(D_8016ED50)
/* 3AC28 8004A428 0800E003 */  jr         $ra
/* 3AC2C 8004A42C 50ED40AC */   sw        $zero, %lo(D_8016ED50)($v0)
