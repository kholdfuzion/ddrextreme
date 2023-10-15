.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a28f4
/* 930F4 800A28F4 A8FFBD27 */  addiu      $sp, $sp, -0x58
/* 930F8 800A28F8 0F80023C */  lui        $v0, %hi(D_800F0054)
/* 930FC 800A28FC 5400458C */  lw         $a1, %lo(D_800F0054)($v0)
/* 93100 800A2900 21108000 */  addu       $v0, $a0, $zero
/* 93104 800A2904 5400BFAF */  sw         $ra, 0x54($sp)
/* 93108 800A2908 1000A010 */  beqz       $a1, .L800A294C
/* 9310C 800A290C 5000B0AF */   sw        $s0, 0x50($sp)
/* 93110 800A2910 1000A427 */  addiu      $a0, $sp, 0x10
/* 93114 800A2914 01004230 */  andi       $v0, $v0, 1
/* 93118 800A2918 C0800200 */  sll        $s0, $v0, 3
/* 9311C 800A291C 23800202 */  subu       $s0, $s0, $v0
/* 93120 800A2920 80801000 */  sll        $s0, $s0, 2
/* 93124 800A2924 1380023C */  lui        $v0, %hi(D_80128BF4)
/* 93128 800A2928 F48B4224 */  addiu      $v0, $v0, %lo(D_80128BF4)
/* 9312C 800A292C 21800202 */  addu       $s0, $s0, $v0
/* 93130 800A2930 F3A2020C */  jal        FUN_800a8bcc
/* 93134 800A2934 06000624 */   addiu     $a2, $zero, 6
/* 93138 800A2938 1000A427 */  addiu      $a0, $sp, 0x10
/* 9313C 800A293C 6877000C */  jal        FUN_8001dda0
/* 93140 800A2940 21280002 */   addu      $a1, $s0, $zero
/* 93144 800A2944 548A0208 */  j          .L800A2950
/* 93148 800A2948 01000224 */   addiu     $v0, $zero, 1
.L800A294C:
/* 9314C 800A294C 21100000 */  addu       $v0, $zero, $zero
.L800A2950:
/* 93150 800A2950 5400BF8F */  lw         $ra, 0x54($sp)
/* 93154 800A2954 5000B08F */  lw         $s0, 0x50($sp)
/* 93158 800A2958 0800E003 */  jr         $ra
/* 9315C 800A295C 5800BD27 */   addiu     $sp, $sp, 0x58
