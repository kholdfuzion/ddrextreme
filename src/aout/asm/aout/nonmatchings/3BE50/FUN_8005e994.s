.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e994
/* 4F194 8005E994 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 4F198 8005E998 0180023C */  lui        $v0, %hi(D_80014450)
/* 4F19C 8005E99C 50444324 */  addiu      $v1, $v0, %lo(D_80014450)
/* 4F1A0 8005E9A0 5044458C */  lw         $a1, 0x4450($v0)
/* 4F1A4 8005E9A4 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 4F1A8 8005E9A8 1800BFAF */  sw         $ra, 0x18($sp)
/* 4F1AC 8005E9AC 0400668C */  lw         $a2, 4($v1)
/* 4F1B0 8005E9B0 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 4F1B4 8005E9B4 1000A5AF */  sw         $a1, 0x10($sp)
/* 4F1B8 8005E9B8 1400A6AF */  sw         $a2, 0x14($sp)
/* 4F1BC 8005E9BC 20004380 */  lb         $v1, 0x20($v0)
/* 4F1C0 8005E9C0 00000000 */  nop
/* 4F1C4 8005E9C4 06006010 */  beqz       $v1, .L8005E9E0
/* 4F1C8 8005E9C8 21608000 */   addu      $t4, $a0, $zero
/* 4F1CC 8005E9CC 12004480 */  lb         $a0, 0x12($v0)
/* 4F1D0 8005E9D0 E389020C */  jal        FUN_800a278c
/* 4F1D4 8005E9D4 00000000 */   nop
/* 4F1D8 8005E9D8 DA7A0108 */  j          .L8005EB68
/* 4F1DC 8005E9DC 00000000 */   nop
.L8005E9E0:
/* 4F1E0 8005E9E0 21380000 */  addu       $a3, $zero, $zero
/* 4F1E4 8005E9E4 07000F24 */  addiu      $t7, $zero, 7
/* 4F1E8 8005E9E8 21704000 */  addu       $t6, $v0, $zero
/* 4F1EC 8005E9EC 9400CD25 */  addiu      $t5, $t6, 0x94
/* 4F1F0 8005E9F0 FFFF0B24 */  addiu      $t3, $zero, -1
/* 4F1F4 8005E9F4 1000AA27 */  addiu      $t2, $sp, 0x10
/* 4F1F8 8005E9F8 80100700 */  sll        $v0, $a3, 2
.L8005E9FC:
/* 4F1FC 8005E9FC 21184700 */  addu       $v1, $v0, $a3
/* 4F200 8005EA00 C0210300 */  sll        $a0, $v1, 7
/* 4F204 8005EA04 21186400 */  addu       $v1, $v1, $a0
/* 4F208 8005EA08 40190300 */  sll        $v1, $v1, 5
/* 4F20C 8005EA0C 23186700 */  subu       $v1, $v1, $a3
/* 4F210 8005EA10 80180300 */  sll        $v1, $v1, 2
/* 4F214 8005EA14 21186E00 */  addu       $v1, $v1, $t6
/* 4F218 8005EA18 8A006390 */  lbu        $v1, 0x8a($v1)
/* 4F21C 8005EA1C 00000000 */  nop
/* 4F220 8005EA20 20006F10 */  beq        $v1, $t7, .L8005EAA4
/* 4F224 8005EA24 21404000 */   addu      $t0, $v0, $zero
/* 4F228 8005EA28 1E006010 */  beqz       $v1, .L8005EAA4
/* 4F22C 8005EA2C 21280000 */   addu      $a1, $zero, $zero
/* 4F230 8005EA30 21300000 */  addu       $a2, $zero, $zero
/* 4F234 8005EA34 917A0108 */  j          .L8005EA44
/* 4F238 8005EA38 0100E924 */   addiu     $t1, $a3, 1
.L8005EA3C:
/* 4F23C 8005EA3C 0100C624 */  addiu      $a2, $a2, 1
/* 4F240 8005EA40 0100A524 */  addiu      $a1, $a1, 1
.L8005EA44:
/* 4F244 8005EA44 0700C228 */  slti       $v0, $a2, 7
/* 4F248 8005EA48 0D004010 */  beqz       $v0, .L8005EA80
/* 4F24C 8005EA4C C0200600 */   sll       $a0, $a2, 3
/* 4F250 8005EA50 21100701 */  addu       $v0, $t0, $a3
/* 4F254 8005EA54 C0190200 */  sll        $v1, $v0, 7
/* 4F258 8005EA58 21104300 */  addu       $v0, $v0, $v1
/* 4F25C 8005EA5C 40110200 */  sll        $v0, $v0, 5
/* 4F260 8005EA60 23104700 */  subu       $v0, $v0, $a3
/* 4F264 8005EA64 80100200 */  sll        $v0, $v0, 2
/* 4F268 8005EA68 21208200 */  addu       $a0, $a0, $v0
/* 4F26C 8005EA6C 21208D00 */  addu       $a0, $a0, $t5
/* 4F270 8005EA70 00008284 */  lh         $v0, ($a0)
/* 4F274 8005EA74 00000000 */  nop
/* 4F278 8005EA78 F0FF4B14 */  bne        $v0, $t3, .L8005EA3C
/* 4F27C 8005EA7C 00000000 */   nop
.L8005EA80:
/* 4F280 8005EA80 0300A01C */  bgtz       $a1, .L8005EA90
/* 4F284 8005EA84 0800A228 */   slti      $v0, $a1, 8
/* 4F288 8005EA88 01000524 */  addiu      $a1, $zero, 1
/* 4F28C 8005EA8C 0800A228 */  slti       $v0, $a1, 8
.L8005EA90:
/* 4F290 8005EA90 02004014 */  bnez       $v0, .L8005EA9C
/* 4F294 8005EA94 21104801 */   addu      $v0, $t2, $t0
/* 4F298 8005EA98 07000524 */  addiu      $a1, $zero, 7
.L8005EA9C:
/* 4F29C 8005EA9C AC7A0108 */  j          .L8005EAB0
/* 4F2A0 8005EAA0 000045AC */   sw        $a1, ($v0)
.L8005EAA4:
/* 4F2A4 8005EAA4 21104801 */  addu       $v0, $t2, $t0
/* 4F2A8 8005EAA8 00004BAC */  sw         $t3, ($v0)
/* 4F2AC 8005EAAC 0100E924 */  addiu      $t1, $a3, 1
.L8005EAB0:
/* 4F2B0 8005EAB0 21382001 */  addu       $a3, $t1, $zero
/* 4F2B4 8005EAB4 0200E228 */  slti       $v0, $a3, 2
/* 4F2B8 8005EAB8 D0FF4014 */  bnez       $v0, .L8005E9FC
/* 4F2BC 8005EABC 80100700 */   sll       $v0, $a3, 2
/* 4F2C0 8005EAC0 01000224 */  addiu      $v0, $zero, 1
/* 4F2C4 8005EAC4 12008211 */  beq        $t4, $v0, .L8005EB10
/* 4F2C8 8005EAC8 02008229 */   slti      $v0, $t4, 2
/* 4F2CC 8005EACC 05004010 */  beqz       $v0, .L8005EAE4
/* 4F2D0 8005EAD0 00000000 */   nop
/* 4F2D4 8005EAD4 08008011 */  beqz       $t4, .L8005EAF8
/* 4F2D8 8005EAD8 01000224 */   addiu     $v0, $zero, 1
/* 4F2DC 8005EADC DA7A0108 */  j          .L8005EB68
/* 4F2E0 8005EAE0 00000000 */   nop
.L8005EAE4:
/* 4F2E4 8005EAE4 02000224 */  addiu      $v0, $zero, 2
/* 4F2E8 8005EAE8 0C008211 */  beq        $t4, $v0, .L8005EB1C
/* 4F2EC 8005EAEC 01000224 */   addiu     $v0, $zero, 1
/* 4F2F0 8005EAF0 DA7A0108 */  j          .L8005EB68
/* 4F2F4 8005EAF4 00000000 */   nop
.L8005EAF8:
/* 4F2F8 8005EAF8 1000A48F */  lw         $a0, 0x10($sp)
/* 4F2FC 8005EAFC FFFF0324 */  addiu      $v1, $zero, -1
.L8005EB00:
/* 4F300 8005EB00 19008314 */  bne        $a0, $v1, .L8005EB68
/* 4F304 8005EB04 21108000 */   addu      $v0, $a0, $zero
/* 4F308 8005EB08 DA7A0108 */  j          .L8005EB68
/* 4F30C 8005EB0C 01000224 */   addiu     $v0, $zero, 1
.L8005EB10:
/* 4F310 8005EB10 1400A48F */  lw         $a0, 0x14($sp)
/* 4F314 8005EB14 C07A0108 */  j          .L8005EB00
/* 4F318 8005EB18 FFFF0324 */   addiu     $v1, $zero, -1
.L8005EB1C:
/* 4F31C 8005EB1C FFFF0224 */  addiu      $v0, $zero, -1
/* 4F320 8005EB20 1000A48F */  lw         $a0, 0x10($sp)
/* 4F324 8005EB24 1400A38F */  lw         $v1, 0x14($sp)
/* 4F328 8005EB28 03008214 */  bne        $a0, $v0, .L8005EB38
/* 4F32C 8005EB2C 00000000 */   nop
/* 4F330 8005EB30 0D006410 */  beq        $v1, $a0, .L8005EB68
/* 4F334 8005EB34 01000224 */   addiu     $v0, $zero, 1
.L8005EB38:
/* 4F338 8005EB38 03008104 */  bgez       $a0, .L8005EB48
/* 4F33C 8005EB3C 00000000 */   nop
.L8005EB40:
/* 4F340 8005EB40 DA7A0108 */  j          .L8005EB68
/* 4F344 8005EB44 21106000 */   addu      $v0, $v1, $zero
.L8005EB48:
/* 4F348 8005EB48 03006104 */  bgez       $v1, .L8005EB58
/* 4F34C 8005EB4C 2A108300 */   slt       $v0, $a0, $v1
/* 4F350 8005EB50 DA7A0108 */  j          .L8005EB68
/* 4F354 8005EB54 21108000 */   addu      $v0, $a0, $zero
.L8005EB58:
/* 4F358 8005EB58 03004010 */  beqz       $v0, .L8005EB68
/* 4F35C 8005EB5C 21106000 */   addu      $v0, $v1, $zero
/* 4F360 8005EB60 D07A0108 */  j          .L8005EB40
/* 4F364 8005EB64 21188000 */   addu      $v1, $a0, $zero
.L8005EB68:
/* 4F368 8005EB68 1800BF8F */  lw         $ra, 0x18($sp)
/* 4F36C 8005EB6C 00000000 */  nop
/* 4F370 8005EB70 0800E003 */  jr         $ra
/* 4F374 8005EB74 2000BD27 */   addiu     $sp, $sp, 0x20
