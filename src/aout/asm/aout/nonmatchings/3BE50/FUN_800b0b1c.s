.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b0b1c
/* A131C 800B0B1C 1D80093C */  lui        $t1, %hi(D_801D238C)
/* A1320 800B0B20 1D80053C */  lui        $a1, %hi(D_801D2388)
/* A1324 800B0B24 8C23288D */  lw         $t0, %lo(D_801D238C)($t1)
/* A1328 800B0B28 8823A28C */  lw         $v0, %lo(D_801D2388)($a1)
/* A132C 800B0B2C 00000000 */  nop
/* A1330 800B0B30 23180201 */  subu       $v1, $t0, $v0
/* A1334 800B0B34 02006104 */  bgez       $v1, .L800B0B40
/* A1338 800B0B38 21308000 */   addu      $a2, $a0, $zero
/* A133C 800B0B3C 10006324 */  addiu      $v1, $v1, 0x10
.L800B0B40:
/* A1340 800B0B40 0F000224 */  addiu      $v0, $zero, 0xf
/* A1344 800B0B44 23104300 */  subu       $v0, $v0, $v1
/* A1348 800B0B48 0600401C */  bgtz       $v0, .L800B0B64
/* A134C 800B0B4C 1D80043C */   lui       $a0, %hi(D_801D2398)
/* A1350 800B0B50 98238324 */  addiu      $v1, $a0, %lo(D_801D2398)
/* A1354 800B0B54 1D80023C */  lui        $v0, %hi(D_801D2498)
/* A1358 800B0B58 8C2320AD */  sw         $zero, 0x238c($t1)
/* A135C 800B0B5C 8823A0AC */  sw         $zero, 0x2388($a1)
/* A1360 800B0B60 982443AC */  sw         $v1, %lo(D_801D2498)($v0)
.L800B0B64:
/* A1364 800B0B64 98238324 */  addiu      $v1, $a0, 0x2398
/* A1368 800B0B68 00210800 */  sll        $a0, $t0, 4
/* A136C 800B0B6C 0000C28C */  lw         $v0, ($a2)
/* A1370 800B0B70 21388300 */  addu       $a3, $a0, $v1
/* A1374 800B0B74 0000E2AC */  sw         $v0, ($a3)
/* A1378 800B0B78 0400C58C */  lw         $a1, 4($a2)
/* A137C 800B0B7C 21106400 */  addu       $v0, $v1, $a0
/* A1380 800B0B80 040045AC */  sw         $a1, 4($v0)
/* A1384 800B0B84 0800C68C */  lw         $a2, 8($a2)
/* A1388 800B0B88 21184000 */  addu       $v1, $v0, $zero
/* A138C 800B0B8C 080066AC */  sw         $a2, 8($v1)
/* A1390 800B0B90 001C0800 */  sll        $v1, $t0, 0x10
/* A1394 800B0B94 0E00E8A4 */  sh         $t0, 0xe($a3)
/* A1398 800B0B98 01000825 */  addiu      $t0, $t0, 1
/* A139C 800B0B9C 031C0300 */  sra        $v1, $v1, 0x10
/* A13A0 800B0BA0 1000022D */  sltiu      $v0, $t0, 0x10
/* A13A4 800B0BA4 02004014 */  bnez       $v0, .L800B0BB0
/* A13A8 800B0BA8 0C00E0A4 */   sh        $zero, 0xc($a3)
/* A13AC 800B0BAC 21400000 */  addu       $t0, $zero, $zero
.L800B0BB0:
/* A13B0 800B0BB0 8C2328AD */  sw         $t0, 0x238c($t1)
/* A13B4 800B0BB4 0800E003 */  jr         $ra
/* A13B8 800B0BB8 21106000 */   addu      $v0, $v1, $zero
