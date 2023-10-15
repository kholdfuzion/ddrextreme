.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80069614
/* 59E14 80069614 0E80023C */  lui        $v0, %hi(D_800DAFD8)
/* 59E18 80069618 D8AF428C */  lw         $v0, %lo(D_800DAFD8)($v0)
/* 59E1C 8006961C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 59E20 80069620 07004010 */  beqz       $v0, .L80069640
/* 59E24 80069624 1000BFAF */   sw        $ra, 0x10($sp)
/* 59E28 80069628 06004294 */  lhu        $v0, 6($v0)
/* 59E2C 8006962C 00000000 */  nop
/* 59E30 80069630 03004014 */  bnez       $v0, .L80069640
/* 59E34 80069634 00000000 */   nop
/* 59E38 80069638 60C4010C */  jal        FUN_80071180
/* 59E3C 8006963C 00000000 */   nop
.L80069640:
/* 59E40 80069640 1000BF8F */  lw         $ra, 0x10($sp)
/* 59E44 80069644 00000000 */  nop
/* 59E48 80069648 0800E003 */  jr         $ra
/* 59E4C 8006964C 1800BD27 */   addiu     $sp, $sp, 0x18
