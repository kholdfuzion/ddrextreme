.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006CB6C
/* 5D36C 8006CB6C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5D370 8006CB70 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5D374 8006CB74 40100400 */  sll        $v0, $a0, 1
/* 5D378 8006CB78 21104400 */  addu       $v0, $v0, $a0
/* 5D37C 8006CB7C 80100200 */  sll        $v0, $v0, 2
/* 5D380 8006CB80 23104400 */  subu       $v0, $v0, $a0
/* 5D384 8006CB84 80100200 */  sll        $v0, $v0, 2
/* 5D388 8006CB88 23104400 */  subu       $v0, $v0, $a0
/* 5D38C 8006CB8C 80100200 */  sll        $v0, $v0, 2
/* 5D390 8006CB90 21104400 */  addu       $v0, $v0, $a0
/* 5D394 8006CB94 80100200 */  sll        $v0, $v0, 2
/* 5D398 8006CB98 23104400 */  subu       $v0, $v0, $a0
/* 5D39C 8006CB9C 80100200 */  sll        $v0, $v0, 2
/* 5D3A0 8006CBA0 80410300 */  sll        $t0, $v1, 6
/* 5D3A4 8006CBA4 21400301 */  addu       $t0, $t0, $v1
/* 5D3A8 8006CBA8 80400800 */  sll        $t0, $t0, 2
/* 5D3AC 8006CBAC 23400301 */  subu       $t0, $t0, $v1
/* 5D3B0 8006CBB0 C0400800 */  sll        $t0, $t0, 3
/* 5D3B4 8006CBB4 21400301 */  addu       $t0, $t0, $v1
/* 5D3B8 8006CBB8 C0400800 */  sll        $t0, $t0, 3
/* 5D3BC 8006CBBC 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5D3C0 8006CBC0 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5D3C4 8006CBC4 21104300 */  addu       $v0, $v0, $v1
/* 5D3C8 8006CBC8 21400201 */  addu       $t0, $t0, $v0
/* 5D3CC 8006CBCC C0180500 */  sll        $v1, $a1, 3
/* 5D3D0 8006CBD0 23186500 */  subu       $v1, $v1, $a1
/* 5D3D4 8006CBD4 80180300 */  sll        $v1, $v1, 2
/* 5D3D8 8006CBD8 21400301 */  addu       $t0, $t0, $v1
/* 5D3DC 8006CBDC 3C000825 */  addiu      $t0, $t0, 0x3c
/* 5D3E0 8006CBE0 100006A5 */  sh         $a2, 0x10($t0)
/* 5D3E4 8006CBE4 0800E003 */  jr         $ra
/* 5D3E8 8006CBE8 120007A5 */   sh        $a3, 0x12($t0)
