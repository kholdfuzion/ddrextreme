.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_440
/* 63D84 80073584 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 63D88 80073588 1400B1AF */  sw         $s1, 0x14($sp)
/* 63D8C 8007358C 21888000 */  addu       $s1, $a0, $zero
/* 63D90 80073590 1000B0AF */  sw         $s0, 0x10($sp)
/* 63D94 80073594 1800BFAF */  sw         $ra, 0x18($sp)
/* 63D98 80073598 A9CD010C */  jal        LIBPRESS_OBJ_560
/* 63D9C 8007359C 2180A000 */   addu      $s0, $a1, $zero
/* 63DA0 800735A0 0E80033C */  lui        $v1, %hi(D_800DB128)
/* 63DA4 800735A4 28B1638C */  lw         $v1, %lo(D_800DB128)($v1)
/* 63DA8 800735A8 00000000 */  nop
/* 63DAC 800735AC 0000628C */  lw         $v0, ($v1)
/* 63DB0 800735B0 42811000 */  srl        $s0, $s0, 5
/* 63DB4 800735B4 88004234 */  ori        $v0, $v0, 0x88
/* 63DB8 800735B8 000062AC */  sw         $v0, ($v1)
/* 63DBC 800735BC 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63DC0 800735C0 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63DC4 800735C4 00841000 */  sll        $s0, $s0, 0x10
/* 63DC8 800735C8 000040AC */  sw         $zero, ($v0)
/* 63DCC 800735CC 0E80023C */  lui        $v0, %hi(D_800DB0FC)
/* 63DD0 800735D0 FCB0428C */  lw         $v0, %lo(D_800DB0FC)($v0)
/* 63DD4 800735D4 20001036 */  ori        $s0, $s0, 0x20
/* 63DD8 800735D8 000051AC */  sw         $s1, ($v0)
/* 63DDC 800735DC 0E80023C */  lui        $v0, %hi(D_800DB100)
/* 63DE0 800735E0 00B1428C */  lw         $v0, %lo(D_800DB100)($v0)
/* 63DE4 800735E4 0001033C */  lui        $v1, 0x100
/* 63DE8 800735E8 000050AC */  sw         $s0, ($v0)
/* 63DEC 800735EC 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63DF0 800735F0 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63DF4 800735F4 00026334 */  ori        $v1, $v1, 0x200
/* 63DF8 800735F8 000043AC */  sw         $v1, ($v0)
/* 63DFC 800735FC 1800BF8F */  lw         $ra, 0x18($sp)
/* 63E00 80073600 1400B18F */  lw         $s1, 0x14($sp)
/* 63E04 80073604 1000B08F */  lw         $s0, 0x10($sp)
/* 63E08 80073608 0800E003 */  jr         $ra
/* 63E0C 8007360C 2000BD27 */   addiu     $sp, $sp, 0x20
