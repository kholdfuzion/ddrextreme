.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ce1f0
/* BE9F0 800CE1F0 641F063C */  lui        $a2, 0x1f64
/* BE9F4 800CE1F4 EE00C294 */  lhu        $v0, 0xee($a2)
/* BE9F8 800CE1F8 00000000 */  nop
/* BE9FC 800CE1FC 00104230 */  andi       $v0, $v0, 0x1000
/* BEA00 800CE200 05004014 */  bnez       $v0, .L800CE218
/* BEA04 800CE204 21408000 */   addu      $t0, $a0, $zero
/* BEA08 800CE208 0800E003 */  jr         $ra
/* BEA0C 800CE20C FFFF0224 */   addiu     $v0, $zero, -1
.L800CE210:
/* BEA10 800CE210 D3380308 */  j          .L800CE34C
/* BEA14 800CE214 21280000 */   addu      $a1, $zero, $zero
.L800CE218:
/* BEA18 800CE218 21280000 */  addu       $a1, $zero, $zero
/* BEA1C 800CE21C 2080043C */  lui        $a0, %hi(D_801FBD00)
/* BEA20 800CE220 00BD8394 */  lhu        $v1, %lo(D_801FBD00)($a0)
/* BEA24 800CE224 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEA28 800CE228 00106334 */  ori        $v1, $v1, 0x1000
/* BEA2C 800CE22C EE00C3A4 */  sh         $v1, 0xee($a2)
/* BEA30 800CE230 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEA34 800CE234 F8BC428C */  lw         $v0, -0x4308($v0)
/* BEA38 800CE238 FFFF0734 */  ori        $a3, $zero, 0xffff
/* BEA3C 800CE23C 00BD83A4 */  sh         $v1, -0x4300($a0)
.L800CE240:
/* BEA40 800CE240 EE00C294 */  lhu        $v0, 0xee($a2)
/* BEA44 800CE244 00000000 */  nop
/* BEA48 800CE248 00104230 */  andi       $v0, $v0, 0x1000
/* BEA4C 800CE24C 04004710 */  beq        $v0, $a3, .L800CE260
/* BEA50 800CE250 2080023C */   lui       $v0, %hi(D_801FBD04)
/* BEA54 800CE254 0100A524 */  addiu      $a1, $a1, 1
/* BEA58 800CE258 F9FFA018 */  blez       $a1, .L800CE240
/* BEA5C 800CE25C 00000000 */   nop
.L800CE260:
/* BEA60 800CE260 0A000011 */  beqz       $t0, .L800CE28C
/* BEA64 800CE264 04BD45AC */   sw        $a1, %lo(D_801FBD04)($v0)
/* BEA68 800CE268 2080043C */  lui        $a0, %hi(D_801FBD00)
/* BEA6C 800CE26C 00BD8394 */  lhu        $v1, %lo(D_801FBD00)($a0)
/* BEA70 800CE270 641F023C */  lui        $v0, 0x1f64
/* BEA74 800CE274 FFEF6330 */  andi       $v1, $v1, 0xefff
/* BEA78 800CE278 EE0043A4 */  sh         $v1, 0xee($v0)
/* BEA7C 800CE27C 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEA80 800CE280 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEA84 800CE284 F8BC428C */  lw         $v0, -0x4308($v0)
/* BEA88 800CE288 00BD83A4 */  sh         $v1, -0x4300($a0)
.L800CE28C:
/* BEA8C 800CE28C 21300000 */  addu       $a2, $zero, $zero
/* BEA90 800CE290 641F043C */  lui        $a0, 0x1f64
/* BEA94 800CE294 FFFF0334 */  ori        $v1, $zero, 0xffff
.L800CE298:
/* BEA98 800CE298 EE008294 */  lhu        $v0, 0xee($a0)
/* BEA9C 800CE29C 00000000 */  nop
/* BEAA0 800CE2A0 00104230 */  andi       $v0, $v0, 0x1000
/* BEAA4 800CE2A4 05004310 */  beq        $v0, $v1, .L800CE2BC
/* BEAA8 800CE2A8 00000000 */   nop
/* BEAAC 800CE2AC 0100C624 */  addiu      $a2, $a2, 1
/* BEAB0 800CE2B0 B900C228 */  slti       $v0, $a2, 0xb9
/* BEAB4 800CE2B4 F8FF4014 */  bnez       $v0, .L800CE298
/* BEAB8 800CE2B8 00000000 */   nop
.L800CE2BC:
/* BEABC 800CE2BC 21280000 */  addu       $a1, $zero, $zero
/* BEAC0 800CE2C0 641F023C */  lui        $v0, 0x1f64
/* BEAC4 800CE2C4 21384000 */  addu       $a3, $v0, $zero
/* BEAC8 800CE2C8 2080043C */  lui        $a0, %hi(D_801FBD00)
/* BEACC 800CE2CC FFFF0834 */  ori        $t0, $zero, 0xffff
/* BEAD0 800CE2D0 00BD8394 */  lhu        $v1, %lo(D_801FBD00)($a0)
/* BEAD4 800CE2D4 2080023C */  lui        $v0, %hi(D_801FBCF8)
/* BEAD8 800CE2D8 FFEF6330 */  andi       $v1, $v1, 0xefff
/* BEADC 800CE2DC EE00E3A4 */  sh         $v1, 0xee($a3)
/* BEAE0 800CE2E0 F8BC40AC */  sw         $zero, %lo(D_801FBCF8)($v0)
/* BEAE4 800CE2E4 F8BC428C */  lw         $v0, -0x4308($v0)
/* BEAE8 800CE2E8 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BEAEC 800CE2EC 04BD46AC */  sw         $a2, %lo(D_801FBD04)($v0)
/* BEAF0 800CE2F0 00BD83A4 */  sh         $v1, -0x4300($a0)
.L800CE2F4:
/* BEAF4 800CE2F4 EE00E294 */  lhu        $v0, 0xee($a3)
/* BEAF8 800CE2F8 00000000 */  nop
/* BEAFC 800CE2FC 00104230 */  andi       $v0, $v0, 0x1000
/* BEB00 800CE300 04004810 */  beq        $v0, $t0, .L800CE314
/* BEB04 800CE304 2080023C */   lui       $v0, %hi(D_801FBD04)
/* BEB08 800CE308 0100A524 */  addiu      $a1, $a1, 1
/* BEB0C 800CE30C F9FFA018 */  blez       $a1, .L800CE2F4
/* BEB10 800CE310 00000000 */   nop
.L800CE314:
/* BEB14 800CE314 04BD45AC */  sw         $a1, %lo(D_801FBD04)($v0)
/* BEB18 800CE318 FFFF0524 */  addiu      $a1, $zero, -1
/* BEB1C 800CE31C 21180000 */  addu       $v1, $zero, $zero
/* BEB20 800CE320 641F063C */  lui        $a2, 0x1f64
/* BEB24 800CE324 00100424 */  addiu      $a0, $zero, 0x1000
.L800CE328:
/* BEB28 800CE328 EE00C294 */  lhu        $v0, 0xee($a2)
/* BEB2C 800CE32C 00000000 */  nop
/* BEB30 800CE330 00104230 */  andi       $v0, $v0, 0x1000
/* BEB34 800CE334 B6FF4410 */  beq        $v0, $a0, .L800CE210
/* BEB38 800CE338 00000000 */   nop
/* BEB3C 800CE33C 01006324 */  addiu      $v1, $v1, 1
/* BEB40 800CE340 0F006228 */  slti       $v0, $v1, 0xf
/* BEB44 800CE344 F8FF4014 */  bnez       $v0, .L800CE328
/* BEB48 800CE348 00000000 */   nop
.L800CE34C:
/* BEB4C 800CE34C 2080023C */  lui        $v0, %hi(D_801FBD04)
/* BEB50 800CE350 04BD43AC */  sw         $v1, %lo(D_801FBD04)($v0)
/* BEB54 800CE354 0200A004 */  bltz       $a1, .L800CE360
/* BEB58 800CE358 FFFF0224 */   addiu     $v0, $zero, -1
/* BEB5C 800CE35C 21100000 */  addu       $v0, $zero, $zero
.L800CE360:
/* BEB60 800CE360 0800E003 */  jr         $ra
/* BEB64 800CE364 00000000 */   nop
