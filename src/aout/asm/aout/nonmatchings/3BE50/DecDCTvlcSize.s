.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTvlcSize
/* 63FD4 800737D4 0E80083C */  lui        $t0, %hi(D_800DB130)
/* 63FD8 800737D8 30B10825 */  addiu      $t0, $t0, %lo(D_800DB130)
/* 63FDC 800737DC FFFF8120 */  addi       $at, $a0, -1
/* 63FE0 800737E0 04002018 */  blez       $at, .L800737F4
/* 63FE4 800737E4 0000028D */   lw        $v0, ($t0)
/* 63FE8 800737E8 40080400 */  sll        $at, $a0, 1
/* 63FEC 800737EC 0800E003 */  jr         $ra
/* 63FF0 800737F0 000001AD */   sw        $at, ($t0)
.L800737F4:
/* 63FF4 800737F4 FF00013C */  lui        $at, 0xff
/* 63FF8 800737F8 FFFF2134 */  ori        $at, $at, 0xffff
/* 63FFC 800737FC 0800E003 */  jr         $ra
/* 64000 80073800 000001AD */   sw        $at, ($t0)
