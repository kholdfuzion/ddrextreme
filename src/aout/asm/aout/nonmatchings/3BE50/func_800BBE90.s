.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BBE90
/* AC690 800BBE90 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC694 800BBE94 1000B0AF */  sw         $s0, 0x10($sp)
/* AC698 800BBE98 1400BFAF */  sw         $ra, 0x14($sp)
/* AC69C 800BBE9C 1D6E000C */  jal        FUN_8001b874
/* AC6A0 800BBEA0 21808000 */   addu      $s0, $a0, $zero
/* AC6A4 800BBEA4 01001032 */  andi       $s0, $s0, 1
/* AC6A8 800BBEA8 04000012 */  beqz       $s0, .L800BBEBC
/* AC6AC 800BBEAC 1E80033C */   lui       $v1, %hi(D_801E1798)
/* AC6B0 800BBEB0 98176294 */  lhu        $v0, %lo(D_801E1798)($v1)
/* AC6B4 800BBEB4 B2EF0208 */  j          .L800BBEC8
/* AC6B8 800BBEB8 00014234 */   ori       $v0, $v0, 0x100
.L800BBEBC:
/* AC6BC 800BBEBC 98176294 */  lhu        $v0, 0x1798($v1)
/* AC6C0 800BBEC0 00000000 */  nop
/* AC6C4 800BBEC4 FFFE4230 */  andi       $v0, $v0, 0xfeff
.L800BBEC8:
/* AC6C8 800BBEC8 981762A4 */  sh         $v0, 0x1798($v1)
/* AC6CC 800BBECC 1E80023C */  lui        $v0, %hi(D_801E1798)
/* AC6D0 800BBED0 98174394 */  lhu        $v1, %lo(D_801E1798)($v0)
/* AC6D4 800BBED4 401F023C */  lui        $v0, 0x1f40
/* AC6D8 800BBED8 000043A4 */  sh         $v1, ($v0)
/* AC6DC 800BBEDC 216E000C */  jal        FUN_8001b884
/* AC6E0 800BBEE0 00000000 */   nop
/* AC6E4 800BBEE4 1400BF8F */  lw         $ra, 0x14($sp)
/* AC6E8 800BBEE8 1000B08F */  lw         $s0, 0x10($sp)
/* AC6EC 800BBEEC 0800E003 */  jr         $ra
/* AC6F0 800BBEF0 1800BD27 */   addiu     $sp, $sp, 0x18
