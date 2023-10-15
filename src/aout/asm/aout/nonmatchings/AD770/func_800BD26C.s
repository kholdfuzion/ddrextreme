.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BD26C
/* ADA6C 800BD26C 1000A88F */  lw         $t0, 0x10($sp)
/* ADA70 800BD270 1400A98F */  lw         $t1, 0x14($sp)
/* ADA74 800BD274 00240400 */  sll        $a0, $a0, 0x10
/* ADA78 800BD278 03240400 */  sra        $a0, $a0, 0x10
/* ADA7C 800BD27C 40180400 */  sll        $v1, $a0, 1
/* ADA80 800BD280 21186400 */  addu       $v1, $v1, $a0
/* ADA84 800BD284 C0180300 */  sll        $v1, $v1, 3
/* ADA88 800BD288 1E80023C */  lui        $v0, %hi(D_801E1C40)
/* ADA8C 800BD28C 401C4224 */  addiu      $v0, $v0, %lo(D_801E1C40)
/* ADA90 800BD290 21186200 */  addu       $v1, $v1, $v0
/* ADA94 800BD294 02000224 */  addiu      $v0, $zero, 2
/* ADA98 800BD298 000062A4 */  sh         $v0, ($v1)
/* ADA9C 800BD29C 040060AC */  sw         $zero, 4($v1)
/* ADAA0 800BD2A0 00030224 */  addiu      $v0, $zero, 0x300
/* ADAA4 800BD2A4 080062A4 */  sh         $v0, 8($v1)
/* ADAA8 800BD2A8 00010224 */  addiu      $v0, $zero, 0x100
/* ADAAC 800BD2AC 0A0062A4 */  sh         $v0, 0xa($v1)
/* ADAB0 800BD2B0 0C0066A4 */  sh         $a2, 0xc($v1)
/* ADAB4 800BD2B4 0E0067A4 */  sh         $a3, 0xe($v1)
/* ADAB8 800BD2B8 100065AC */  sw         $a1, 0x10($v1)
/* ADABC 800BD2BC 140068A0 */  sb         $t0, 0x14($v1)
/* ADAC0 800BD2C0 0800E003 */  jr         $ra
/* ADAC4 800BD2C4 150069A0 */   sb        $t1, 0x15($v1)
