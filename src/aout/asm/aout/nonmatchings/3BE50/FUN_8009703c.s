.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009703c
/* 8783C 8009703C 01000B3C */  lui        $t3, 1
/* 87840 80097040 00806B35 */  ori        $t3, $t3, 0x8000
/* 87844 80097044 FEFF0A3C */  lui        $t2, 0xfffe
/* 87848 80097048 FF7F4A35 */  ori        $t2, $t2, 0x7fff
/* 8784C 8009704C F9FF083C */  lui        $t0, 0xfff9
/* 87850 80097050 FFFF0835 */  ori        $t0, $t0, 0xffff
/* 87854 80097054 F7FF093C */  lui        $t1, 0xfff7
/* 87858 80097058 FFFF2935 */  ori        $t1, $t1, 0xffff
/* 8785C 8009705C 0F80073C */  lui        $a3, %hi(D_800F0028)
/* 87860 80097060 2800E724 */  addiu      $a3, $a3, %lo(D_800F0028)
/* 87864 80097064 01000324 */  addiu      $v1, $zero, 1
/* 87868 80097068 23186400 */  subu       $v1, $v1, $a0
/* 8786C 8009706C 80300300 */  sll        $a2, $v1, 2
/* 87870 80097070 2130C300 */  addu       $a2, $a2, $v1
/* 87874 80097074 C0110600 */  sll        $v0, $a2, 7
/* 87878 80097078 2130C200 */  addu       $a2, $a2, $v0
/* 8787C 8009707C 40310600 */  sll        $a2, $a2, 5
/* 87880 80097080 2330C300 */  subu       $a2, $a2, $v1
/* 87884 80097084 80300600 */  sll        $a2, $a2, 2
/* 87888 80097088 80280400 */  sll        $a1, $a0, 2
/* 8788C 8009708C 2128A400 */  addu       $a1, $a1, $a0
/* 87890 80097090 C0110500 */  sll        $v0, $a1, 7
/* 87894 80097094 2128A200 */  addu       $a1, $a1, $v0
/* 87898 80097098 40290500 */  sll        $a1, $a1, 5
/* 8789C 8009709C 2328A400 */  subu       $a1, $a1, $a0
/* 878A0 800970A0 80280500 */  sll        $a1, $a1, 2
/* 878A4 800970A4 2128A700 */  addu       $a1, $a1, $a3
/* 878A8 800970A8 2130C700 */  addu       $a2, $a2, $a3
/* 878AC 800970AC 8900A290 */  lbu        $v0, 0x89($a1)
/* 878B0 800970B0 FCFF0424 */  addiu      $a0, $zero, -4
/* 878B4 800970B4 8900C2A0 */  sb         $v0, 0x89($a2)
/* 878B8 800970B8 9000C28C */  lw         $v0, 0x90($a2)
/* 878BC 800970BC 9000A38C */  lw         $v1, 0x90($a1)
/* 878C0 800970C0 24104400 */  and        $v0, $v0, $a0
/* 878C4 800970C4 03006330 */  andi       $v1, $v1, 3
/* 878C8 800970C8 25104300 */  or         $v0, $v0, $v1
/* 878CC 800970CC FBFF0424 */  addiu      $a0, $zero, -5
/* 878D0 800970D0 9000C2AC */  sw         $v0, 0x90($a2)
/* 878D4 800970D4 24104400 */  and        $v0, $v0, $a0
/* 878D8 800970D8 9000A38C */  lw         $v1, 0x90($a1)
/* 878DC 800970DC F7FF0424 */  addiu      $a0, $zero, -9
/* 878E0 800970E0 04006330 */  andi       $v1, $v1, 4
/* 878E4 800970E4 25104300 */  or         $v0, $v0, $v1
/* 878E8 800970E8 9000C2AC */  sw         $v0, 0x90($a2)
/* 878EC 800970EC 9000A38C */  lw         $v1, 0x90($a1)
/* 878F0 800970F0 24104A00 */  and        $v0, $v0, $t2
/* 878F4 800970F4 24186B00 */  and        $v1, $v1, $t3
/* 878F8 800970F8 25104300 */  or         $v0, $v0, $v1
/* 878FC 800970FC 9000C2AC */  sw         $v0, 0x90($a2)
/* 87900 80097100 24104400 */  and        $v0, $v0, $a0
/* 87904 80097104 9000A38C */  lw         $v1, 0x90($a1)
/* 87908 80097108 9FFF0424 */  addiu      $a0, $zero, -0x61
/* 8790C 8009710C 08006330 */  andi       $v1, $v1, 8
/* 87910 80097110 25104300 */  or         $v0, $v0, $v1
/* 87914 80097114 9000C2AC */  sw         $v0, 0x90($a2)
/* 87918 80097118 24104400 */  and        $v0, $v0, $a0
/* 8791C 8009711C 9000A38C */  lw         $v1, 0x90($a1)
/* 87920 80097120 7FF00424 */  addiu      $a0, $zero, -0xf81
/* 87924 80097124 60006330 */  andi       $v1, $v1, 0x60
/* 87928 80097128 25104300 */  or         $v0, $v0, $v1
/* 8792C 8009712C 9000C2AC */  sw         $v0, 0x90($a2)
/* 87930 80097130 24104400 */  and        $v0, $v0, $a0
/* 87934 80097134 9000A38C */  lw         $v1, 0x90($a1)
/* 87938 80097138 FFCF0424 */  addiu      $a0, $zero, -0x3001
/* 8793C 8009713C 800F6330 */  andi       $v1, $v1, 0xf80
/* 87940 80097140 25104300 */  or         $v0, $v0, $v1
/* 87944 80097144 9000C2AC */  sw         $v0, 0x90($a2)
/* 87948 80097148 24104400 */  and        $v0, $v0, $a0
/* 8794C 8009714C 9000A38C */  lw         $v1, 0x90($a1)
/* 87950 80097150 FFBF0424 */  addiu      $a0, $zero, -0x4001
/* 87954 80097154 00306330 */  andi       $v1, $v1, 0x3000
/* 87958 80097158 25104300 */  or         $v0, $v0, $v1
/* 8795C 8009715C 9000C2AC */  sw         $v0, 0x90($a2)
/* 87960 80097160 9000A38C */  lw         $v1, 0x90($a1)
/* 87964 80097164 24104400 */  and        $v0, $v0, $a0
/* 87968 80097168 00406330 */  andi       $v1, $v1, 0x4000
/* 8796C 8009716C 25104300 */  or         $v0, $v0, $v1
/* 87970 80097170 24404800 */  and        $t0, $v0, $t0
/* 87974 80097174 9000C2AC */  sw         $v0, 0x90($a2)
/* 87978 80097178 9000A38C */  lw         $v1, 0x90($a1)
/* 8797C 8009717C 0600023C */  lui        $v0, 6
/* 87980 80097180 24186200 */  and        $v1, $v1, $v0
/* 87984 80097184 25400301 */  or         $t0, $t0, $v1
/* 87988 80097188 24480901 */  and        $t1, $t0, $t1
/* 8798C 8009718C 9000C8AC */  sw         $t0, 0x90($a2)
/* 87990 80097190 9000A28C */  lw         $v0, 0x90($a1)
/* 87994 80097194 0800033C */  lui        $v1, 8
/* 87998 80097198 24104300 */  and        $v0, $v0, $v1
/* 8799C 8009719C 25482201 */  or         $t1, $t1, $v0
/* 879A0 800971A0 0800E003 */  jr         $ra
/* 879A4 800971A4 9000C9AC */   sw        $t1, 0x90($a2)
