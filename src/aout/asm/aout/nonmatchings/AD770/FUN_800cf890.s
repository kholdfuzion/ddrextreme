.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cf890
/* C0090 800CF890 4567063C */  lui        $a2, 0x6745
/* C0094 800CF894 0123C634 */  ori        $a2, $a2, 0x2301
/* C0098 800CF898 CDEF053C */  lui        $a1, 0xefcd
/* C009C 800CF89C 89ABA534 */  ori        $a1, $a1, 0xab89
/* C00A0 800CF8A0 BA98033C */  lui        $v1, 0x98ba
/* C00A4 800CF8A4 FEDC6334 */  ori        $v1, $v1, 0xdcfe
/* C00A8 800CF8A8 3210023C */  lui        $v0, 0x1032
/* C00AC 800CF8AC 76544234 */  ori        $v0, $v0, 0x5476
/* C00B0 800CF8B0 140080AC */  sw         $zero, 0x14($a0)
/* C00B4 800CF8B4 100080AC */  sw         $zero, 0x10($a0)
/* C00B8 800CF8B8 000086AC */  sw         $a2, ($a0)
/* C00BC 800CF8BC 040085AC */  sw         $a1, 4($a0)
/* C00C0 800CF8C0 080083AC */  sw         $v1, 8($a0)
/* C00C4 800CF8C4 0800E003 */  jr         $ra
/* C00C8 800CF8C8 0C0082AC */   sw        $v0, 0xc($a0)
