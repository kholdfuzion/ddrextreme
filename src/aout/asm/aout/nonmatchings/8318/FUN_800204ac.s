.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800204ac
/* 10CAC 800204AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10CB0 800204B0 FF3F023C */  lui        $v0, 0x3fff
/* 10CB4 800204B4 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 10CB8 800204B8 A8FF6324 */  addiu      $v1, $v1, %lo(D_800EFFA8)
/* 10CBC 800204BC 1000BFAF */  sw         $ra, 0x10($sp)
/* 10CC0 800204C0 7400658C */  lw         $a1, 0x74($v1)
/* 10CC4 800204C4 FFFF4234 */  ori        $v0, $v0, 0xffff
/* 10CC8 800204C8 2B104500 */  sltu       $v0, $v0, $a1
/* 10CCC 800204CC 02004010 */  beqz       $v0, .L800204D8
/* 10CD0 800204D0 00000000 */   nop
/* 10CD4 800204D4 740060AC */  sw         $zero, 0x74($v1)
.L800204D8:
/* 10CD8 800204D8 AB89000C */  jal        FUN_800226ac
/* 10CDC 800204DC 04008424 */   addiu     $a0, $a0, 4
/* 10CE0 800204E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 10CE4 800204E4 00000000 */  nop
/* 10CE8 800204E8 0800E003 */  jr         $ra
/* 10CEC 800204EC 1800BD27 */   addiu     $sp, $sp, 0x18
