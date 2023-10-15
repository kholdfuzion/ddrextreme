.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c17a4
/* B1FA4 800C17A4 F8FFBD27 */  addiu      $sp, $sp, -8
/* B1FA8 800C17A8 21508000 */  addu       $t2, $a0, $zero
/* B1FAC 800C17AC 21480000 */  addu       $t1, $zero, $zero
/* B1FB0 800C17B0 1F80043C */  lui        $a0, %hi(D_801F70B0)
/* B1FB4 800C17B4 B0708324 */  addiu      $v1, $a0, %lo(D_801F70B0)
/* B1FB8 800C17B8 03006824 */  addiu      $t0, $v1, 3
/* B1FBC 800C17BC 21382001 */  addu       $a3, $t1, $zero
/* B1FC0 800C17C0 E0000224 */  addiu      $v0, $zero, 0xe0
/* B1FC4 800C17C4 B07082A0 */  sb         $v0, 0x70b0($a0)
/* B1FC8 800C17C8 0100C224 */  addiu      $v0, $a2, 1
/* B1FCC 800C17CC 01006AA0 */  sb         $t2, 1($v1)
/* B1FD0 800C17D0 0900C018 */  blez       $a2, .L800C17F8
/* B1FD4 800C17D4 020062A0 */   sb        $v0, 2($v1)
.L800C17D8:
/* B1FD8 800C17D8 0000A290 */  lbu        $v0, ($a1)
/* B1FDC 800C17DC 0100A524 */  addiu      $a1, $a1, 1
/* B1FE0 800C17E0 0100E724 */  addiu      $a3, $a3, 1
/* B1FE4 800C17E4 21482201 */  addu       $t1, $t1, $v0
/* B1FE8 800C17E8 000002A1 */  sb         $v0, ($t0)
/* B1FEC 800C17EC 2A10E600 */  slt        $v0, $a3, $a2
/* B1FF0 800C17F0 F9FF4014 */  bnez       $v0, .L800C17D8
/* B1FF4 800C17F4 01000825 */   addiu     $t0, $t0, 1
.L800C17F8:
/* B1FF8 800C17F8 21102A01 */  addu       $v0, $t1, $t2
/* B1FFC 800C17FC 21104600 */  addu       $v0, $v0, $a2
/* B2000 800C1800 01004224 */  addiu      $v0, $v0, 1
/* B2004 800C1804 000002A1 */  sb         $v0, ($t0)
/* B2008 800C1808 21380000 */  addu       $a3, $zero, $zero
/* B200C 800C180C 401F033C */  lui        $v1, 0x1f40
.L800C1810:
/* B2010 800C1810 04006294 */  lhu        $v0, 4($v1)
/* B2014 800C1814 00000000 */  nop
/* B2018 800C1818 30004230 */  andi       $v0, $v0, 0x30
/* B201C 800C181C 05004010 */  beqz       $v0, .L800C1834
/* B2020 800C1820 30000224 */   addiu     $v0, $zero, 0x30
/* B2024 800C1824 0100E724 */  addiu      $a3, $a3, 1
/* B2028 800C1828 3000E228 */  slti       $v0, $a3, 0x30
/* B202C 800C182C F8FF4014 */  bnez       $v0, .L800C1810
/* B2030 800C1830 30000224 */   addiu     $v0, $zero, 0x30
.L800C1834:
/* B2034 800C1834 0300E214 */  bne        $a3, $v0, .L800C1844
/* B2038 800C1838 1F80023C */   lui       $v0, %hi(D_801F70B0)
.L800C183C:
/* B203C 800C183C 39060308 */  j          .L800C18E4
/* B2040 800C1840 FDFF0224 */   addiu     $v0, $zero, -3
.L800C1844:
/* B2044 800C1844 B0704424 */  addiu      $a0, $v0, %lo(D_801F70B0)
/* B2048 800C1848 0500C224 */  addiu      $v0, $a2, 5
/* B204C 800C184C C21F0200 */  srl        $v1, $v0, 0x1f
/* B2050 800C1850 21104300 */  addu       $v0, $v0, $v1
/* B2054 800C1854 43100200 */  sra        $v0, $v0, 1
/* B2058 800C1858 21004018 */  blez       $v0, .L800C18E0
/* B205C 800C185C 21380000 */   addu      $a3, $zero, $zero
/* B2060 800C1860 FFFF0924 */  addiu      $t1, $zero, -1
/* B2064 800C1864 681F053C */  lui        $a1, 0x1f68
/* B2068 800C1868 1F80063C */  lui        $a2, 0x801f
/* B206C 800C186C 401F083C */  lui        $t0, 0x1f40
/* B2070 800C1870 21504000 */  addu       $t2, $v0, $zero
/* B2074 800C1874 2B010224 */  addiu      $v0, $zero, 0x12b
.L800C1878:
/* B2078 800C1878 FFFF4224 */  addiu      $v0, $v0, -1
.L800C187C:
/* B207C 800C187C FFFF4914 */  bne        $v0, $t1, .L800C187C
/* B2080 800C1880 FFFF4224 */   addiu     $v0, $v0, -1
/* B2084 800C1884 00008294 */  lhu        $v0, ($a0)
/* B2088 800C1888 02008424 */  addiu      $a0, $a0, 2
/* B208C 800C188C 21180000 */  addu       $v1, $zero, $zero
/* B2090 800C1890 0000A2A4 */  sh         $v0, ($a1)
/* B2094 800C1894 B471C0AC */  sw         $zero, 0x71b4($a2)
/* B2098 800C1898 B471C28C */  lw         $v0, 0x71b4($a2)
.L800C189C:
/* B209C 800C189C 0000A294 */  lhu        $v0, ($a1)
/* B20A0 800C18A0 00000000 */  nop
/* B20A4 800C18A4 0000A2A7 */  sh         $v0, ($sp)
/* B20A8 800C18A8 06000295 */  lhu        $v0, 6($t0)
/* B20AC 800C18AC 00000000 */  nop
/* B20B0 800C18B0 20004230 */  andi       $v0, $v0, 0x20
/* B20B4 800C18B4 05004010 */  beqz       $v0, .L800C18CC
/* B20B8 800C18B8 30000224 */   addiu     $v0, $zero, 0x30
/* B20BC 800C18BC 01006324 */  addiu      $v1, $v1, 1
/* B20C0 800C18C0 30006228 */  slti       $v0, $v1, 0x30
/* B20C4 800C18C4 F5FF4014 */  bnez       $v0, .L800C189C
/* B20C8 800C18C8 30000224 */   addiu     $v0, $zero, 0x30
.L800C18CC:
/* B20CC 800C18CC DBFF6210 */  beq        $v1, $v0, .L800C183C
/* B20D0 800C18D0 0100E724 */   addiu     $a3, $a3, 1
/* B20D4 800C18D4 2A10EA00 */  slt        $v0, $a3, $t2
/* B20D8 800C18D8 E7FF4014 */  bnez       $v0, .L800C1878
/* B20DC 800C18DC 2B010224 */   addiu     $v0, $zero, 0x12b
.L800C18E0:
/* B20E0 800C18E0 21100000 */  addu       $v0, $zero, $zero
.L800C18E4:
/* B20E4 800C18E4 0800E003 */  jr         $ra
/* B20E8 800C18E8 0800BD27 */   addiu     $sp, $sp, 8
