.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_Fr_
/* A79B0 800B71B0 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A79B4 800B71B4 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A79B8 800B71B8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A79BC 800B71BC 1400B1AF */  sw         $s1, 0x14($sp)
/* A79C0 800B71C0 21888000 */  addu       $s1, $a0, $zero
/* A79C4 800B71C4 1000B0AF */  sw         $s0, 0x10($sp)
/* A79C8 800B71C8 1800BFAF */  sw         $ra, 0x18($sp)
/* A79CC 800B71CC A60145A4 */  sh         $a1, 0x1a6($v0)
/* A79D0 800B71D0 E3DD020C */  jal        _spu_Fw1ts
/* A79D4 800B71D4 2180C000 */   addu      $s0, $a2, $zero
/* A79D8 800B71D8 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A79DC 800B71DC F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A79E0 800B71E0 00000000 */  nop
/* A79E4 800B71E4 AA016294 */  lhu        $v0, 0x1aa($v1)
/* A79E8 800B71E8 00000000 */  nop
/* A79EC 800B71EC 30004234 */  ori        $v0, $v0, 0x30
/* A79F0 800B71F0 AA0162A4 */  sh         $v0, 0x1aa($v1)
/* A79F4 800B71F4 E3DD020C */  jal        _spu_Fw1ts
/* A79F8 800B71F8 00841000 */   sll       $s0, $s0, 0x10
/* A79FC 800B71FC D9DD020C */  jal        SPU_OBJ_AB0
/* A7A00 800B7200 00000000 */   nop
/* A7A04 800B7204 0001043C */  lui        $a0, 0x100
/* A7A08 800B7208 00028434 */  ori        $a0, $a0, 0x200
/* A7A0C 800B720C 0F80023C */  lui        $v0, %hi(D_800EC7F4)
/* A7A10 800B7210 F4C7428C */  lw         $v0, %lo(D_800EC7F4)($v0)
/* A7A14 800B7214 00000000 */  nop
/* A7A18 800B7218 000051AC */  sw         $s1, ($v0)
/* A7A1C 800B721C 0F80023C */  lui        $v0, %hi(D_800EC7F8)
/* A7A20 800B7220 F8C7428C */  lw         $v0, %lo(D_800EC7F8)($v0)
/* A7A24 800B7224 10001036 */  ori        $s0, $s0, 0x10
/* A7A28 800B7228 000050AC */  sw         $s0, ($v0)
/* A7A2C 800B722C 0F80033C */  lui        $v1, %hi(D_800EC7FC)
/* A7A30 800B7230 FCC7638C */  lw         $v1, %lo(D_800EC7FC)($v1)
/* A7A34 800B7234 01000224 */  addiu      $v0, $zero, 1
/* A7A38 800B7238 0F80013C */  lui        $at, %hi(D_800EC840)
/* A7A3C 800B723C 40C822AC */  sw         $v0, %lo(D_800EC840)($at)
/* A7A40 800B7240 000064AC */  sw         $a0, ($v1)
/* A7A44 800B7244 1800BF8F */  lw         $ra, 0x18($sp)
/* A7A48 800B7248 1400B18F */  lw         $s1, 0x14($sp)
/* A7A4C 800B724C 1000B08F */  lw         $s0, 0x10($sp)
/* A7A50 800B7250 0800E003 */  jr         $ra
/* A7A54 800B7254 2000BD27 */   addiu     $sp, $sp, 0x20
