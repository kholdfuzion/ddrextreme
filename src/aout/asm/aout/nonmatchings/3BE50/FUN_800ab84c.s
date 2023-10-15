.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab84c
/* 9C04C 800AB84C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C050 800AB850 21380000 */  addu       $a3, $zero, $zero
/* 9C054 800AB854 1800B2AF */  sw         $s2, 0x18($sp)
/* 9C058 800AB858 21908000 */  addu       $s2, $a0, $zero
/* 9C05C 800AB85C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C060 800AB860 2180A000 */  addu       $s0, $a1, $zero
/* 9C064 800AB864 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C068 800AB868 2188C000 */  addu       $s1, $a2, $zero
/* 9C06C 800AB86C 06004012 */  beqz       $s2, .L800AB888
/* 9C070 800AB870 1C00BFAF */   sw        $ra, 0x1c($sp)
/* 9C074 800AB874 0FA2020C */  jal        FUN_800a883c
/* 9C078 800AB878 00000000 */   nop
/* 9C07C 800AB87C 21384000 */  addu       $a3, $v0, $zero
/* 9C080 800AB880 3000E010 */  beqz       $a3, .L800AB944
/* 9C084 800AB884 FFFF0224 */   addiu     $v0, $zero, -1
.L800AB888:
/* 9C088 800AB888 01002626 */  addiu      $a2, $s1, 1
/* 9C08C 800AB88C 1E00C228 */  slti       $v0, $a2, 0x1e
/* 9C090 800AB890 2B004010 */  beqz       $v0, .L800AB940
/* 9C094 800AB894 40100600 */   sll       $v0, $a2, 1
/* 9C098 800AB898 1C80033C */  lui        $v1, %hi(D_801BFBB8)
/* 9C09C 800AB89C B8FB6324 */  addiu      $v1, $v1, %lo(D_801BFBB8)
/* 9C0A0 800AB8A0 21104600 */  addu       $v0, $v0, $a2
/* 9C0A4 800AB8A4 C0100200 */  sll        $v0, $v0, 3
/* 9C0A8 800AB8A8 21184300 */  addu       $v1, $v0, $v1
/* 9C0AC 800AB8AC FFFF0824 */  addiu      $t0, $zero, -1
/* 9C0B0 800AB8B0 0200042A */  slti       $a0, $s0, 2
/* 9C0B4 800AB8B4 02000524 */  addiu      $a1, $zero, 2
.L800AB8B8:
/* 9C0B8 800AB8B8 05004016 */  bnez       $s2, .L800AB8D0
/* 9C0BC 800AB8BC 00000000 */   nop
/* 9C0C0 800AB8C0 1400628C */  lw         $v0, 0x14($v1)
/* 9C0C4 800AB8C4 00000000 */  nop
/* 9C0C8 800AB8C8 07004014 */  bnez       $v0, .L800AB8E8
/* 9C0CC 800AB8CC 00000000 */   nop
.L800AB8D0:
/* 9C0D0 800AB8D0 1700E010 */  beqz       $a3, .L800AB930
/* 9C0D4 800AB8D4 00000000 */   nop
/* 9C0D8 800AB8D8 1400628C */  lw         $v0, 0x14($v1)
/* 9C0DC 800AB8DC 00000000 */  nop
/* 9C0E0 800AB8E0 1300E214 */  bne        $a3, $v0, .L800AB930
/* 9C0E4 800AB8E4 00000000 */   nop
.L800AB8E8:
/* 9C0E8 800AB8E8 16000812 */  beq        $s0, $t0, .L800AB944
/* 9C0EC 800AB8EC 2110C000 */   addu      $v0, $a2, $zero
/* 9C0F0 800AB8F0 0F006280 */  lb         $v0, 0xf($v1)
/* 9C0F4 800AB8F4 0B000006 */  bltz       $s0, .L800AB924
/* 9C0F8 800AB8F8 00000000 */   nop
/* 9C0FC 800AB8FC 05008014 */  bnez       $a0, .L800AB914
/* 9C100 800AB900 00000000 */   nop
/* 9C104 800AB904 05000512 */  beq        $s0, $a1, .L800AB91C
/* 9C108 800AB908 02004238 */   xori      $v0, $v0, 2
/* 9C10C 800AB90C 4AAE0208 */  j          .L800AB928
/* 9C110 800AB910 21100000 */   addu      $v0, $zero, $zero
.L800AB914:
/* 9C114 800AB914 4AAE0208 */  j          .L800AB928
/* 9C118 800AB918 0200422C */   sltiu     $v0, $v0, 2
.L800AB91C:
/* 9C11C 800AB91C 4AAE0208 */  j          .L800AB928
/* 9C120 800AB920 0100422C */   sltiu     $v0, $v0, 1
.L800AB924:
/* 9C124 800AB924 21100000 */  addu       $v0, $zero, $zero
.L800AB928:
/* 9C128 800AB928 06004014 */  bnez       $v0, .L800AB944
/* 9C12C 800AB92C 2110C000 */   addu      $v0, $a2, $zero
.L800AB930:
/* 9C130 800AB930 0100C624 */  addiu      $a2, $a2, 1
/* 9C134 800AB934 1E00C228 */  slti       $v0, $a2, 0x1e
/* 9C138 800AB938 DFFF4014 */  bnez       $v0, .L800AB8B8
/* 9C13C 800AB93C 18006324 */   addiu     $v1, $v1, 0x18
.L800AB940:
/* 9C140 800AB940 FFFF0224 */  addiu      $v0, $zero, -1
.L800AB944:
/* 9C144 800AB944 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 9C148 800AB948 1800B28F */  lw         $s2, 0x18($sp)
/* 9C14C 800AB94C 1400B18F */  lw         $s1, 0x14($sp)
/* 9C150 800AB950 1000B08F */  lw         $s0, 0x10($sp)
/* 9C154 800AB954 0800E003 */  jr         $ra
/* 9C158 800AB958 2000BD27 */   addiu     $sp, $sp, 0x20
