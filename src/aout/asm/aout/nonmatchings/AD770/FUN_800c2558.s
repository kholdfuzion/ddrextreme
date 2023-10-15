.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c2558
/* B2D58 800C2558 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B2D5C 800C255C 1F80023C */  lui        $v0, %hi(D_801F71C0)
/* B2D60 800C2560 C07144AC */  sw         $a0, %lo(D_801F71C0)($v0)
/* B2D64 800C2564 C0714224 */  addiu      $v0, $v0, 0x71c0
/* B2D68 800C2568 1000BFAF */  sw         $ra, 0x10($sp)
/* B2D6C 800C256C 040040AC */  sw         $zero, 4($v0)
/* B2D70 800C2570 080040AC */  sw         $zero, 8($v0)
/* B2D74 800C2574 0C0145A0 */  sb         $a1, 0x10c($v0)
/* B2D78 800C2578 0D0140A0 */  sb         $zero, 0x10d($v0)
/* B2D7C 800C257C 0E0140A0 */  sb         $zero, 0x10e($v0)
/* B2D80 800C2580 0F0140A0 */  sb         $zero, 0x10f($v0)
/* B2D84 800C2584 E708030C */  jal        FUN_800c239c
/* B2D88 800C2588 100140A0 */   sb        $zero, 0x110($v0)
/* B2D8C 800C258C 1000BF8F */  lw         $ra, 0x10($sp)
/* B2D90 800C2590 00000000 */  nop
/* B2D94 800C2594 0800E003 */  jr         $ra
/* B2D98 800C2598 1800BD27 */   addiu     $sp, $sp, 0x18
