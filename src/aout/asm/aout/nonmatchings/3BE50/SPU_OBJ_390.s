.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_390
/* A7844 800B7044 E3DD020C */  jal        _spu_Fw1ts
/* A7848 800B7048 23883002 */   subu      $s1, $s1, $s0
/* A784C 800B704C E3DD020C */  jal        _spu_Fw1ts
/* A7850 800B7050 00000000 */   nop
/* A7854 800B7054 C9FF2016 */  bnez       $s1, .L800B6F7C
/* A7858 800B7058 4100222E */   sltiu     $v0, $s1, 0x41
.L800B705C:
/* A785C 800B705C 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A7860 800B7060 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A7864 800B7064 00000000 */  nop
/* A7868 800B7068 AA014494 */  lhu        $a0, 0x1aa($v0)
/* A786C 800B706C FFFF6532 */  andi       $a1, $s3, 0xffff
/* A7870 800B7070 CFFF8330 */  andi       $v1, $a0, 0xffcf
/* A7874 800B7074 AA0143A4 */  sh         $v1, 0x1aa($v0)
/* A7878 800B7078 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A787C 800B707C 00000000 */  nop
/* A7880 800B7080 FF074230 */  andi       $v0, $v0, 0x7ff
/* A7884 800B7084 14004510 */  beq        $v0, $a1, SPU_OBJ_424
/* A7888 800B7088 21180000 */   addu      $v1, $zero, $zero
/* A788C 800B708C 01006324 */  addiu      $v1, $v1, 1
.L800B7090:
/* A7890 800B7090 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7894 800B7094 08004014 */  bnez       $v0, .L800B70B8
/* A7898 800B7098 00000000 */   nop
/* A789C 800B709C 0180043C */  lui        $a0, %hi(D_80017310)
/* A78A0 800B70A0 10738424 */  addiu      $a0, $a0, %lo(D_80017310)
/* A78A4 800B70A4 0180053C */  lui        $a1, %hi(D_80017344)
/* A78A8 800B70A8 755F000C */  jal        FUN_80017dd4
/* A78AC 800B70AC 4473A524 */   addiu     $a1, $a1, %lo(D_80017344)
/* A78B0 800B70B0 36DC0208 */  j          SPU_OBJ_424
/* A78B4 800B70B4 00000000 */   nop
.L800B70B8:
/* A78B8 800B70B8 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A78BC 800B70BC F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A78C0 800B70C0 00000000 */  nop
/* A78C4 800B70C4 AE014294 */  lhu        $v0, 0x1ae($v0)
/* A78C8 800B70C8 00000000 */  nop
/* A78CC 800B70CC FF074230 */  andi       $v0, $v0, 0x7ff
/* A78D0 800B70D0 EFFF4514 */  bne        $v0, $a1, .L800B7090
/* A78D4 800B70D4 01006324 */   addiu     $v1, $v1, 1
