.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf1e0
/* AF9E0 800BF1E0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AF9E4 800BF1E4 1000BFAF */  sw         $ra, 0x10($sp)
/* AF9E8 800BF1E8 1F80023C */  lui        $v0, %hi(D_801F7088)
/* AF9EC 800BF1EC 88704324 */  addiu      $v1, $v0, %lo(D_801F7088)
/* AF9F0 800BF1F0 887040AC */  sw         $zero, 0x7088($v0)
/* AF9F4 800BF1F4 7EFB020C */  jal        FUN_800bedf8
/* AF9F8 800BF1F8 040060AC */   sw        $zero, 4($v1)
/* AF9FC 800BF1FC 1B004014 */  bnez       $v0, .L800BF26C
/* AFA00 800BF200 FFFF0224 */   addiu     $v0, $zero, -1
/* AFA04 800BF204 52FC020C */  jal        FUN_800bf148
/* AFA08 800BF208 00000000 */   nop
/* AFA0C 800BF20C CEFD020C */  jal        FUN_800bf738
/* AFA10 800BF210 00000000 */   nop
/* AFA14 800BF214 5BFC020C */  jal        FUN_800bf16c
/* AFA18 800BF218 00000000 */   nop
/* AFA1C 800BF21C 13004014 */  bnez       $v0, .L800BF26C
/* AFA20 800BF220 FFFF0224 */   addiu     $v0, $zero, -1
/* AFA24 800BF224 FBFD020C */  jal        FUN_800bf7ec
/* AFA28 800BF228 00000000 */   nop
/* AFA2C 800BF22C 48FC020C */  jal        FUN_800bf120
/* AFA30 800BF230 00000000 */   nop
/* AFA34 800BF234 52FC020C */  jal        FUN_800bf148
/* AFA38 800BF238 00000000 */   nop
/* AFA3C 800BF23C 48FC020C */  jal        FUN_800bf120
/* AFA40 800BF240 00000000 */   nop
/* AFA44 800BF244 0F80043C */  lui        $a0, %hi(D_800EE210)
/* AFA48 800BF248 C2FA020C */  jal        FUN_800beb08
/* AFA4C 800BF24C 10E28424 */   addiu     $a0, $a0, %lo(D_800EE210)
/* AFA50 800BF250 05004004 */  bltz       $v0, .L800BF268
/* AFA54 800BF254 1F80033C */   lui       $v1, %hi(D_801F708C)
/* AFA58 800BF258 01000224 */  addiu      $v0, $zero, 1
/* AFA5C 800BF25C 8C7062AC */  sw         $v0, %lo(D_801F708C)($v1)
/* AFA60 800BF260 9BFC0208 */  j          .L800BF26C
/* AFA64 800BF264 21100000 */   addu      $v0, $zero, $zero
.L800BF268:
/* AFA68 800BF268 FFFF0224 */  addiu      $v0, $zero, -1
.L800BF26C:
/* AFA6C 800BF26C 1000BF8F */  lw         $ra, 0x10($sp)
/* AFA70 800BF270 00000000 */  nop
/* AFA74 800BF274 0800E003 */  jr         $ra
/* AFA78 800BF278 1800BD27 */   addiu     $sp, $sp, 0x18
