.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_19AC
/* A190 80019990 00000295 */  lhu        $v0, ($t0)
/* A194 80019994 00000000 */  nop
/* A198 80019998 3F004230 */  andi       $v0, $v0, 0x3f
/* A19C 8001999C 06004014 */  bnez       $v0, .L800199B8
/* A1A0 800199A0 060003A5 */   sh        $v1, 6($t0)
/* A1A4 800199A4 04000295 */  lhu        $v0, 4($t0)
/* A1A8 800199A8 00000000 */  nop
/* A1AC 800199AC 3F004230 */  andi       $v0, $v0, 0x3f
/* A1B0 800199B0 37004010 */  beqz       $v0, .L80019A90
/* A1B4 800199B4 FF05023C */   lui       $v0, 0x5ff
.L800199B8:
/* A1B8 800199B8 FF00063C */  lui        $a2, 0xff
/* A1BC 800199BC FFFFC634 */  ori        $a2, $a2, 0xffff
/* A1C0 800199C0 FFE4043C */  lui        $a0, 0xe4ff
/* A1C4 800199C4 FFFF8434 */  ori        $a0, $a0, 0xffff
/* A1C8 800199C8 FF03073C */  lui        $a3, 0x3ff
/* A1CC 800199CC 0F80053C */  lui        $a1, %hi(D_800EE758)
/* A1D0 800199D0 58E7A524 */  addiu      $a1, $a1, %lo(D_800EE758)
/* A1D4 800199D4 0F80103C */  lui        $s0, %hi(D_800EE780)
/* A1D8 800199D8 80E71026 */  addiu      $s0, $s0, %lo(D_800EE780)
/* A1DC 800199DC 24100602 */  and        $v0, $s0, $a2
/* A1E0 800199E0 0008033C */  lui        $v1, 0x800
/* A1E4 800199E4 25104300 */  or         $v0, $v0, $v1
/* A1E8 800199E8 00E3113C */  lui        $s1, 0xe300
/* A1EC 800199EC 00E5123C */  lui        $s2, 0xe500
/* A1F0 800199F0 0000A2AC */  sw         $v0, ($a1)
/* A1F4 800199F4 00E6023C */  lui        $v0, 0xe600
/* A1F8 800199F8 24302601 */  and        $a2, $t1, $a2
/* A1FC 800199FC 0060033C */  lui        $v1, 0x6000
/* A200 80019A00 2530C300 */  or         $a2, $a2, $v1
/* A204 80019A04 1000A2AC */  sw         $v0, 0x10($a1)
/* A208 80019A08 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A20C 80019A0C A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A210 80019A10 00E1033C */  lui        $v1, 0xe100
/* A214 80019A14 0400B1AC */  sw         $s1, 4($a1)
/* A218 80019A18 0800A4AC */  sw         $a0, 8($a1)
/* A21C 80019A1C 0C00B2AC */  sw         $s2, 0xc($a1)
/* A220 80019A20 0000448C */  lw         $a0, ($v0)
/* A224 80019A24 C2170900 */  srl        $v0, $t1, 0x1f
/* A228 80019A28 80120200 */  sll        $v0, $v0, 0xa
/* A22C 80019A2C 25104300 */  or         $v0, $v0, $v1
/* A230 80019A30 1800A6AC */  sw         $a2, 0x18($a1)
/* A234 80019A34 FF078430 */  andi       $a0, $a0, 0x7ff
/* A238 80019A38 25208200 */  or         $a0, $a0, $v0
/* A23C 80019A3C 1400A4AC */  sw         $a0, 0x14($a1)
/* A240 80019A40 0000028D */  lw         $v0, ($t0)
/* A244 80019A44 FFFFE734 */  ori        $a3, $a3, 0xffff
/* A248 80019A48 1C00A2AC */  sw         $v0, 0x1c($a1)
/* A24C 80019A4C 0400028D */  lw         $v0, 4($t0)
/* A250 80019A50 03000424 */  addiu      $a0, $zero, 3
/* A254 80019A54 000007AE */  sw         $a3, ($s0)
/* A258 80019A58 2268000C */  jal        SYS_OBJ_20A4
/* A25C 80019A5C 2000A2AC */   sw        $v0, 0x20($a1)
/* A260 80019A60 04000424 */  addiu      $a0, $zero, 4
/* A264 80019A64 25105100 */  or         $v0, $v0, $s1
/* A268 80019A68 2268000C */  jal        SYS_OBJ_20A4
/* A26C 80019A6C 040002AE */   sw        $v0, 4($s0)
/* A270 80019A70 05000424 */  addiu      $a0, $zero, 5
/* A274 80019A74 00E4033C */  lui        $v1, 0xe400
/* A278 80019A78 25104300 */  or         $v0, $v0, $v1
/* A27C 80019A7C 2268000C */  jal        SYS_OBJ_20A4
/* A280 80019A80 080002AE */   sw        $v0, 8($s0)
/* A284 80019A84 25105200 */  or         $v0, $v0, $s2
/* A288 80019A88 C0660008 */  j          SYS_OBJ_1B1C
/* A28C 80019A8C 0C0002AE */   sw        $v0, 0xc($s0)
.L80019A90:
/* A290 80019A90 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A294 80019A94 FF00033C */  lui        $v1, 0xff
/* A298 80019A98 FFFF6334 */  ori        $v1, $v1, 0xffff
/* A29C 80019A9C 0F80063C */  lui        $a2, %hi(D_800EE758)
/* A2A0 80019AA0 58E7C624 */  addiu      $a2, $a2, %lo(D_800EE758)
/* A2A4 80019AA4 0000C2AC */  sw         $v0, ($a2)
/* A2A8 80019AA8 00E6023C */  lui        $v0, 0xe600
/* A2AC 80019AAC 24182301 */  and        $v1, $t1, $v1
/* A2B0 80019AB0 0002053C */  lui        $a1, 0x200
/* A2B4 80019AB4 0400C2AC */  sw         $v0, 4($a2)
/* A2B8 80019AB8 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A2BC 80019ABC A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A2C0 80019AC0 25186500 */  or         $v1, $v1, $a1
/* A2C4 80019AC4 0000448C */  lw         $a0, ($v0)
/* A2C8 80019AC8 C2170900 */  srl        $v0, $t1, 0x1f
/* A2CC 80019ACC 80120200 */  sll        $v0, $v0, 0xa
/* A2D0 80019AD0 0C00C3AC */  sw         $v1, 0xc($a2)
/* A2D4 80019AD4 00E1033C */  lui        $v1, 0xe100
/* A2D8 80019AD8 25104300 */  or         $v0, $v0, $v1
/* A2DC 80019ADC FF078430 */  andi       $a0, $a0, 0x7ff
/* A2E0 80019AE0 25208200 */  or         $a0, $a0, $v0
/* A2E4 80019AE4 0800C4AC */  sw         $a0, 8($a2)
/* A2E8 80019AE8 0000028D */  lw         $v0, ($t0)
/* A2EC 80019AEC 00000000 */  nop
/* A2F0 80019AF0 1000C2AC */  sw         $v0, 0x10($a2)
/* A2F4 80019AF4 0400028D */  lw         $v0, 4($t0)
/* A2F8 80019AF8 00000000 */  nop
/* A2FC 80019AFC 1400C2AC */  sw         $v0, 0x14($a2)
