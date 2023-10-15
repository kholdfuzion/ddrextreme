.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cdeb4
/* BE6B4 800CDEB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BE6B8 800CDEB8 1000BFAF */  sw         $ra, 0x10($sp)
/* BE6BC 800CDEBC 8639030C */  jal        FUN_800ce618
/* BE6C0 800CDEC0 21200000 */   addu      $a0, $zero, $zero
/* BE6C4 800CDEC4 08004004 */  bltz       $v0, .L800CDEE8
/* BE6C8 800CDEC8 21200000 */   addu      $a0, $zero, $zero
/* BE6CC 800CDECC 9139030C */  jal        FUN_800ce644
/* BE6D0 800CDED0 21288000 */   addu      $a1, $a0, $zero
/* BE6D4 800CDED4 21184000 */  addu       $v1, $v0, $zero
/* BE6D8 800CDED8 04006004 */  bltz       $v1, .L800CDEEC
/* BE6DC 800CDEDC FFFF0224 */   addiu     $v0, $zero, -1
/* BE6E0 800CDEE0 BB370308 */  j          .L800CDEEC
/* BE6E4 800CDEE4 21100000 */   addu      $v0, $zero, $zero
.L800CDEE8:
/* BE6E8 800CDEE8 FFFF0224 */  addiu      $v0, $zero, -1
.L800CDEEC:
/* BE6EC 800CDEEC 1000BF8F */  lw         $ra, 0x10($sp)
/* BE6F0 800CDEF0 00000000 */  nop
/* BE6F4 800CDEF4 0800E003 */  jr         $ra
/* BE6F8 800CDEF8 1800BD27 */   addiu     $sp, $sp, 0x18
