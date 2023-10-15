.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf588
/* AFD88 800BF588 0C00A018 */  blez       $a1, .L800BF5BC
/* AFD8C 800BF58C 21180000 */   addu      $v1, $zero, $zero
/* AFD90 800BF590 641F063C */  lui        $a2, 0x1f64
/* AFD94 800BF594 B400C634 */  ori        $a2, $a2, 0xb4
/* AFD98 800BF598 40100300 */  sll        $v0, $v1, 1
.L800BF59C:
/* AFD9C 800BF59C 21104400 */  addu       $v0, $v0, $a0
/* AFDA0 800BF5A0 00004294 */  lhu        $v0, ($v0)
/* AFDA4 800BF5A4 00000000 */  nop
/* AFDA8 800BF5A8 0000C2A4 */  sh         $v0, ($a2)
/* AFDAC 800BF5AC 01006324 */  addiu      $v1, $v1, 1
/* AFDB0 800BF5B0 2A106500 */  slt        $v0, $v1, $a1
/* AFDB4 800BF5B4 F9FF4014 */  bnez       $v0, .L800BF59C
/* AFDB8 800BF5B8 40100300 */   sll       $v0, $v1, 1
.L800BF5BC:
/* AFDBC 800BF5BC 1F80023C */  lui        $v0, %hi(D_801F7082)
/* AFDC0 800BF5C0 30570324 */  addiu      $v1, $zero, 0x5730
/* AFDC4 800BF5C4 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* AFDC8 800BF5C8 1F80023C */  lui        $v0, %hi(D_801F7080)
/* AFDCC 800BF5CC 0800E003 */  jr         $ra
/* AFDD0 800BF5D0 807043A4 */   sh        $v1, %lo(D_801F7080)($v0)
