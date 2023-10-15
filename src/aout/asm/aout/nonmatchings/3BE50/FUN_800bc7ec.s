.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bc7ec
/* ACFEC 800BC7EC 0F80093C */  lui        $t1, %hi(D_800ED0B8)
/* ACFF0 800BC7F0 B8D0298D */  lw         $t1, %lo(D_800ED0B8)($t1)
/* ACFF4 800BC7F4 80000A3C */  lui        $t2, 0x80
/* ACFF8 800BC7F8 0000228D */  lw         $v0, ($t1)
/* ACFFC 800BC7FC 1000AB8F */  lw         $t3, 0x10($sp)
/* AD000 800BC800 1800A38F */  lw         $v1, 0x18($sp)
/* AD004 800BC804 1400A88F */  lw         $t0, 0x14($sp)
/* AD008 800BC808 25104A00 */  or         $v0, $v0, $t2
/* AD00C 800BC80C 000022AD */  sw         $v0, ($t1)
/* AD010 800BC810 0F80023C */  lui        $v0, %hi(D_800ED0AC)
/* AD014 800BC814 ACD0428C */  lw         $v0, %lo(D_800ED0AC)($v0)
/* AD018 800BC818 00340600 */  sll        $a2, $a2, 0x10
/* AD01C 800BC81C 000044AC */  sw         $a0, ($v0)
/* AD020 800BC820 0F80023C */  lui        $v0, %hi(D_800ED0B0)
/* AD024 800BC824 B0D0428C */  lw         $v0, %lo(D_800ED0B0)($v0)
/* AD028 800BC828 2530C500 */  or         $a2, $a2, $a1
/* AD02C 800BC82C 07000831 */  andi       $t0, $t0, 7
/* AD030 800BC830 000046AC */  sw         $a2, ($v0)
/* AD034 800BC834 0001023C */  lui        $v0, 0x100
/* AD038 800BC838 00440800 */  sll        $t0, $t0, 0x10
/* AD03C 800BC83C 25400201 */  or         $t0, $t0, $v0
/* AD040 800BC840 07006330 */  andi       $v1, $v1, 7
/* AD044 800BC844 001D0300 */  sll        $v1, $v1, 0x14
/* AD048 800BC848 0F00E730 */  andi       $a3, $a3, 0xf
/* AD04C 800BC84C 003A0700 */  sll        $a3, $a3, 8
/* AD050 800BC850 25186800 */  or         $v1, $v1, $t0
/* AD054 800BC854 0F80023C */  lui        $v0, %hi(D_800ED0B4)
/* AD058 800BC858 B4D0428C */  lw         $v0, %lo(D_800ED0B4)($v0)
/* AD05C 800BC85C 25186700 */  or         $v1, $v1, $a3
/* AD060 800BC860 01006B31 */  andi       $t3, $t3, 1
/* AD064 800BC864 25186B00 */  or         $v1, $v1, $t3
/* AD068 800BC868 0800E003 */  jr         $ra
/* AD06C 800BC86C 000043AC */   sw        $v1, ($v0)
