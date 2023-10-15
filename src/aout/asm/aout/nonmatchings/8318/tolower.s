.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel tolower
/* 175F8 80026DF8 21188000 */  addu       $v1, $a0, $zero
/* 175FC 80026DFC FF006230 */  andi       $v0, $v1, 0xff
/* 17600 80026E00 0E80013C */  lui        $at, %hi(D_800D8C0D)
/* 17604 80026E04 21082200 */  addu       $at, $at, $v0
/* 17608 80026E08 0D8C2290 */  lbu        $v0, %lo(D_800D8C0D)($at)
/* 1760C 80026E0C 00000000 */  nop
/* 17610 80026E10 01004230 */  andi       $v0, $v0, 1
/* 17614 80026E14 02004010 */  beqz       $v0, .L80026E20
/* 17618 80026E18 00000000 */   nop
/* 1761C 80026E1C 20008324 */  addiu      $v1, $a0, 0x20
.L80026E20:
/* 17620 80026E20 00160300 */  sll        $v0, $v1, 0x18
/* 17624 80026E24 0800E003 */  jr         $ra
/* 17628 80026E28 03160200 */   sra       $v0, $v0, 0x18
/* 1762C 80026E2C 00000000 */  nop
/* 17630 80026E30 00000000 */  nop
/* 17634 80026E34 00000000 */  nop
