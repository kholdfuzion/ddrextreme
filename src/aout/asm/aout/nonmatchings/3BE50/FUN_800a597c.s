.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a597c
/* 9617C 800A597C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 96180 800A5980 21300000 */  addu       $a2, $zero, $zero
/* 96184 800A5984 1800B2AF */  sw         $s2, 0x18($sp)
/* 96188 800A5988 0F80123C */  lui        $s2, 0x800f
/* 9618C 800A598C 1400B1AF */  sw         $s1, 0x14($sp)
/* 96190 800A5990 641F113C */  lui        $s1, 0x1f64
/* 96194 800A5994 00F00724 */  addiu      $a3, $zero, -0x1000
/* 96198 800A5998 1000B0AF */  sw         $s0, 0x10($sp)
/* 9619C 800A599C 641F103C */  lui        $s0, 0x1f64
/* 961A0 800A59A0 641F193C */  lui        $t9, 0x1f64
/* 961A4 800A59A4 641F183C */  lui        $t8, 0x1f64
/* 961A8 800A59A8 641F0F3C */  lui        $t7, 0x1f64
/* 961AC 800A59AC 641F0E3C */  lui        $t6, 0x1f64
/* 961B0 800A59B0 641F0D3C */  lui        $t5, 0x1f64
/* 961B4 800A59B4 1B80023C */  lui        $v0, %hi(D_801B2EF0)
/* 961B8 800A59B8 F02E4224 */  addiu      $v0, $v0, %lo(D_801B2EF0)
/* 961BC 800A59BC 22004924 */  addiu      $t1, $v0, 0x22
/* 961C0 800A59C0 1B80033C */  lui        $v1, %hi(D_801B2EC0)
/* 961C4 800A59C4 C02E6824 */  addiu      $t0, $v1, %lo(D_801B2EC0)
/* 961C8 800A59C8 01000C24 */  addiu      $t4, $zero, 1
/* 961CC 800A59CC 02000B24 */  addiu      $t3, $zero, 2
/* 961D0 800A59D0 1B800A3C */  lui        $t2, 0x801b
/* 961D4 800A59D4 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 961D8 800A59D8 0200C528 */  slti       $a1, $a2, 2
.L800A59DC:
/* 961DC 800A59DC 000000AD */  sw         $zero, ($t0)
/* 961E0 800A59E0 00000395 */  lhu        $v1, ($t0)
/* 961E4 800A59E4 0400A010 */  beqz       $a1, .L800A59F8
/* 961E8 800A59E8 00000000 */   nop
/* 961EC 800A59EC 00002295 */  lhu        $v0, ($t1)
/* 961F0 800A59F0 00036334 */  ori        $v1, $v1, 0x300
/* 961F4 800A59F4 24184300 */  and        $v1, $v0, $v1
.L800A59F8:
/* 961F8 800A59F8 1300CC10 */  beq        $a2, $t4, .L800A5A48
/* 961FC 800A59FC 27200300 */   nor       $a0, $zero, $v1
/* 96200 800A5A00 0500A010 */  beqz       $a1, .L800A5A18
/* 96204 800A5A04 00000000 */   nop
/* 96208 800A5A08 0900C010 */  beqz       $a2, .L800A5A30
/* 9620C 800A5A0C 24188700 */   and       $v1, $a0, $a3
/* 96210 800A5A10 A2960208 */  j          .L800A5A88
/* 96214 800A5A14 2C002925 */   addiu     $t1, $t1, 0x2c
.L800A5A18:
/* 96218 800A5A18 1200CB10 */  beq        $a2, $t3, .L800A5A64
/* 9621C 800A5A1C 03000224 */   addiu     $v0, $zero, 3
/* 96220 800A5A20 1700C210 */  beq        $a2, $v0, .L800A5A80
/* 96224 800A5A24 24108700 */   and       $v0, $a0, $a3
/* 96228 800A5A28 A2960208 */  j          .L800A5A88
/* 9622C 800A5A2C 2C002925 */   addiu     $t1, $t1, 0x2c
.L800A5A30:
/* 96230 800A5A30 00110400 */  sll        $v0, $a0, 4
/* 96234 800A5A34 24104700 */  and        $v0, $v0, $a3
/* 96238 800A5A38 E20023A6 */  sh         $v1, 0xe2($s1)
/* 9623C 800A5A3C E40002A6 */  sh         $v0, 0xe4($s0)
/* 96240 800A5A40 A2960208 */  j          .L800A5A88
/* 96244 800A5A44 2C002925 */   addiu     $t1, $t1, 0x2c
.L800A5A48:
/* 96248 800A5A48 24188700 */  and        $v1, $a0, $a3
/* 9624C 800A5A4C 00110400 */  sll        $v0, $a0, 4
/* 96250 800A5A50 24104700 */  and        $v0, $v0, $a3
/* 96254 800A5A54 FE0023A7 */  sh         $v1, 0xfe($t9)
/* 96258 800A5A58 E00002A7 */  sh         $v0, 0xe0($t8)
/* 9625C 800A5A5C A2960208 */  j          .L800A5A88
/* 96260 800A5A60 2C002925 */   addiu     $t1, $t1, 0x2c
.L800A5A64:
/* 96264 800A5A64 24188700 */  and        $v1, $a0, $a3
/* 96268 800A5A68 00110400 */  sll        $v0, $a0, 4
/* 9626C 800A5A6C 24104700 */  and        $v0, $v0, $a3
/* 96270 800A5A70 FA00E3A5 */  sh         $v1, 0xfa($t7)
/* 96274 800A5A74 FC00C2A5 */  sh         $v0, 0xfc($t6)
/* 96278 800A5A78 A2960208 */  j          .L800A5A88
/* 9627C 800A5A7C 2C002925 */   addiu     $t1, $t1, 0x2c
.L800A5A80:
/* 96280 800A5A80 E600A2A5 */  sh         $v0, 0xe6($t5)
/* 96284 800A5A84 2C002925 */  addiu      $t1, $t1, 0x2c
.L800A5A88:
/* 96288 800A5A88 04000825 */  addiu      $t0, $t0, 4
/* 9628C 800A5A8C 0100C624 */  addiu      $a2, $a2, 1
/* 96290 800A5A90 0400C228 */  slti       $v0, $a2, 4
/* 96294 800A5A94 482F40AD */  sw         $zero, 0x2f48($t2)
/* 96298 800A5A98 482F438D */  lw         $v1, 0x2f48($t2)
/* 9629C 800A5A9C CFFF4014 */  bnez       $v0, .L800A59DC
/* 962A0 800A5AA0 0200C528 */   slti      $a1, $a2, 2
/* 962A4 800A5AA4 10000624 */  addiu      $a2, $zero, 0x10
/* 962A8 800A5AA8 1B80023C */  lui        $v0, %hi(D_801B2ED0)
/* 962AC 800A5AAC D02E4224 */  addiu      $v0, $v0, %lo(D_801B2ED0)
/* 962B0 800A5AB0 10004224 */  addiu      $v0, $v0, 0x10
.L800A5AB4:
/* 962B4 800A5AB4 000040A0 */  sb         $zero, ($v0)
/* 962B8 800A5AB8 FFFFC624 */  addiu      $a2, $a2, -1
/* 962BC 800A5ABC FDFFC104 */  bgez       $a2, .L800A5AB4
/* 962C0 800A5AC0 FFFF4224 */   addiu     $v0, $v0, -1
/* 962C4 800A5AC4 C4C6428E */  lw         $v0, -0x393c($s2)
/* 962C8 800A5AC8 00000000 */  nop
/* 962CC 800A5ACC 05004014 */  bnez       $v0, .L800A5AE4
/* 962D0 800A5AD0 01000224 */   addiu     $v0, $zero, 1
/* 962D4 800A5AD4 C4C642AE */  sw         $v0, -0x393c($s2)
/* 962D8 800A5AD8 21200000 */  addu       $a0, $zero, $zero
/* 962DC 800A5ADC D79A020C */  jal        FUN_800a6b5c
/* 962E0 800A5AE0 21280000 */   addu      $a1, $zero, $zero
.L800A5AE4:
/* 962E4 800A5AE4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 962E8 800A5AE8 1800B28F */  lw         $s2, 0x18($sp)
/* 962EC 800A5AEC 1400B18F */  lw         $s1, 0x14($sp)
/* 962F0 800A5AF0 1000B08F */  lw         $s0, 0x10($sp)
/* 962F4 800A5AF4 0800E003 */  jr         $ra
/* 962F8 800A5AF8 2000BD27 */   addiu     $sp, $sp, 0x20
