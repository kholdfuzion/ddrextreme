.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab758
/* 9BF58 800AB758 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9BF5C 800AB75C 0F80023C */  lui        $v0, %hi(D_800EC6F8)
/* 9BF60 800AB760 0F80033C */  lui        $v1, 0x800f
/* 9BF64 800AB764 F8C644AC */  sw         $a0, %lo(D_800EC6F8)($v0)
/* 9BF68 800AB768 01000224 */  addiu      $v0, $zero, 1
/* 9BF6C 800AB76C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BF70 800AB770 0F80103C */  lui        $s0, %hi(D_800EC700)
/* 9BF74 800AB774 1400BFAF */  sw         $ra, 0x14($sp)
/* 9BF78 800AB778 FCC662AC */  sw         $v0, -0x3904($v1)
/* 9BF7C 800AB77C 50AA020C */  jal        FUN_800aa940
/* 9BF80 800AB780 00C705AE */   sw        $a1, %lo(D_800EC700)($s0)
/* 9BF84 800AB784 0F80033C */  lui        $v1, %hi(D_800EC704)
/* 9BF88 800AB788 04C762AC */  sw         $v0, %lo(D_800EC704)($v1)
/* 9BF8C 800AB78C 00C7028E */  lw         $v0, -0x3900($s0)
/* 9BF90 800AB790 1400BF8F */  lw         $ra, 0x14($sp)
/* 9BF94 800AB794 1000B08F */  lw         $s0, 0x10($sp)
/* 9BF98 800AB798 0800E003 */  jr         $ra
/* 9BF9C 800AB79C 1800BD27 */   addiu     $sp, $sp, 0x18
