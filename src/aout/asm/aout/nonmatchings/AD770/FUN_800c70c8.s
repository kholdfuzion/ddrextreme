.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c70c8
/* B78C8 800C70C8 1F80043C */  lui        $a0, %hi(D_801F7418)
/* B78CC 800C70CC 18748424 */  addiu      $a0, $a0, %lo(D_801F7418)
/* B78D0 800C70D0 1800828C */  lw         $v0, 0x18($a0)
/* B78D4 800C70D4 FBFF0324 */  addiu      $v1, $zero, -5
/* B78D8 800C70D8 24104300 */  and        $v0, $v0, $v1
/* B78DC 800C70DC 08004234 */  ori        $v0, $v0, 8
/* B78E0 800C70E0 BFFF0324 */  addiu      $v1, $zero, -0x41
/* B78E4 800C70E4 24104300 */  and        $v0, $v0, $v1
/* B78E8 800C70E8 80804234 */  ori        $v0, $v0, 0x8080
/* B78EC 800C70EC 0800E003 */  jr         $ra
/* B78F0 800C70F0 180082AC */   sw        $v0, 0x18($a0)
