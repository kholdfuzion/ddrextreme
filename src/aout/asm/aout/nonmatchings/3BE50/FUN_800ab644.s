.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab644
/* 9BE44 800AB644 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 9BE48 800AB648 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BE4C 800AB64C 2180A000 */  addu       $s0, $a1, $zero
/* 9BE50 800AB650 1400B1AF */  sw         $s1, 0x14($sp)
/* 9BE54 800AB654 21888000 */  addu       $s1, $a0, $zero
/* 9BE58 800AB658 2400BFAF */  sw         $ra, 0x24($sp)
/* 9BE5C 800AB65C 2000B4AF */  sw         $s4, 0x20($sp)
/* 9BE60 800AB660 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 9BE64 800AB664 F8AE020C */  jal        FUN_800abbe0
/* 9BE68 800AB668 1800B2AF */   sw        $s2, 0x18($sp)
/* 9BE6C 800AB66C 20004010 */  beqz       $v0, .L800AB6F0
/* 9BE70 800AB670 0F80123C */   lui       $s2, 0x800f
/* 9BE74 800AB674 0F80023C */  lui        $v0, %hi(D_800EC6F8)
/* 9BE78 800AB678 F8C6438C */  lw         $v1, %lo(D_800EC6F8)($v0)
/* 9BE7C 800AB67C 00000000 */  nop
/* 9BE80 800AB680 0B007114 */  bne        $v1, $s1, .L800AB6B0
/* 9BE84 800AB684 21A04000 */   addu      $s4, $v0, $zero
/* 9BE88 800AB688 FCC6438E */  lw         $v1, -0x3904($s2)
/* 9BE8C 800AB68C 01000224 */  addiu      $v0, $zero, 1
/* 9BE90 800AB690 08006214 */  bne        $v1, $v0, .L800AB6B4
/* 9BE94 800AB694 21202002 */   addu      $a0, $s1, $zero
/* 9BE98 800AB698 0F80033C */  lui        $v1, %hi(D_800EC700)
/* 9BE9C 800AB69C 0F80023C */  lui        $v0, %hi(D_800EC704)
/* 9BEA0 800AB6A0 00C7708C */  lw         $s0, %lo(D_800EC700)($v1)
/* 9BEA4 800AB6A4 04C7428C */  lw         $v0, %lo(D_800EC704)($v0)
/* 9BEA8 800AB6A8 B0AD0208 */  j          .L800AB6C0
/* 9BEAC 800AB6AC 21986000 */   addu      $s3, $v1, $zero
.L800AB6B0:
/* 9BEB0 800AB6B0 21202002 */  addu       $a0, $s1, $zero
.L800AB6B4:
/* 9BEB4 800AB6B4 50AA020C */  jal        FUN_800aa940
/* 9BEB8 800AB6B8 21280002 */   addu      $a1, $s0, $zero
/* 9BEBC 800AB6BC 0F80133C */  lui        $s3, 0x800f
.L800AB6C0:
/* 9BEC0 800AB6C0 5BAF020C */  jal        FUN_800abd6c
/* 9BEC4 800AB6C4 21204000 */   addu      $a0, $v0, $zero
/* 9BEC8 800AB6C8 FFFF0324 */  addiu      $v1, $zero, -1
/* 9BECC 800AB6CC F8C683AE */  sw         $v1, -0x3908($s4)
/* 9BED0 800AB6D0 FCC643AE */  sw         $v1, -0x3904($s2)
/* 9BED4 800AB6D4 06004004 */  bltz       $v0, .L800AB6F0
/* 9BED8 800AB6D8 00C760AE */   sw        $zero, -0x3900($s3)
/* 9BEDC 800AB6DC 21202002 */  addu       $a0, $s1, $zero
/* 9BEE0 800AB6E0 95AA020C */  jal        FUN_800aaa54
/* 9BEE4 800AB6E4 21280002 */   addu      $a1, $s0, $zero
/* 9BEE8 800AB6E8 BDAD0208 */  j          .L800AB6F4
/* 9BEEC 800AB6EC 00000000 */   nop
.L800AB6F0:
/* 9BEF0 800AB6F0 21100000 */  addu       $v0, $zero, $zero
.L800AB6F4:
/* 9BEF4 800AB6F4 2400BF8F */  lw         $ra, 0x24($sp)
/* 9BEF8 800AB6F8 2000B48F */  lw         $s4, 0x20($sp)
/* 9BEFC 800AB6FC 1C00B38F */  lw         $s3, 0x1c($sp)
/* 9BF00 800AB700 1800B28F */  lw         $s2, 0x18($sp)
/* 9BF04 800AB704 1400B18F */  lw         $s1, 0x14($sp)
/* 9BF08 800AB708 1000B08F */  lw         $s0, 0x10($sp)
/* 9BF0C 800AB70C 0800E003 */  jr         $ra
/* 9BF10 800AB710 2800BD27 */   addiu     $sp, $sp, 0x28
