.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a193c
/* 9213C 800A193C 1B80043C */  lui        $a0, %hi(D_801B2B60)
/* 92140 800A1940 602B8324 */  addiu      $v1, $a0, %lo(D_801B2B60)
/* 92144 800A1944 04006524 */  addiu      $a1, $v1, 4
/* 92148 800A1948 01000624 */  addiu      $a2, $zero, 1
/* 9214C 800A194C 1B80023C */  lui        $v0, %hi(D_801B2B84)
/* 92150 800A1950 842B43AC */  sw         $v1, %lo(D_801B2B84)($v0)
/* 92154 800A1954 602B80AC */  sw         $zero, 0x2b60($a0)
.L800A1958:
/* 92158 800A1958 0400A0AC */  sw         $zero, 4($a1)
/* 9215C 800A195C 0800A0AC */  sw         $zero, 8($a1)
/* 92160 800A1960 0000A0AC */  sw         $zero, ($a1)
/* 92164 800A1964 0C00A0AC */  sw         $zero, 0xc($a1)
/* 92168 800A1968 FFFFC624 */  addiu      $a2, $a2, -1
/* 9216C 800A196C FAFFC104 */  bgez       $a2, .L800A1958
/* 92170 800A1970 1000A524 */   addiu     $a1, $a1, 0x10
/* 92174 800A1974 0800E003 */  jr         $ra
/* 92178 800A1978 00000000 */   nop
