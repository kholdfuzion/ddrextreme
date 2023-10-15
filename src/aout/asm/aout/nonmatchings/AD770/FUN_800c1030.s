.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c1030
/* B1830 800C1030 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B1834 800C1034 1000BFAF */  sw         $ra, 0x10($sp)
/* B1838 800C1038 0000838C */  lw         $v1, ($a0)
/* B183C 800C103C 00000000 */  nop
/* B1840 800C1040 F1FF6228 */  slti       $v0, $v1, -0xf
/* B1844 800C1044 03004010 */  beqz       $v0, .L800C1054
/* B1848 800C1048 10006228 */   slti      $v0, $v1, 0x10
/* B184C 800C104C F1FF0324 */  addiu      $v1, $zero, -0xf
/* B1850 800C1050 10006228 */  slti       $v0, $v1, 0x10
.L800C1054:
/* B1854 800C1054 02004014 */  bnez       $v0, .L800C1060
/* B1858 800C1058 0F80023C */   lui       $v0, %hi(D_800EE498)
/* B185C 800C105C 0F000324 */  addiu      $v1, $zero, 0xf
.L800C1060:
/* B1860 800C1060 98E44224 */  addiu      $v0, $v0, %lo(D_800EE498)
/* B1864 800C1064 0F006324 */  addiu      $v1, $v1, 0xf
/* B1868 800C1068 80180300 */  sll        $v1, $v1, 2
/* B186C 800C106C 21186200 */  addu       $v1, $v1, $v0
/* B1870 800C1070 0000658C */  lw         $a1, ($v1)
/* B1874 800C1074 1601030C */  jal        FUN_800c0458
/* B1878 800C1078 6F000424 */   addiu     $a0, $zero, 0x6f
/* B187C 800C107C 21184000 */  addu       $v1, $v0, $zero
/* B1880 800C1080 FEFF0224 */  addiu      $v0, $zero, -2
/* B1884 800C1084 04006210 */  beq        $v1, $v0, .L800C1098
/* B1888 800C1088 00000000 */   nop
/* B188C 800C108C 02006014 */  bnez       $v1, .L800C1098
/* B1890 800C1090 FFFF0224 */   addiu     $v0, $zero, -1
/* B1894 800C1094 21100000 */  addu       $v0, $zero, $zero
.L800C1098:
/* B1898 800C1098 1000BF8F */  lw         $ra, 0x10($sp)
/* B189C 800C109C 00000000 */  nop
/* B18A0 800C10A0 0800E003 */  jr         $ra
/* B18A4 800C10A4 1800BD27 */   addiu     $sp, $sp, 0x18
