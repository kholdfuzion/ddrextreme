.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005b1d8
/* 4B9D8 8005B1D8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 4B9DC 8005B1DC 2140A000 */  addu       $t0, $a1, $zero
/* 4B9E0 8005B1E0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 4B9E4 8005B1E4 2188C000 */  addu       $s1, $a2, $zero
/* 4B9E8 8005B1E8 80100400 */  sll        $v0, $a0, 2
/* 4B9EC 8005B1EC 21104400 */  addu       $v0, $v0, $a0
/* 4B9F0 8005B1F0 C0100200 */  sll        $v0, $v0, 3
/* 4B9F4 8005B1F4 21104400 */  addu       $v0, $v0, $a0
/* 4B9F8 8005B1F8 C0100200 */  sll        $v0, $v0, 3
/* 4B9FC 8005B1FC 23104400 */  subu       $v0, $v0, $a0
/* 4BA00 8005B200 80100200 */  sll        $v0, $v0, 2
/* 4BA04 8005B204 21104400 */  addu       $v0, $v0, $a0
/* 4BA08 8005B208 C0100200 */  sll        $v0, $v0, 3
/* 4BA0C 8005B20C 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BA10 8005B210 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BA14 8005B214 21184300 */  addu       $v1, $v0, $v1
/* 4BA18 8005B218 1980043C */  lui        $a0, %hi(D_80189980)
/* 4BA1C 8005B21C 80998424 */  addiu      $a0, $a0, %lo(D_80189980)
/* 4BA20 8005B220 1800B0AF */  sw         $s0, 0x18($sp)
/* 4BA24 8005B224 21804400 */  addu       $s0, $v0, $a0
/* 4BA28 8005B228 05000005 */  bltz       $t0, .L8005B240
/* 4BA2C 8005B22C 2000BFAF */   sw        $ra, 0x20($sp)
/* 4BA30 8005B230 01000224 */  addiu      $v0, $zero, 1
/* 4BA34 8005B234 000062AC */  sw         $v0, ($v1)
/* 4BA38 8005B238 936C0108 */  j          .L8005B24C
/* 4BA3C 8005B23C 000002AE */   sw        $v0, ($s0)
.L8005B240:
/* 4BA40 8005B240 000060AC */  sw         $zero, ($v1)
/* 4BA44 8005B244 A06C0108 */  j          .L8005B280
/* 4BA48 8005B248 000000AE */   sw        $zero, ($s0)
.L8005B24C:
/* 4BA4C 8005B24C 08006424 */  addiu      $a0, $v1, 8
/* 4BA50 8005B250 1000A527 */  addiu      $a1, $sp, 0x10
/* 4BA54 8005B254 3800A28F */  lw         $v0, 0x38($sp)
/* 4BA58 8005B258 00012326 */  addiu      $v1, $s1, 0x100
/* 4BA5C 8005B25C 1000A8A7 */  sh         $t0, 0x10($sp)
/* 4BA60 8005B260 1400A7A7 */  sh         $a3, 0x14($sp)
/* 4BA64 8005B264 1200A3A7 */  sh         $v1, 0x12($sp)
/* 4BA68 8005B268 3B64000C */  jal        SetDrawArea
/* 4BA6C 8005B26C 1600A2A7 */   sh        $v0, 0x16($sp)
/* 4BA70 8005B270 08000426 */  addiu      $a0, $s0, 8
/* 4BA74 8005B274 1000A527 */  addiu      $a1, $sp, 0x10
/* 4BA78 8005B278 3B64000C */  jal        SetDrawArea
/* 4BA7C 8005B27C 1200B1A7 */   sh        $s1, 0x12($sp)
.L8005B280:
/* 4BA80 8005B280 2000BF8F */  lw         $ra, 0x20($sp)
/* 4BA84 8005B284 1C00B18F */  lw         $s1, 0x1c($sp)
/* 4BA88 8005B288 1800B08F */  lw         $s0, 0x18($sp)
/* 4BA8C 8005B28C 0800E003 */  jr         $ra
/* 4BA90 8005B290 2800BD27 */   addiu     $sp, $sp, 0x28
