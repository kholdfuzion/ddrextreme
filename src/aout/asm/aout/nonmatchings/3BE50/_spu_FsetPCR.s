.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_FsetPCR
/* A7EE4 800B76E4 0F80053C */  lui        $a1, %hi(D_800EC800)
/* A7EE8 800B76E8 00C8A58C */  lw         $a1, %lo(D_800EC800)($a1)
/* A7EEC 800B76EC F8FF033C */  lui        $v1, 0xfff8
/* A7EF0 800B76F0 0000A28C */  lw         $v0, ($a1)
/* A7EF4 800B76F4 FFFF6334 */  ori        $v1, $v1, 0xffff
/* A7EF8 800B76F8 24104300 */  and        $v0, $v0, $v1
/* A7EFC 800B76FC 07008010 */  beqz       $a0, .L800B771C
/* A7F00 800B7700 0000A2AC */   sw        $v0, ($a1)
/* A7F04 800B7704 0F80023C */  lui        $v0, %hi(D_800EC800)
/* A7F08 800B7708 00C8428C */  lw         $v0, %lo(D_800EC800)($v0)
/* A7F0C 800B770C 00000000 */  nop
/* A7F10 800B7710 0000438C */  lw         $v1, ($v0)
/* A7F14 800B7714 CCDD0208 */  j          SPU_OBJ_A7C
/* A7F18 800B7718 0300043C */   lui       $a0, 3
.L800B771C:
/* A7F1C 800B771C 0F80023C */  lui        $v0, %hi(D_800EC800)
/* A7F20 800B7720 00C8428C */  lw         $v0, %lo(D_800EC800)($v0)
/* A7F24 800B7724 00000000 */  nop
/* A7F28 800B7728 0000438C */  lw         $v1, ($v0)
/* A7F2C 800B772C 0500043C */  lui        $a0, 5
