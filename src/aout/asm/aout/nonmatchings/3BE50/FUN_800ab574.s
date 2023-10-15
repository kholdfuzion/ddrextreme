.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab574
/* 9BD74 800AB574 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9BD78 800AB578 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BD7C 800AB57C 2180A000 */  addu       $s0, $a1, $zero
/* 9BD80 800AB580 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BD84 800AB584 21888000 */  addu       $s1, $a0, $zero
/* 9BD88 800AB588 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 9BD8C 800AB58C 0CAF020C */  jal        FUN_800abc30
/* 9BD90 800AB590 1800B2AF */   sw        $s2, 0x18($sp)
/* 9BD94 800AB594 05004014 */  bnez       $v0, .L800AB5AC
/* 9BD98 800AB598 0F80023C */   lui       $v0, %hi(D_800F0028)
/* 9BD9C 800AB59C 28004484 */  lh         $a0, %lo(D_800F0028)($v0)
/* 9BDA0 800AB5A0 2A000324 */  addiu      $v1, $zero, 0x2a
/* 9BDA4 800AB5A4 21008314 */  bne        $a0, $v1, .L800AB62C
/* 9BDA8 800AB5A8 21100000 */   addu      $v0, $zero, $zero
.L800AB5AC:
/* 9BDAC 800AB5AC 0F80023C */  lui        $v0, %hi(D_800EC6F8)
/* 9BDB0 800AB5B0 F8C6438C */  lw         $v1, %lo(D_800EC6F8)($v0)
/* 9BDB4 800AB5B4 00000000 */  nop
/* 9BDB8 800AB5B8 0C007114 */  bne        $v1, $s1, .L800AB5EC
/* 9BDBC 800AB5BC 21904000 */   addu      $s2, $v0, $zero
/* 9BDC0 800AB5C0 0F80023C */  lui        $v0, %hi(D_800EC6FC)
/* 9BDC4 800AB5C4 FCC6438C */  lw         $v1, %lo(D_800EC6FC)($v0)
/* 9BDC8 800AB5C8 00000000 */  nop
/* 9BDCC 800AB5CC 08006014 */  bnez       $v1, .L800AB5F0
/* 9BDD0 800AB5D0 21202002 */   addu      $a0, $s1, $zero
/* 9BDD4 800AB5D4 0F80023C */  lui        $v0, %hi(D_800EC700)
/* 9BDD8 800AB5D8 0F80033C */  lui        $v1, %hi(D_800EC704)
/* 9BDDC 800AB5DC 00C7508C */  lw         $s0, %lo(D_800EC700)($v0)
/* 9BDE0 800AB5E0 04C7628C */  lw         $v0, %lo(D_800EC704)($v1)
/* 9BDE4 800AB5E4 7EAD0208 */  j          .L800AB5F8
/* 9BDE8 800AB5E8 00000000 */   nop
.L800AB5EC:
/* 9BDEC 800AB5EC 21202002 */  addu       $a0, $s1, $zero
.L800AB5F0:
/* 9BDF0 800AB5F0 56AB020C */  jal        FUN_800aad58
/* 9BDF4 800AB5F4 21280002 */   addu      $a1, $s0, $zero
.L800AB5F8:
/* 9BDF8 800AB5F8 03004104 */  bgez       $v0, .L800AB608
/* 9BDFC 800AB5FC 80000526 */   addiu     $a1, $s0, 0x80
/* 9BE00 800AB600 8BAD0208 */  j          .L800AB62C
/* 9BE04 800AB604 21100000 */   addu      $v0, $zero, $zero
.L800AB608:
/* 9BE08 800AB608 FFFF0224 */  addiu      $v0, $zero, -1
/* 9BE0C 800AB60C 0F80033C */  lui        $v1, %hi(D_800EC6FC)
/* 9BE10 800AB610 0F80043C */  lui        $a0, %hi(D_800EC700)
/* 9BE14 800AB614 F8C642AE */  sw         $v0, -0x3908($s2)
/* 9BE18 800AB618 FCC662AC */  sw         $v0, %lo(D_800EC6FC)($v1)
/* 9BE1C 800AB61C 02000016 */  bnez       $s0, .L800AB628
/* 9BE20 800AB620 00C780AC */   sw        $zero, %lo(D_800EC700)($a0)
/* 9BE24 800AB624 21280000 */  addu       $a1, $zero, $zero
.L800AB628:
/* 9BE28 800AB628 2110A000 */  addu       $v0, $a1, $zero
.L800AB62C:
/* 9BE2C 800AB62C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9BE30 800AB630 1800B28F */  lw         $s2, 0x18($sp)
/* 9BE34 800AB634 1400B18F */  lw         $s1, 0x14($sp)
/* 9BE38 800AB638 1000B08F */  lw         $s0, 0x10($sp)
/* 9BE3C 800AB63C 0800E003 */  jr         $ra
/* 9BE40 800AB640 2000BD27 */   addiu     $sp, $sp, 0x20
