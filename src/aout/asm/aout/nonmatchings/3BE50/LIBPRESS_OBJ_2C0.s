.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_2C0
/* 63C04 80073404 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63C08 80073408 21288000 */  addu       $a1, $a0, $zero
/* 63C0C 8007340C 0600A010 */  beqz       $a1, .L80073428
/* 63C10 80073410 1000BFAF */   sw        $ra, 0x10($sp)
/* 63C14 80073414 01000224 */  addiu      $v0, $zero, 1
/* 63C18 80073418 1B00A210 */  beq        $a1, $v0, .L80073488
/* 63C1C 8007341C 0080023C */   lui       $v0, 0x8000
/* 63C20 80073420 36CD0108 */  j          LIBPRESS_OBJ_394
/* 63C24 80073424 00000000 */   nop
.L80073428:
/* 63C28 80073428 0E80033C */  lui        $v1, %hi(D_800DB124)
/* 63C2C 8007342C 24B1638C */  lw         $v1, %lo(D_800DB124)($v1)
/* 63C30 80073430 0080023C */  lui        $v0, 0x8000
/* 63C34 80073434 000062AC */  sw         $v0, ($v1)
/* 63C38 80073438 0E80023C */  lui        $v0, %hi(D_800DB0F8)
/* 63C3C 8007343C F8B0428C */  lw         $v0, %lo(D_800DB0F8)($v0)
/* 63C40 80073440 0E80043C */  lui        $a0, %hi(D_800DAFE0)
/* 63C44 80073444 E0AF8424 */  addiu      $a0, $a0, %lo(D_800DAFE0)
/* 63C48 80073448 000040AC */  sw         $zero, ($v0)
/* 63C4C 8007344C 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63C50 80073450 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63C54 80073454 20000524 */  addiu      $a1, $zero, 0x20
/* 63C58 80073458 000040AC */  sw         $zero, ($v0)
/* 63C5C 8007345C 0E80033C */  lui        $v1, %hi(D_800DB124)
/* 63C60 80073460 24B1638C */  lw         $v1, %lo(D_800DB124)($v1)
/* 63C64 80073464 0060023C */  lui        $v0, 0x6000
/* 63C68 80073468 3DCD010C */  jal        LIBPRESS_OBJ_3B0
/* 63C6C 8007346C 000062AC */   sw        $v0, ($v1)
/* 63C70 80073470 0E80043C */  lui        $a0, %hi(D_800DB064)
/* 63C74 80073474 64B08424 */  addiu      $a0, $a0, %lo(D_800DB064)
/* 63C78 80073478 3DCD010C */  jal        LIBPRESS_OBJ_3B0
/* 63C7C 8007347C 20000524 */   addiu     $a1, $zero, 0x20
/* 63C80 80073480 39CD0108 */  j          LIBPRESS_OBJ_3A0
/* 63C84 80073484 00000000 */   nop
.L80073488:
/* 63C88 80073488 0E80033C */  lui        $v1, %hi(D_800DB124)
/* 63C8C 8007348C 24B1638C */  lw         $v1, %lo(D_800DB124)($v1)
/* 63C90 80073490 00000000 */  nop
/* 63C94 80073494 000062AC */  sw         $v0, ($v1)
/* 63C98 80073498 0E80023C */  lui        $v0, %hi(D_800DB0F8)
/* 63C9C 8007349C F8B0428C */  lw         $v0, %lo(D_800DB0F8)($v0)
/* 63CA0 800734A0 00000000 */  nop
/* 63CA4 800734A4 000040AC */  sw         $zero, ($v0)
/* 63CA8 800734A8 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63CAC 800734AC 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63CB0 800734B0 00000000 */  nop
/* 63CB4 800734B4 000040AC */  sw         $zero, ($v0)
/* 63CB8 800734B8 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63CBC 800734BC 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63CC0 800734C0 0E80033C */  lui        $v1, %hi(D_800DB124)
/* 63CC4 800734C4 24B1638C */  lw         $v1, %lo(D_800DB124)($v1)
/* 63CC8 800734C8 0000428C */  lw         $v0, ($v0)
/* 63CCC 800734CC 0060023C */  lui        $v0, 0x6000
/* 63CD0 800734D0 39CD0108 */  j          LIBPRESS_OBJ_3A0
/* 63CD4 800734D4 000062AC */   sw        $v0, ($v1)
