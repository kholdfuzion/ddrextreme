.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b1834
/* A2034 800B1834 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A2038 800B1838 1000BFAF */  sw         $ra, 0x10($sp)
/* A203C 800B183C 21200000 */  addu       $a0, $zero, $zero
/* A2040 800B1840 15000524 */  addiu      $a1, $zero, 0x15
/* A2044 800B1844 21300000 */  addu       $a2, $zero, $zero
/* A2048 800B1848 21FD020C */  jal        FUN_800bf484
/* A204C 800B184C 21380000 */   addu      $a3, $zero, $zero
/* A2050 800B1850 21184000 */  addu       $v1, $v0, $zero
/* A2054 800B1854 02006010 */  beqz       $v1, .L800B1860
/* A2058 800B1858 21100000 */   addu      $v0, $zero, $zero
/* A205C 800B185C FFFF0224 */  addiu      $v0, $zero, -1
.L800B1860:
/* A2060 800B1860 1000BF8F */  lw         $ra, 0x10($sp)
/* A2064 800B1864 00000000 */  nop
/* A2068 800B1868 0800E003 */  jr         $ra
/* A206C 800B186C 1800BD27 */   addiu     $sp, $sp, 0x18
