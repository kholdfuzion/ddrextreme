.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd210
/* ADA10 800BD210 1000A88F */  lw         $t0, 0x10($sp)
/* ADA14 800BD214 1400A98F */  lw         $t1, 0x14($sp)
/* ADA18 800BD218 00240400 */  sll        $a0, $a0, 0x10
/* ADA1C 800BD21C 03240400 */  sra        $a0, $a0, 0x10
/* ADA20 800BD220 40180400 */  sll        $v1, $a0, 1
/* ADA24 800BD224 21186400 */  addu       $v1, $v1, $a0
/* ADA28 800BD228 C0180300 */  sll        $v1, $v1, 3
/* ADA2C 800BD22C 1E80023C */  lui        $v0, %hi(D_801E1C40)
/* ADA30 800BD230 401C4224 */  addiu      $v0, $v0, %lo(D_801E1C40)
/* ADA34 800BD234 21186200 */  addu       $v1, $v1, $v0
/* ADA38 800BD238 01000224 */  addiu      $v0, $zero, 1
/* ADA3C 800BD23C 000062A4 */  sh         $v0, ($v1)
/* ADA40 800BD240 040060AC */  sw         $zero, 4($v1)
/* ADA44 800BD244 00030224 */  addiu      $v0, $zero, 0x300
/* ADA48 800BD248 080062A4 */  sh         $v0, 8($v1)
/* ADA4C 800BD24C 00010224 */  addiu      $v0, $zero, 0x100
/* ADA50 800BD250 0A0062A4 */  sh         $v0, 0xa($v1)
/* ADA54 800BD254 0C0066A4 */  sh         $a2, 0xc($v1)
/* ADA58 800BD258 0E0067A4 */  sh         $a3, 0xe($v1)
/* ADA5C 800BD25C 100065AC */  sw         $a1, 0x10($v1)
/* ADA60 800BD260 140068A0 */  sb         $t0, 0x14($v1)
/* ADA64 800BD264 0800E003 */  jr         $ra
/* ADA68 800BD268 150069A0 */   sb        $t1, 0x15($v1)
