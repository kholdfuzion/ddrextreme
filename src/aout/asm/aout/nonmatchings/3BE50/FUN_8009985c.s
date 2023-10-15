.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009985c
/* 8A05C 8009985C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 8A060 80099860 21288000 */  addu       $a1, $a0, $zero
/* 8A064 80099864 0F80063C */  lui        $a2, %hi(D_800F0028)
/* 8A068 80099868 2800C624 */  addiu      $a2, $a2, %lo(D_800F0028)
/* 8A06C 8009986C 80100500 */  sll        $v0, $a1, 2
/* 8A070 80099870 21104500 */  addu       $v0, $v0, $a1
/* 8A074 80099874 C0190200 */  sll        $v1, $v0, 7
/* 8A078 80099878 21104300 */  addu       $v0, $v0, $v1
/* 8A07C 8009987C 40110200 */  sll        $v0, $v0, 5
/* 8A080 80099880 23104500 */  subu       $v0, $v0, $a1
/* 8A084 80099884 80100200 */  sll        $v0, $v0, 2
/* 8A088 80099888 21104600 */  addu       $v0, $v0, $a2
/* 8A08C 8009988C 2000BFAF */  sw         $ra, 0x20($sp)
/* 8A090 80099890 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 8A094 80099894 1800B0AF */  sw         $s0, 0x18($sp)
/* 8A098 80099898 1200C480 */  lb         $a0, 0x12($a2)
/* 8A09C 8009989C 8A004390 */  lbu        $v1, 0x8a($v0)
/* 8A0A0 800998A0 2200C580 */  lb         $a1, 0x22($a2)
/* 8A0A4 800998A4 02006338 */  xori       $v1, $v1, 2
/* 8A0A8 800998A8 F68A020C */  jal        FUN_800a2bd8
/* 8A0AC 800998AC 0100702C */   sltiu     $s0, $v1, 1
/* 8A0B0 800998B0 21204000 */  addu       $a0, $v0, $zero
/* 8A0B4 800998B4 1000A527 */  addiu      $a1, $sp, 0x10
/* 8A0B8 800998B8 1E8A020C */  jal        FUN_800a2878
/* 8A0BC 800998BC 1000A2AF */   sw        $v0, 0x10($sp)
/* 8A0C0 800998C0 02001124 */  addiu      $s1, $zero, 2
/* 8A0C4 800998C4 21184000 */  addu       $v1, $v0, $zero
/* 8A0C8 800998C8 08006010 */  beqz       $v1, .L800998EC
/* 8A0CC 800998CC 21100000 */   addu      $v0, $zero, $zero
/* 8A0D0 800998D0 1000A28F */  lw         $v0, 0x10($sp)
/* 8A0D4 800998D4 02007114 */  bne        $v1, $s1, .L800998E0
/* 8A0D8 800998D8 00000000 */   nop
/* 8A0DC 800998DC 40004224 */  addiu      $v0, $v0, 0x40
.L800998E0:
/* 8A0E0 800998E0 40100200 */  sll        $v0, $v0, 1
/* 8A0E4 800998E4 21800202 */  addu       $s0, $s0, $v0
/* 8A0E8 800998E8 01000226 */  addiu      $v0, $s0, 1
.L800998EC:
/* 8A0EC 800998EC 2000BF8F */  lw         $ra, 0x20($sp)
/* 8A0F0 800998F0 1C00B18F */  lw         $s1, 0x1c($sp)
/* 8A0F4 800998F4 1800B08F */  lw         $s0, 0x18($sp)
/* 8A0F8 800998F8 0800E003 */  jr         $ra
/* 8A0FC 800998FC 2800BD27 */   addiu     $sp, $sp, 0x28
