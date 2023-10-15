.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800baff8
/* AB7F8 800BAFF8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AB7FC 800BAFFC 1000B0AF */  sw         $s0, 0x10($sp)
/* AB800 800BB000 21808000 */  addu       $s0, $a0, $zero
/* AB804 800BB004 1400B1AF */  sw         $s1, 0x14($sp)
/* AB808 800BB008 2188A000 */  addu       $s1, $a1, $zero
/* AB80C 800BB00C 1800B2AF */  sw         $s2, 0x18($sp)
/* AB810 800BB010 2190C000 */  addu       $s2, $a2, $zero
/* AB814 800BB014 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AB818 800BB018 2198E000 */  addu       $s3, $a3, $zero
/* AB81C 800BB01C 1E80023C */  lui        $v0, %hi(D_801E0F10)
/* AB820 800BB020 2000B4AF */  sw         $s4, 0x20($sp)
/* AB824 800BB024 100F5424 */  addiu      $s4, $v0, %lo(D_801E0F10)
/* AB828 800BB028 2400BFAF */  sw         $ra, 0x24($sp)
/* AB82C 800BB02C 7E81000C */  jal        strlen
/* AB830 800BB030 21208002 */   addu      $a0, $s4, $zero
/* AB834 800BB034 21184000 */  addu       $v1, $v0, $zero
/* AB838 800BB038 1B006228 */  slti       $v0, $v1, 0x1b
/* AB83C 800BB03C 1F004010 */  beqz       $v0, .L800BB0BC
/* AB840 800BB040 00000000 */   nop
/* AB844 800BB044 1D006010 */  beqz       $v1, .L800BB0BC
/* AB848 800BB048 00000000 */   nop
/* AB84C 800BB04C 17000012 */  beqz       $s0, .L800BB0AC
/* AB850 800BB050 21300000 */   addu      $a2, $zero, $zero
/* AB854 800BB054 16004012 */  beqz       $s2, .L800BB0B0
/* AB858 800BB058 21106602 */   addu      $v0, $s3, $a2
/* AB85C 800BB05C 21388002 */  addu       $a3, $s4, $zero
.L800BB060:
/* AB860 800BB060 1B001102 */  divu       $zero, $s0, $s1
/* AB864 800BB064 12280000 */  mflo       $a1
/* AB868 800BB068 10100000 */  mfhi       $v0
/* AB86C 800BB06C 02002016 */  bnez       $s1, .L800BB078
/* AB870 800BB070 00000000 */   nop
/* AB874 800BB074 CD010000 */  break      0, 7
.L800BB078:
/* AB878 800BB078 21104700 */   addu      $v0, $v0, $a3
/* AB87C 800BB07C 00004490 */  lbu        $a0, ($v0)
/* AB880 800BB080 21186602 */  addu       $v1, $s3, $a2
/* AB884 800BB084 000064A0 */  sb         $a0, ($v1)
/* AB888 800BB088 02002016 */  bnez       $s1, .L800BB094
/* AB88C 800BB08C 00000000 */   nop
/* AB890 800BB090 CD010000 */  break      0, 7
.L800BB094:
/* AB894 800BB094 2180A000 */   addu      $s0, $a1, $zero
/* AB898 800BB098 04000012 */  beqz       $s0, .L800BB0AC
/* AB89C 800BB09C 0100C624 */   addiu     $a2, $a2, 1
/* AB8A0 800BB0A0 2B10D200 */  sltu       $v0, $a2, $s2
/* AB8A4 800BB0A4 EEFF4014 */  bnez       $v0, .L800BB060
/* AB8A8 800BB0A8 00000000 */   nop
.L800BB0AC:
/* AB8AC 800BB0AC 21106602 */  addu       $v0, $s3, $a2
.L800BB0B0:
/* AB8B0 800BB0B0 000040A0 */  sb         $zero, ($v0)
/* AB8B4 800BB0B4 02000012 */  beqz       $s0, .L800BB0C0
/* AB8B8 800BB0B8 2110C000 */   addu      $v0, $a2, $zero
.L800BB0BC:
/* AB8BC 800BB0BC FFFF0224 */  addiu      $v0, $zero, -1
.L800BB0C0:
/* AB8C0 800BB0C0 2400BF8F */  lw         $ra, 0x24($sp)
/* AB8C4 800BB0C4 2000B48F */  lw         $s4, 0x20($sp)
/* AB8C8 800BB0C8 1C00B38F */  lw         $s3, 0x1c($sp)
/* AB8CC 800BB0CC 1800B28F */  lw         $s2, 0x18($sp)
/* AB8D0 800BB0D0 1400B18F */  lw         $s1, 0x14($sp)
/* AB8D4 800BB0D4 1000B08F */  lw         $s0, 0x10($sp)
/* AB8D8 800BB0D8 0800E003 */  jr         $ra
/* AB8DC 800BB0DC 2800BD27 */   addiu     $sp, $sp, 0x28
