.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be458
/* AEC58 800BE458 FFFF0234 */  ori        $v0, $zero, 0xffff
/* AEC5C 800BE45C 000082A4 */  sh         $v0, ($a0)
/* AEC60 800BE460 50500224 */  addiu      $v0, $zero, 0x5050
/* AEC64 800BE464 000082A4 */  sh         $v0, ($a0)
/* AEC68 800BE468 40400224 */  addiu      $v0, $zero, 0x4040
/* AEC6C 800BE46C 000082A4 */  sh         $v0, ($a0)
/* AEC70 800BE470 1F80023C */  lui        $v0, %hi(D_801F6FF8)
/* AEC74 800BE474 000085A4 */  sh         $a1, ($a0)
/* AEC78 800BE478 F86F40AC */  sw         $zero, %lo(D_801F6FF8)($v0)
/* AEC7C 800BE47C F86F428C */  lw         $v0, 0x6ff8($v0)
/* AEC80 800BE480 0800E003 */  jr         $ra
/* AEC84 800BE484 FEFF0224 */   addiu     $v0, $zero, -2
