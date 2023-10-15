.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e87c
/* 4F07C 8005E87C 0E80023C */  lui        $v0, %hi(D_800DAF94)
/* 4F080 8005E880 94AF448C */  lw         $a0, %lo(D_800DAF94)($v0)
/* 4F084 8005E884 6666023C */  lui        $v0, 0x6666
/* 4F088 8005E888 0000838C */  lw         $v1, ($a0)
/* 4F08C 8005E88C 67664234 */  ori        $v0, $v0, 0x6667
/* 4F090 8005E890 001B0300 */  sll        $v1, $v1, 0xc
/* 4F094 8005E894 18006200 */  mult       $v1, $v0
/* 4F098 8005E898 C31F0300 */  sra        $v1, $v1, 0x1f
/* 4F09C 8005E89C 10100000 */  mfhi       $v0
/* 4F0A0 8005E8A0 C3100200 */  sra        $v0, $v0, 3
/* 4F0A4 8005E8A4 0800E003 */  jr         $ra
/* 4F0A8 8005E8A8 23104300 */   subu      $v0, $v0, $v1
