.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDefDrawEnv
/* A2F94 800B2794 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* A2F98 800B2798 1800B2AF */  sw         $s2, 0x18($sp)
/* A2F9C 800B279C 3800B28F */  lw         $s2, 0x38($sp)
/* A2FA0 800B27A0 1400B1AF */  sw         $s1, 0x14($sp)
/* A2FA4 800B27A4 21888000 */  addu       $s1, $a0, $zero
/* A2FA8 800B27A8 1C00B3AF */  sw         $s3, 0x1c($sp)
/* A2FAC 800B27AC 2198A000 */  addu       $s3, $a1, $zero
/* A2FB0 800B27B0 2000B4AF */  sw         $s4, 0x20($sp)
/* A2FB4 800B27B4 21A0C000 */  addu       $s4, $a2, $zero
/* A2FB8 800B27B8 1000B0AF */  sw         $s0, 0x10($sp)
/* A2FBC 800B27BC 2400BFAF */  sw         $ra, 0x24($sp)
/* A2FC0 800B27C0 3A6F000C */  jal        FUN_8001bce8
/* A2FC4 800B27C4 2180E000 */   addu      $s0, $a3, $zero
/* A2FC8 800B27C8 01000324 */  addiu      $v1, $zero, 1
/* A2FCC 800B27CC 000033A6 */  sh         $s3, ($s1)
/* A2FD0 800B27D0 020034A6 */  sh         $s4, 2($s1)
/* A2FD4 800B27D4 040030A6 */  sh         $s0, 4($s1)
/* A2FD8 800B27D8 0C0020A6 */  sh         $zero, 0xc($s1)
/* A2FDC 800B27DC 0E0020A6 */  sh         $zero, 0xe($s1)
/* A2FE0 800B27E0 100020A6 */  sh         $zero, 0x10($s1)
/* A2FE4 800B27E4 120020A6 */  sh         $zero, 0x12($s1)
/* A2FE8 800B27E8 190020A2 */  sb         $zero, 0x19($s1)
/* A2FEC 800B27EC 1A0020A2 */  sb         $zero, 0x1a($s1)
/* A2FF0 800B27F0 1B0020A2 */  sb         $zero, 0x1b($s1)
/* A2FF4 800B27F4 160023A2 */  sb         $v1, 0x16($s1)
/* A2FF8 800B27F8 03004010 */  beqz       $v0, .L800B2808
/* A2FFC 800B27FC 060032A6 */   sh        $s2, 6($s1)
/* A3000 800B2800 03CA0208 */  j          E03_OBJ_78
/* A3004 800B2804 2101422A */   slti      $v0, $s2, 0x121
.L800B2808:
/* A3008 800B2808 0101422A */  slti       $v0, $s2, 0x101
