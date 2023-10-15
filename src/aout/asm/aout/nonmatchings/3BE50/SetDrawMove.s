.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDrawMove
/* 643A4 80073BA4 21408000 */  addu       $t0, $a0, $zero
/* 643A8 80073BA8 0400A284 */  lh         $v0, 4($a1)
/* 643AC 80073BAC 00000000 */  nop
/* 643B0 80073BB0 05004010 */  beqz       $v0, .L80073BC8
/* 643B4 80073BB4 05000424 */   addiu     $a0, $zero, 5
/* 643B8 80073BB8 0600A284 */  lh         $v0, 6($a1)
/* 643BC 80073BBC 00000000 */  nop
/* 643C0 80073BC0 03004014 */  bnez       $v0, .L80073BD0
/* 643C4 80073BC4 0001023C */   lui       $v0, 0x100
.L80073BC8:
/* 643C8 80073BC8 21200000 */  addu       $a0, $zero, $zero
/* 643CC 80073BCC 0001023C */  lui        $v0, 0x100
.L80073BD0:
/* 643D0 80073BD0 040002AD */  sw         $v0, 4($t0)
/* 643D4 80073BD4 0080023C */  lui        $v0, 0x8000
/* 643D8 80073BD8 080002AD */  sw         $v0, 8($t0)
/* 643DC 80073BDC 00140700 */  sll        $v0, $a3, 0x10
/* 643E0 80073BE0 FFFFC330 */  andi       $v1, $a2, 0xffff
/* 643E4 80073BE4 030004A1 */  sb         $a0, 3($t0)
/* 643E8 80073BE8 0000A48C */  lw         $a0, ($a1)
/* 643EC 80073BEC 25104300 */  or         $v0, $v0, $v1
/* 643F0 80073BF0 100002AD */  sw         $v0, 0x10($t0)
/* 643F4 80073BF4 0C0004AD */  sw         $a0, 0xc($t0)
/* 643F8 80073BF8 0400A28C */  lw         $v0, 4($a1)
/* 643FC 80073BFC 0800E003 */  jr         $ra
/* 64400 80073C00 140002AD */   sw        $v0, 0x14($t0)
