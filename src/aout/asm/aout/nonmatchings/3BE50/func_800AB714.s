.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800AB714
/* 9BF14 800AB714 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9BF18 800AB718 0F80023C */  lui        $v0, %hi(D_800EC6F8)
/* 9BF1C 800AB71C 0F80033C */  lui        $v1, %hi(D_800EC6FC)
/* 9BF20 800AB720 1000B0AF */  sw         $s0, 0x10($sp)
/* 9BF24 800AB724 0F80103C */  lui        $s0, %hi(D_800EC700)
/* 9BF28 800AB728 1400BFAF */  sw         $ra, 0x14($sp)
/* 9BF2C 800AB72C F8C644AC */  sw         $a0, %lo(D_800EC6F8)($v0)
/* 9BF30 800AB730 FCC660AC */  sw         $zero, %lo(D_800EC6FC)($v1)
/* 9BF34 800AB734 56AB020C */  jal        FUN_800aad58
/* 9BF38 800AB738 00C705AE */   sw        $a1, %lo(D_800EC700)($s0)
/* 9BF3C 800AB73C 0F80033C */  lui        $v1, %hi(D_800EC704)
/* 9BF40 800AB740 04C762AC */  sw         $v0, %lo(D_800EC704)($v1)
/* 9BF44 800AB744 00C7028E */  lw         $v0, -0x3900($s0)
/* 9BF48 800AB748 1400BF8F */  lw         $ra, 0x14($sp)
/* 9BF4C 800AB74C 1000B08F */  lw         $s0, 0x10($sp)
/* 9BF50 800AB750 0800E003 */  jr         $ra
/* 9BF54 800AB754 1800BD27 */   addiu     $sp, $sp, 0x18
