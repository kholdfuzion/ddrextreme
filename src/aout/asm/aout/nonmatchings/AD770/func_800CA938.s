.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CA938
/* BB138 800CA938 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BB13C 800CA93C 1000B0AF */  sw         $s0, 0x10($sp)
/* BB140 800CA940 1400BFAF */  sw         $ra, 0x14($sp)
/* BB144 800CA944 622A030C */  jal        FUN_800ca988
/* BB148 800CA948 21808000 */   addu      $s0, $a0, $zero
/* BB14C 800CA94C 03004014 */  bnez       $v0, .L800CA95C
/* BB150 800CA950 21200002 */   addu      $a0, $s0, $zero
/* BB154 800CA954 5E2A0308 */  j          .L800CA978
/* BB158 800CA958 F4FF0224 */   addiu     $v0, $zero, -0xc
.L800CA95C:
/* BB15C 800CA95C 2080053C */  lui        $a1, %hi(D_801FBCA8)
/* BB160 800CA960 7D2D030C */  jal        FUN_800cb5f4
/* BB164 800CA964 A8BCA524 */   addiu     $a1, $a1, %lo(D_801FBCA8)
/* BB168 800CA968 03004014 */  bnez       $v0, .L800CA978
/* BB16C 800CA96C 00000000 */   nop
/* BB170 800CA970 352D030C */  jal        FUN_800cb4d4
/* BB174 800CA974 21200002 */   addu      $a0, $s0, $zero
.L800CA978:
/* BB178 800CA978 1400BF8F */  lw         $ra, 0x14($sp)
/* BB17C 800CA97C 1000B08F */  lw         $s0, 0x10($sp)
/* BB180 800CA980 0800E003 */  jr         $ra
/* BB184 800CA984 1800BD27 */   addiu     $sp, $sp, 0x18
