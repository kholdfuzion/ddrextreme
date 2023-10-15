.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BD1B4
/* AD9B4 800BD1B4 1E80033C */  lui        $v1, %hi(D_801E17A8)
/* AD9B8 800BD1B8 A8176324 */  addiu      $v1, $v1, %lo(D_801E17A8)
/* AD9BC 800BD1BC 00240400 */  sll        $a0, $a0, 0x10
/* AD9C0 800BD1C0 03240400 */  sra        $a0, $a0, 0x10
/* AD9C4 800BD1C4 40100400 */  sll        $v0, $a0, 1
/* AD9C8 800BD1C8 21104400 */  addu       $v0, $v0, $a0
/* AD9CC 800BD1CC C0100200 */  sll        $v0, $v0, 3
/* AD9D0 800BD1D0 21104300 */  addu       $v0, $v0, $v1
/* AD9D4 800BD1D4 0800E003 */  jr         $ra
/* AD9D8 800BD1D8 980440A4 */   sh        $zero, 0x498($v0)
