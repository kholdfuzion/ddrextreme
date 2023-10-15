.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c3d78
/* B4578 800C3D78 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B457C 800C3D7C 1000B0AF */  sw         $s0, 0x10($sp)
/* B4580 800C3D80 21808000 */  addu       $s0, $a0, $zero
/* B4584 800C3D84 72C4033C */  lui        $v1, 0xc472
/* B4588 800C3D88 65106334 */  ori        $v1, $v1, 0x1065
/* B458C 800C3D8C 1F80023C */  lui        $v0, %hi(D_801F7404)
/* B4590 800C3D90 1400BFAF */  sw         $ra, 0x14($sp)
/* B4594 800C3D94 7E81000C */  jal        strlen
/* B4598 800C3D98 047443AC */   sw        $v1, %lo(D_801F7404)($v0)
/* B459C 800C3D9C FFFF0324 */  addiu      $v1, $zero, -1
/* B45A0 800C3DA0 21384000 */  addu       $a3, $v0, $zero
/* B45A4 800C3DA4 1700E010 */  beqz       $a3, .L800C3E04
/* B45A8 800C3DA8 21280000 */   addu      $a1, $zero, $zero
/* B45AC 800C3DAC 0080083C */  lui        $t0, 0x8000
/* B45B0 800C3DB0 C104063C */  lui        $a2, 0x4c1
/* B45B4 800C3DB4 B71DC634 */  ori        $a2, $a2, 0x1db7
/* B45B8 800C3DB8 21100502 */  addu       $v0, $s0, $a1
.L800C3DBC:
/* B45BC 800C3DBC 00004290 */  lbu        $v0, ($v0)
/* B45C0 800C3DC0 21200000 */  addu       $a0, $zero, $zero
/* B45C4 800C3DC4 00160200 */  sll        $v0, $v0, 0x18
/* B45C8 800C3DC8 26186200 */  xor        $v1, $v1, $v0
/* B45CC 800C3DCC 24106800 */  and        $v0, $v1, $t0
.L800C3DD0:
/* B45D0 800C3DD0 03004010 */  beqz       $v0, .L800C3DE0
/* B45D4 800C3DD4 40100300 */   sll       $v0, $v1, 1
/* B45D8 800C3DD8 790F0308 */  j          .L800C3DE4
/* B45DC 800C3DDC 26184600 */   xor       $v1, $v0, $a2
.L800C3DE0:
/* B45E0 800C3DE0 40180300 */  sll        $v1, $v1, 1
.L800C3DE4:
/* B45E4 800C3DE4 01008424 */  addiu      $a0, $a0, 1
/* B45E8 800C3DE8 0800822C */  sltiu      $v0, $a0, 8
/* B45EC 800C3DEC F8FF4014 */  bnez       $v0, .L800C3DD0
/* B45F0 800C3DF0 24106800 */   and       $v0, $v1, $t0
/* B45F4 800C3DF4 0100A524 */  addiu      $a1, $a1, 1
/* B45F8 800C3DF8 2B10A700 */  sltu       $v0, $a1, $a3
/* B45FC 800C3DFC EFFF4014 */  bnez       $v0, .L800C3DBC
/* B4600 800C3E00 21100502 */   addu      $v0, $s0, $a1
.L800C3E04:
/* B4604 800C3E04 1400BF8F */  lw         $ra, 0x14($sp)
/* B4608 800C3E08 1000B08F */  lw         $s0, 0x10($sp)
/* B460C 800C3E0C 1F80023C */  lui        $v0, %hi(D_801F7400)
/* B4610 800C3E10 007443AC */  sw         $v1, %lo(D_801F7400)($v0)
/* B4614 800C3E14 0800E003 */  jr         $ra
/* B4618 800C3E18 1800BD27 */   addiu     $sp, $sp, 0x18
