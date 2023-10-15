.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BEC14
/* AF414 800BEC14 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* AF418 800BEC18 0F80033C */  lui        $v1, %hi(D_800EE1FC)
/* AF41C 800BEC1C FCE1638C */  lw         $v1, %lo(D_800EE1FC)($v1)
/* AF420 800BEC20 0F80023C */  lui        $v0, %hi(D_800EE1C4)
/* AF424 800BEC24 1C00B1AF */  sw         $s1, 0x1c($sp)
/* AF428 800BEC28 C4E15124 */  addiu      $s1, $v0, %lo(D_800EE1C4)
/* AF42C 800BEC2C 2800BFAF */  sw         $ra, 0x28($sp)
/* AF430 800BEC30 2400B3AF */  sw         $s3, 0x24($sp)
/* AF434 800BEC34 2000B2AF */  sw         $s2, 0x20($sp)
/* AF438 800BEC38 03006014 */  bnez       $v1, .L800BEC48
/* AF43C 800BEC3C 1800B0AF */   sw        $s0, 0x18($sp)
/* AF440 800BEC40 33FB0208 */  j          .L800BECCC
/* AF444 800BEC44 FFFF0224 */   addiu     $v0, $zero, -1
.L800BEC48:
/* AF448 800BEC48 21908000 */  addu       $s2, $a0, $zero
/* AF44C 800BEC4C 0F80103C */  lui        $s0, %hi(D_800EE1D4)
/* AF450 800BEC50 D4E11026 */  addiu      $s0, $s0, %lo(D_800EE1D4)
/* AF454 800BEC54 8E81000C */  jal        sprintf
/* AF458 800BEC58 21280002 */   addu      $a1, $s0, $zero
/* AF45C 800BEC5C 7E81000C */  jal        strlen
/* AF460 800BEC60 21200002 */   addu      $a0, $s0, $zero
/* AF464 800BEC64 18002012 */  beqz       $s1, .L800BECC8
/* AF468 800BEC68 21904202 */   addu      $s2, $s2, $v0
/* AF46C 800BEC6C 1F80023C */  lui        $v0, %hi(D_801F7000)
/* AF470 800BEC70 00705324 */  addiu      $s3, $v0, %lo(D_801F7000)
.L800BEC74:
/* AF474 800BEC74 08002796 */  lhu        $a3, 8($s1)
/* AF478 800BEC78 0A002296 */  lhu        $v0, 0xa($s1)
/* AF47C 800BEC7C 21206002 */  addu       $a0, $s3, $zero
/* AF480 800BEC80 1000A2AF */  sw         $v0, 0x10($sp)
/* AF484 800BEC84 0400228E */  lw         $v0, 4($s1)
/* AF488 800BEC88 0180053C */  lui        $a1, %hi(D_800176AC)
/* AF48C 800BEC8C 1400A2AF */  sw         $v0, 0x14($sp)
/* AF490 800BEC90 0000268E */  lw         $a2, ($s1)
/* AF494 800BEC94 8E81000C */  jal        sprintf
/* AF498 800BEC98 AC76A524 */   addiu     $a1, $a1, %lo(D_800176AC)
/* AF49C 800BEC9C 7E81000C */  jal        strlen
/* AF4A0 800BECA0 21206002 */   addu      $a0, $s3, $zero
/* AF4A4 800BECA4 21204002 */  addu       $a0, $s2, $zero
/* AF4A8 800BECA8 21286002 */  addu       $a1, $s3, $zero
/* AF4AC 800BECAC 21804000 */  addu       $s0, $v0, $zero
/* AF4B0 800BECB0 BD6B000C */  jal        memcpy
/* AF4B4 800BECB4 21300002 */   addu      $a2, $s0, $zero
/* AF4B8 800BECB8 0C00318E */  lw         $s1, 0xc($s1)
/* AF4BC 800BECBC 00000000 */  nop
/* AF4C0 800BECC0 ECFF2016 */  bnez       $s1, .L800BEC74
/* AF4C4 800BECC4 21905002 */   addu      $s2, $s2, $s0
.L800BECC8:
/* AF4C8 800BECC8 21100000 */  addu       $v0, $zero, $zero
.L800BECCC:
/* AF4CC 800BECCC 2800BF8F */  lw         $ra, 0x28($sp)
/* AF4D0 800BECD0 2400B38F */  lw         $s3, 0x24($sp)
/* AF4D4 800BECD4 2000B28F */  lw         $s2, 0x20($sp)
/* AF4D8 800BECD8 1C00B18F */  lw         $s1, 0x1c($sp)
/* AF4DC 800BECDC 1800B08F */  lw         $s0, 0x18($sp)
/* AF4E0 800BECE0 0800E003 */  jr         $ra
/* AF4E4 800BECE4 3000BD27 */   addiu     $sp, $sp, 0x30
