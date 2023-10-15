.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb380
/* ABB80 800BB380 FFFF0734 */  ori        $a3, $zero, 0xffff
/* ABB84 800BB384 14008010 */  beqz       $a0, .L800BB3D8
/* ABB88 800BB388 21300000 */   addu      $a2, $zero, $zero
/* ABB8C 800BB38C 21400000 */  addu       $t0, $zero, $zero
.L800BB390:
/* ABB90 800BB390 2110A600 */  addu       $v0, $a1, $a2
/* ABB94 800BB394 00004390 */  lbu        $v1, ($v0)
/* ABB98 800BB398 0100C624 */  addiu      $a2, $a2, 1
/* ABB9C 800BB39C 001A0300 */  sll        $v1, $v1, 8
/* ABBA0 800BB3A0 2638E300 */  xor        $a3, $a3, $v1
/* ABBA4 800BB3A4 0080E230 */  andi       $v0, $a3, 0x8000
.L800BB3A8:
/* ABBA8 800BB3A8 03004010 */  beqz       $v0, .L800BB3B8
/* ABBAC 800BB3AC 40100700 */   sll       $v0, $a3, 1
/* ABBB0 800BB3B0 EFEC0208 */  j          .L800BB3BC
/* ABBB4 800BB3B4 92784738 */   xori      $a3, $v0, 0x7892
.L800BB3B8:
/* ABBB8 800BB3B8 40380700 */  sll        $a3, $a3, 1
.L800BB3BC:
/* ABBBC 800BB3BC 01000825 */  addiu      $t0, $t0, 1
/* ABBC0 800BB3C0 0800022D */  sltiu      $v0, $t0, 8
/* ABBC4 800BB3C4 F8FF4014 */  bnez       $v0, .L800BB3A8
/* ABBC8 800BB3C8 0080E230 */   andi      $v0, $a3, 0x8000
/* ABBCC 800BB3CC 2B10C400 */  sltu       $v0, $a2, $a0
/* ABBD0 800BB3D0 EFFF4014 */  bnez       $v0, .L800BB390
/* ABBD4 800BB3D4 21400000 */   addu      $t0, $zero, $zero
.L800BB3D8:
/* ABBD8 800BB3D8 27100700 */  nor        $v0, $zero, $a3
/* ABBDC 800BB3DC 0800E003 */  jr         $ra
/* ABBE0 800BB3E0 FFFF4230 */   andi      $v0, $v0, 0xffff
