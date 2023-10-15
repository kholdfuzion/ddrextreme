.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007c1b4
/* 6C9B4 8007C1B4 21588000 */  addu       $t3, $a0, $zero
/* 6C9B8 8007C1B8 2B006015 */  bnez       $t3, .L8007C268
/* 6C9BC 8007C1BC 05000224 */   addiu     $v0, $zero, 5
/* 6C9C0 8007C1C0 21500000 */  addu       $t2, $zero, $zero
/* 6C9C4 8007C1C4 1280023C */  lui        $v0, %hi(D_8011864A)
/* 6C9C8 8007C1C8 4A864824 */  addiu      $t0, $v0, %lo(D_8011864A)
/* 6C9CC 8007C1CC 08000925 */  addiu      $t1, $t0, 8
/* 6C9D0 8007C1D0 21380000 */  addu       $a3, $zero, $zero
.L8007C1D4:
/* 6C9D4 8007C1D4 40180A00 */  sll        $v1, $t2, 1
/* 6C9D8 8007C1D8 01004625 */  addiu      $a2, $t2, 1
/* 6C9DC 8007C1DC 21106A00 */  addu       $v0, $v1, $t2
/* 6C9E0 8007C1E0 C0100200 */  sll        $v0, $v0, 3
/* 6C9E4 8007C1E4 21284800 */  addu       $a1, $v0, $t0
/* 6C9E8 8007C1E8 21204900 */  addu       $a0, $v0, $t1
.L8007C1EC:
/* 6C9EC 8007C1EC 2110A700 */  addu       $v0, $a1, $a3
/* 6C9F0 8007C1F0 26184701 */  xor        $v1, $t2, $a3
/* 6C9F4 8007C1F4 0100632C */  sltiu      $v1, $v1, 1
/* 6C9F8 8007C1F8 000043A0 */  sb         $v1, ($v0)
/* 6C9FC 8007C1FC 000080A4 */  sh         $zero, ($a0)
/* 6CA00 8007C200 0100E724 */  addiu      $a3, $a3, 1
/* 6CA04 8007C204 0800E228 */  slti       $v0, $a3, 8
/* 6CA08 8007C208 F8FF4014 */  bnez       $v0, .L8007C1EC
/* 6CA0C 8007C20C 02008424 */   addiu     $a0, $a0, 2
/* 6CA10 8007C210 2150C000 */  addu       $t2, $a2, $zero
/* 6CA14 8007C214 08004229 */  slti       $v0, $t2, 8
/* 6CA18 8007C218 EEFF4014 */  bnez       $v0, .L8007C1D4
/* 6CA1C 8007C21C 21380000 */   addu      $a3, $zero, $zero
/* 6CA20 8007C220 40180A00 */  sll        $v1, $t2, 1
/* 6CA24 8007C224 1280023C */  lui        $v0, %hi(D_8011864A)
/* 6CA28 8007C228 4A864224 */  addiu      $v0, $v0, %lo(D_8011864A)
/* 6CA2C 8007C22C 21186A00 */  addu       $v1, $v1, $t2
/* 6CA30 8007C230 C0180300 */  sll        $v1, $v1, 3
/* 6CA34 8007C234 21206200 */  addu       $a0, $v1, $v0
/* 6CA38 8007C238 05000524 */  addiu      $a1, $zero, 5
/* 6CA3C 8007C23C 08004224 */  addiu      $v0, $v0, 8
/* 6CA40 8007C240 21186200 */  addu       $v1, $v1, $v0
.L8007C244:
/* 6CA44 8007C244 21108700 */  addu       $v0, $a0, $a3
/* 6CA48 8007C248 000045A0 */  sb         $a1, ($v0)
/* 6CA4C 8007C24C 000060A4 */  sh         $zero, ($v1)
/* 6CA50 8007C250 0100E724 */  addiu      $a3, $a3, 1
/* 6CA54 8007C254 0800E228 */  slti       $v0, $a3, 8
/* 6CA58 8007C258 FAFF4014 */  bnez       $v0, .L8007C244
/* 6CA5C 8007C25C 02006324 */   addiu     $v1, $v1, 2
/* 6CA60 8007C260 0800E003 */  jr         $ra
/* 6CA64 8007C264 2110C000 */   addu      $v0, $a2, $zero
.L8007C268:
/* 6CA68 8007C268 1280043C */  lui        $a0, %hi(D_8011864A)
/* 6CA6C 8007C26C 4A868390 */  lbu        $v1, %lo(D_8011864A)($a0)
/* 6CA70 8007C270 00000000 */  nop
/* 6CA74 8007C274 28006210 */  beq        $v1, $v0, .L8007C318
/* 6CA78 8007C278 21500000 */   addu      $t2, $zero, $zero
/* 6CA7C 8007C27C 4A868924 */  addiu      $t1, $a0, -0x79b6
/* 6CA80 8007C280 08000D24 */  addiu      $t5, $zero, 8
/* 6CA84 8007C284 05000C24 */  addiu      $t4, $zero, 5
.L8007C288:
/* 6CA88 8007C288 21380000 */  addu       $a3, $zero, $zero
/* 6CA8C 8007C28C 08002825 */  addiu      $t0, $t1, 8
/* 6CA90 8007C290 00006391 */  lbu        $v1, ($t3)
/* 6CA94 8007C294 00002291 */  lbu        $v0, ($t1)
/* 6CA98 8007C298 00000000 */  nop
/* 6CA9C 8007C29C 18006214 */  bne        $v1, $v0, .L8007C300
/* 6CAA0 8007C2A0 08006625 */   addiu     $a2, $t3, 8
/* 6CAA4 8007C2A4 08006395 */  lhu        $v1, 8($t3)
/* 6CAA8 8007C2A8 08002295 */  lhu        $v0, 8($t1)
/* 6CAAC 8007C2AC 00000000 */  nop
/* 6CAB0 8007C2B0 13006214 */  bne        $v1, $v0, .L8007C300
/* 6CAB4 8007C2B4 00000000 */   nop
/* 6CAB8 8007C2B8 02000825 */  addiu      $t0, $t0, 2
.L8007C2BC:
/* 6CABC 8007C2BC 0100E724 */  addiu      $a3, $a3, 1
/* 6CAC0 8007C2C0 0800E228 */  slti       $v0, $a3, 8
/* 6CAC4 8007C2C4 0E004010 */  beqz       $v0, .L8007C300
/* 6CAC8 8007C2C8 0200C624 */   addiu     $a2, $a2, 2
/* 6CACC 8007C2CC 21186701 */  addu       $v1, $t3, $a3
/* 6CAD0 8007C2D0 21202701 */  addu       $a0, $t1, $a3
/* 6CAD4 8007C2D4 00006590 */  lbu        $a1, ($v1)
/* 6CAD8 8007C2D8 00008290 */  lbu        $v0, ($a0)
/* 6CADC 8007C2DC 00000000 */  nop
/* 6CAE0 8007C2E0 0700A214 */  bne        $a1, $v0, .L8007C300
/* 6CAE4 8007C2E4 00000000 */   nop
/* 6CAE8 8007C2E8 0000C394 */  lhu        $v1, ($a2)
/* 6CAEC 8007C2EC 00000295 */  lhu        $v0, ($t0)
/* 6CAF0 8007C2F0 00000000 */  nop
/* 6CAF4 8007C2F4 F1FF6210 */  beq        $v1, $v0, .L8007C2BC
/* 6CAF8 8007C2F8 02000825 */   addiu     $t0, $t0, 2
/* 6CAFC 8007C2FC FEFF0825 */  addiu      $t0, $t0, -2
.L8007C300:
/* 6CB00 8007C300 0A00ED10 */  beq        $a3, $t5, .L8007C32C
/* 6CB04 8007C304 18002925 */   addiu     $t1, $t1, 0x18
/* 6CB08 8007C308 00002291 */  lbu        $v0, ($t1)
/* 6CB0C 8007C30C 00000000 */  nop
/* 6CB10 8007C310 DDFF4C14 */  bne        $v0, $t4, .L8007C288
/* 6CB14 8007C314 01004A25 */   addiu     $t2, $t2, 1
.L8007C318:
/* 6CB18 8007C318 2C014229 */  slti       $v0, $t2, 0x12c
/* 6CB1C 8007C31C 05004014 */  bnez       $v0, .L8007C334
/* 6CB20 8007C320 21380000 */   addu      $a3, $zero, $zero
/* 6CB24 8007C324 0800E003 */  jr         $ra
/* 6CB28 8007C328 FDFF0224 */   addiu     $v0, $zero, -3
.L8007C32C:
/* 6CB2C 8007C32C 0800E003 */  jr         $ra
/* 6CB30 8007C330 21104001 */   addu      $v0, $t2, $zero
.L8007C334:
/* 6CB34 8007C334 40180A00 */  sll        $v1, $t2, 1
/* 6CB38 8007C338 05000824 */  addiu      $t0, $zero, 5
/* 6CB3C 8007C33C 1280023C */  lui        $v0, %hi(D_8011864A)
/* 6CB40 8007C340 4A864224 */  addiu      $v0, $v0, %lo(D_8011864A)
/* 6CB44 8007C344 21186A00 */  addu       $v1, $v1, $t2
/* 6CB48 8007C348 C0180300 */  sll        $v1, $v1, 3
/* 6CB4C 8007C34C 20004424 */  addiu      $a0, $v0, 0x20
/* 6CB50 8007C350 21286400 */  addu       $a1, $v1, $a0
/* 6CB54 8007C354 08006625 */  addiu      $a2, $t3, 8
/* 6CB58 8007C358 21206200 */  addu       $a0, $v1, $v0
.L8007C35C:
/* 6CB5C 8007C35C 21106701 */  addu       $v0, $t3, $a3
/* 6CB60 8007C360 00004390 */  lbu        $v1, ($v0)
/* 6CB64 8007C364 0100E724 */  addiu      $a3, $a3, 1
/* 6CB68 8007C368 180088A0 */  sb         $t0, 0x18($a0)
/* 6CB6C 8007C36C 000083A0 */  sb         $v1, ($a0)
/* 6CB70 8007C370 0000C294 */  lhu        $v0, ($a2)
/* 6CB74 8007C374 0200C624 */  addiu      $a2, $a2, 2
/* 6CB78 8007C378 01008424 */  addiu      $a0, $a0, 1
/* 6CB7C 8007C37C 0000A0A4 */  sh         $zero, ($a1)
/* 6CB80 8007C380 E8FFA2A4 */  sh         $v0, -0x18($a1)
/* 6CB84 8007C384 0800E228 */  slti       $v0, $a3, 8
/* 6CB88 8007C388 F4FF4014 */  bnez       $v0, .L8007C35C
/* 6CB8C 8007C38C 0200A524 */   addiu     $a1, $a1, 2
/* 6CB90 8007C390 0800E003 */  jr         $ra
/* 6CB94 8007C394 21104001 */   addu      $v0, $t2, $zero
