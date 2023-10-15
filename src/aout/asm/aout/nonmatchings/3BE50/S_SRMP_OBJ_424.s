.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_424
/* A8738 800B7F38 05008016 */  bnez       $s4, .L800B7F50
/* A873C 800B7F3C 00000000 */   nop
/* A8740 800B7F40 0300C016 */  bnez       $s6, .L800B7F50
/* A8744 800B7F44 00000000 */   nop
/* A8748 800B7F48 0300C013 */  beqz       $fp, .L800B7F58
/* A874C 800B7F4C 00000000 */   nop
.L800B7F50:
/* A8750 800B7F50 FDDF020C */  jal        _spu_setReverbAttr
/* A8754 800B7F54 1000A427 */   addiu     $a0, $sp, 0x10
.L800B7F58:
/* A8758 800B7F58 5800A88F */  lw         $t0, 0x58($sp)
/* A875C 800B7F5C 00000000 */  nop
/* A8760 800B7F60 05000011 */  beqz       $t0, .L800B7F78
/* A8764 800B7F64 00000000 */   nop
/* A8768 800B7F68 0F80043C */  lui        $a0, %hi(D_800EC794)
/* A876C 800B7F6C 94C7848C */  lw         $a0, %lo(D_800EC794)($a0)
/* A8770 800B7F70 21E2020C */  jal        SpuClearReverbWorkArea
/* A8774 800B7F74 00000000 */   nop
.L800B7F78:
/* A8778 800B7F78 0E008012 */  beqz       $s4, .L800B7FB4
/* A877C 800B7F7C D1000424 */   addiu     $a0, $zero, 0xd1
/* A8780 800B7F80 0F80053C */  lui        $a1, %hi(D_800EC78C)
/* A8784 800B7F84 8CC7A58C */  lw         $a1, %lo(D_800EC78C)($a1)
/* A8788 800B7F88 70DD020C */  jal        _spu_FsetRXX
/* A878C 800B7F8C 21300000 */   addu      $a2, $zero, $zero
/* A8790 800B7F90 0900E012 */  beqz       $s7, S_SRMP_OBJ_4A4
/* A8794 800B7F94 21100000 */   addu      $v0, $zero, $zero
/* A8798 800B7F98 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A879C 800B7F9C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A87A0 800B7FA0 00000000 */  nop
/* A87A4 800B7FA4 AA016294 */  lhu        $v0, 0x1aa($v1)
/* A87A8 800B7FA8 00000000 */  nop
/* A87AC 800B7FAC 80004234 */  ori        $v0, $v0, 0x80
/* A87B0 800B7FB0 AA0162A4 */  sh         $v0, 0x1aa($v1)
.L800B7FB4:
/* A87B4 800B7FB4 21100000 */  addu       $v0, $zero, $zero
