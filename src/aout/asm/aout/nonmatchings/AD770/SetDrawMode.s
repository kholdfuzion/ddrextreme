.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDrawMode
/* AE1BC 800BD9BC 21408000 */  addu       $t0, $a0, $zero
/* AE1C0 800BD9C0 00E1033C */  lui        $v1, 0xe100
/* AE1C4 800BD9C4 1000A98F */  lw         $t1, 0x10($sp)
/* AE1C8 800BD9C8 02000224 */  addiu      $v0, $zero, 2
/* AE1CC 800BD9CC 0200C010 */  beqz       $a2, .L800BD9D8
/* AE1D0 800BD9D0 030002A1 */   sb        $v0, 3($t0)
/* AE1D4 800BD9D4 00026334 */  ori        $v1, $v1, 0x200
.L800BD9D8:
/* AE1D8 800BD9D8 0200A010 */  beqz       $a1, .L800BD9E4
/* AE1DC 800BD9DC FF09E230 */   andi      $v0, $a3, 0x9ff
/* AE1E0 800BD9E0 00044234 */  ori        $v0, $v0, 0x400
.L800BD9E4:
/* AE1E4 800BD9E4 25106200 */  or         $v0, $v1, $v0
/* AE1E8 800BD9E8 16002011 */  beqz       $t1, .L800BDA44
/* AE1EC 800BD9EC 040002AD */   sw        $v0, 4($t0)
/* AE1F0 800BD9F0 00E2033C */  lui        $v1, 0xe200
/* AE1F4 800BD9F4 02002491 */  lbu        $a0, 2($t1)
/* AE1F8 800BD9F8 00002291 */  lbu        $v0, ($t1)
/* AE1FC 800BD9FC C2200400 */  srl        $a0, $a0, 3
/* AE200 800BDA00 C0230400 */  sll        $a0, $a0, 0xf
/* AE204 800BDA04 C2100200 */  srl        $v0, $v0, 3
/* AE208 800BDA08 80120200 */  sll        $v0, $v0, 0xa
/* AE20C 800BDA0C 25104300 */  or         $v0, $v0, $v1
/* AE210 800BDA10 25208200 */  or         $a0, $a0, $v0
/* AE214 800BDA14 06002385 */  lh         $v1, 6($t1)
/* AE218 800BDA18 04002285 */  lh         $v0, 4($t1)
/* AE21C 800BDA1C 23180300 */  negu       $v1, $v1
/* AE220 800BDA20 80180300 */  sll        $v1, $v1, 2
/* AE224 800BDA24 E0036330 */  andi       $v1, $v1, 0x3e0
/* AE228 800BDA28 25208300 */  or         $a0, $a0, $v1
/* AE22C 800BDA2C 23100200 */  negu       $v0, $v0
/* AE230 800BDA30 FF004230 */  andi       $v0, $v0, 0xff
/* AE234 800BDA34 C3100200 */  sra        $v0, $v0, 3
/* AE238 800BDA38 25208200 */  or         $a0, $a0, $v0
/* AE23C 800BDA3C 92F60208 */  j          P41_OBJ_8C
/* AE240 800BDA40 080004AD */   sw        $a0, 8($t0)
.L800BDA44:
/* AE244 800BDA44 080000AD */  sw         $zero, 8($t0)
