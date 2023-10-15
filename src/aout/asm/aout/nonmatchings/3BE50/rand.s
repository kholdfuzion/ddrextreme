.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel rand
/* 4F154 8005E954 C641033C */  lui        $v1, 0x41c6
/* 4F158 8005E958 1A80023C */  lui        $v0, %hi(D_801A2680)
/* 4F15C 8005E95C 8026428C */  lw         $v0, %lo(D_801A2680)($v0)
/* 4F160 8005E960 6D4E6334 */  ori        $v1, $v1, 0x4e6d
/* 4F164 8005E964 18004300 */  mult       $v0, $v1
/* 4F168 8005E968 12200000 */  mflo       $a0
/* 4F16C 8005E96C 39308224 */  addiu      $v0, $a0, 0x3039
/* 4F170 8005E970 1A80013C */  lui        $at, %hi(D_801A2680)
/* 4F174 8005E974 802622AC */  sw         $v0, %lo(D_801A2680)($at)
/* 4F178 8005E978 02140200 */  srl        $v0, $v0, 0x10
/* 4F17C 8005E97C 0800E003 */  jr         $ra
/* 4F180 8005E980 FF7F4230 */   andi      $v0, $v0, 0x7fff
