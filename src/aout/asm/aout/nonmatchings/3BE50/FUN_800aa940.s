.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aa940
/* 9B140 800AA940 D8FEBD27 */  addiu      $sp, $sp, -0x128
/* 9B144 800AA944 1401B1AF */  sw         $s1, 0x114($sp)
/* 9B148 800AA948 21888000 */  addu       $s1, $a0, $zero
/* 9B14C 800AA94C 2001B4AF */  sw         $s4, 0x120($sp)
/* 9B150 800AA950 21A0A000 */  addu       $s4, $a1, $zero
/* 9B154 800AA954 2401BFAF */  sw         $ra, 0x124($sp)
/* 9B158 800AA958 1C01B3AF */  sw         $s3, 0x11c($sp)
/* 9B15C 800AA95C 1801B2AF */  sw         $s2, 0x118($sp)
/* 9B160 800AA960 F8AE020C */  jal        FUN_800abbe0
/* 9B164 800AA964 1001B0AF */   sw        $s0, 0x110($sp)
/* 9B168 800AA968 32004010 */  beqz       $v0, .L800AAA34
/* 9B16C 800AA96C FFFF0224 */   addiu     $v0, $zero, -1
/* 9B170 800AA970 30002006 */  bltz       $s1, .L800AAA34
/* 9B174 800AA974 00000000 */   nop
/* 9B178 800AA978 1E00222A */  slti       $v0, $s1, 0x1e
/* 9B17C 800AA97C 2C004010 */  beqz       $v0, .L800AAA30
/* 9B180 800AA980 1C80023C */   lui       $v0, %hi(D_801BFBB8)
/* 9B184 800AA984 B8FB5324 */  addiu      $s3, $v0, %lo(D_801BFBB8)
/* 9B188 800AA988 40181100 */  sll        $v1, $s1, 1
/* 9B18C 800AA98C 21187100 */  addu       $v1, $v1, $s1
/* 9B190 800AA990 C0900300 */  sll        $s2, $v1, 3
/* 9B194 800AA994 21105302 */  addu       $v0, $s2, $s3
/* 9B198 800AA998 0E004780 */  lb         $a3, 0xe($v0)
/* 9B19C 800AA99C 00000000 */  nop
/* 9B1A0 800AA9A0 2300E004 */  bltz       $a3, .L800AAA30
/* 9B1A4 800AA9A4 1000A427 */   addiu     $a0, $sp, 0x10
/* 9B1A8 800AA9A8 0180053C */  lui        $a1, %hi(D_80016DAC)
/* 9B1AC 800AA9AC AC6DA524 */  addiu      $a1, $a1, %lo(D_80016DAC)
/* 9B1B0 800AA9B0 21302002 */  addu       $a2, $s1, $zero
/* 9B1B4 800AA9B4 C0801100 */  sll        $s0, $s1, 3
/* 9B1B8 800AA9B8 23801102 */  subu       $s0, $s0, $s1
/* 9B1BC 800AA9BC 80801000 */  sll        $s0, $s0, 2
/* 9B1C0 800AA9C0 1C80023C */  lui        $v0, %hi(D_801C4308)
/* 9B1C4 800AA9C4 08434224 */  addiu      $v0, $v0, %lo(D_801C4308)
/* 9B1C8 800AA9C8 8E81000C */  jal        sprintf
/* 9B1CC 800AA9CC 21800202 */   addu      $s0, $s0, $v0
/* 9B1D0 800AA9D0 21200002 */  addu       $a0, $s0, $zero
/* 9B1D4 800AA9D4 7F10030C */  jal        FUN_800c41fc
/* 9B1D8 800AA9D8 05000524 */   addiu     $a1, $zero, 5
/* 9B1DC 800AA9DC 21804000 */  addu       $s0, $v0, $zero
/* 9B1E0 800AA9E0 21200002 */  addu       $a0, $s0, $zero
/* 9B1E4 800AA9E4 00020524 */  addiu      $a1, $zero, 0x200
/* 9B1E8 800AA9E8 F118030C */  jal        FUN_800c63c4
/* 9B1EC 800AA9EC 21300000 */   addu      $a2, $zero, $zero
/* 9B1F0 800AA9F0 00020324 */  addiu      $v1, $zero, 0x200
/* 9B1F4 800AA9F4 0F004314 */  bne        $v0, $v1, .L800AAA34
/* 9B1F8 800AA9F8 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B1FC 800AA9FC 21107202 */  addu       $v0, $s3, $s2
/* 9B200 800AAA00 1400438C */  lw         $v1, 0x14($v0)
/* 9B204 800AAA04 00000000 */  nop
/* 9B208 800AAA08 09006010 */  beqz       $v1, .L800AAA30
/* 9B20C 800AAA0C 21200002 */   addu      $a0, $s0, $zero
/* 9B210 800AAA10 21288002 */  addu       $a1, $s4, $zero
/* 9B214 800AAA14 8318030C */  jal        FUN_800c620c
/* 9B218 800AAA18 00110624 */   addiu     $a2, $zero, 0x1100
/* 9B21C 800AAA1C 21184000 */  addu       $v1, $v0, $zero
/* 9B220 800AAA20 04006004 */  bltz       $v1, .L800AAA34
/* 9B224 800AAA24 FFFF0224 */   addiu     $v0, $zero, -1
/* 9B228 800AAA28 8DAA0208 */  j          .L800AAA34
/* 9B22C 800AAA2C 21100002 */   addu      $v0, $s0, $zero
.L800AAA30:
/* 9B230 800AAA30 FFFF0224 */  addiu      $v0, $zero, -1
.L800AAA34:
/* 9B234 800AAA34 2401BF8F */  lw         $ra, 0x124($sp)
/* 9B238 800AAA38 2001B48F */  lw         $s4, 0x120($sp)
/* 9B23C 800AAA3C 1C01B38F */  lw         $s3, 0x11c($sp)
/* 9B240 800AAA40 1801B28F */  lw         $s2, 0x118($sp)
/* 9B244 800AAA44 1401B18F */  lw         $s1, 0x114($sp)
/* 9B248 800AAA48 1001B08F */  lw         $s0, 0x110($sp)
/* 9B24C 800AAA4C 0800E003 */  jr         $ra
/* 9B250 800AAA50 2801BD27 */   addiu     $sp, $sp, 0x128
