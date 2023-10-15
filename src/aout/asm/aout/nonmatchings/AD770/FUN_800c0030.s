.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0030
/* B0830 800C0030 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0834 800C0034 1000BFAF */  sw         $ra, 0x10($sp)
/* B0838 800C0038 FE02030C */  jal        FUN_800c0bf8
/* B083C 800C003C 00000000 */   nop
/* B0840 800C0040 01004230 */  andi       $v0, $v0, 1
/* B0844 800C0044 0B004010 */  beqz       $v0, .L800C0074
/* B0848 800C0048 1F80033C */   lui       $v1, 0x801f
/* B084C 800C004C 1D6E000C */  jal        FUN_8001b874
/* B0850 800C0050 00000000 */   nop
/* B0854 800C0054 1F80033C */  lui        $v1, %hi(D_801F7090)
/* B0858 800C0058 90706290 */  lbu        $v0, %lo(D_801F7090)($v1)
/* B085C 800C005C 00000000 */  nop
/* B0860 800C0060 FE004230 */  andi       $v0, $v0, 0xfe
/* B0864 800C0064 216E000C */  jal        FUN_8001b884
/* B0868 800C0068 907062A0 */   sb        $v0, 0x7090($v1)
/* B086C 800C006C 21000308 */  j          .L800C0084
/* B0870 800C0070 00000000 */   nop
.L800C0074:
/* B0874 800C0074 90706290 */  lbu        $v0, 0x7090($v1)
/* B0878 800C0078 00000000 */  nop
/* B087C 800C007C FE004230 */  andi       $v0, $v0, 0xfe
/* B0880 800C0080 907062A0 */  sb         $v0, 0x7090($v1)
.L800C0084:
/* B0884 800C0084 1000BF8F */  lw         $ra, 0x10($sp)
/* B0888 800C0088 00000000 */  nop
/* B088C 800C008C 0800E003 */  jr         $ra
/* B0890 800C0090 1800BD27 */   addiu     $sp, $sp, 0x18
