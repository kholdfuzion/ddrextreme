.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a91a0
/* 999A0 800A91A0 0F80023C */  lui        $v0, %hi(D_800F0034)
/* 999A4 800A91A4 34004480 */  lb         $a0, %lo(D_800F0034)($v0)
/* 999A8 800A91A8 00000000 */  nop
/* 999AC 800A91AC 0B008018 */  blez       $a0, .L800A91DC
/* 999B0 800A91B0 1C80023C */   lui       $v0, %hi(D_801BFBB0)
/* 999B4 800A91B4 B0FB438C */  lw         $v1, %lo(D_801BFBB0)($v0)
/* 999B8 800A91B8 00000000 */  nop
/* 999BC 800A91BC 05008310 */  beq        $a0, $v1, .L800A91D4
/* 999C0 800A91C0 B0FB4224 */   addiu     $v0, $v0, -0x450
/* 999C4 800A91C4 0400428C */  lw         $v0, 4($v0)
/* 999C8 800A91C8 00000000 */  nop
/* 999CC 800A91CC 03008214 */  bne        $a0, $v0, .L800A91DC
/* 999D0 800A91D0 00000000 */   nop
.L800A91D4:
/* 999D4 800A91D4 0800E003 */  jr         $ra
/* 999D8 800A91D8 01000224 */   addiu     $v0, $zero, 1
.L800A91DC:
/* 999DC 800A91DC 0800E003 */  jr         $ra
/* 999E0 800A91E0 21100000 */   addu      $v0, $zero, $zero
