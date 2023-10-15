.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001bfd0
/* C7D0 8001BFD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* C7D4 8001BFD4 2000BFAF */  sw         $ra, 0x20($sp)
/* C7D8 8001BFD8 801F023C */  lui        $v0, 0x1f80
/* C7DC 8001BFDC FC034234 */  ori        $v0, $v0, 0x3fc
/* C7E0 8001BFE0 21404000 */  addu       $t0, $v0, $zero
/* C7E4 8001BFE4 00001DAD */  sw         $sp, ($t0)
/* C7E8 8001BFE8 FCFF0825 */  addiu      $t0, $t0, -4
/* C7EC 8001BFEC 21E80001 */  addu       $sp, $t0, $zero
/* C7F0 8001BFF0 49A2000C */  jal        FUN_80028924
/* C7F4 8001BFF4 00000000 */   nop
/* C7F8 8001BFF8 38A4000C */  jal        FUN_800290e0
/* C7FC 8001BFFC 00000000 */   nop
/* C800 8001C000 76B9000C */  jal        FUN_8002e5d8
/* C804 8001C004 00000000 */   nop
/* C808 8001C008 0400BD27 */  addiu      $sp, $sp, 4
/* C80C 8001C00C 0000BD8F */  lw         $sp, ($sp)
/* C810 8001C010 0C72000C */  jal        FUN_8001c830
/* C814 8001C014 00000000 */   nop
/* C818 8001C018 801F023C */  lui        $v0, 0x1f80
/* C81C 8001C01C FC034234 */  ori        $v0, $v0, 0x3fc
/* C820 8001C020 21404000 */  addu       $t0, $v0, $zero
/* C824 8001C024 00001DAD */  sw         $sp, ($t0)
/* C828 8001C028 FCFF0825 */  addiu      $t0, $t0, -4
/* C82C 8001C02C 21E80001 */  addu       $sp, $t0, $zero
/* C830 8001C030 B4C7020C */  jal        FUN_800b1ed0
/* C834 8001C034 00000000 */   nop
/* C838 8001C038 63C3020C */  jal        FUN_800b0d8c
/* C83C 8001C03C 00000000 */   nop
/* C840 8001C040 72C0020C */  jal        FUN_800b01c8
/* C844 8001C044 00000000 */   nop
/* C848 8001C048 0400BD27 */  addiu      $sp, $sp, 4
/* C84C 8001C04C 0000BD8F */  lw         $sp, ($sp)
/* C850 8001C050 CD6B000C */  jal        VSync
/* C854 8001C054 01000424 */   addiu     $a0, $zero, 1
/* C858 8001C058 AA004228 */  slti       $v0, $v0, 0xaa
/* C85C 8001C05C 04004010 */  beqz       $v0, .L8001C070
/* C860 8001C060 801F023C */   lui       $v0, 0x1f80
/* C864 8001C064 91AE000C */  jal        FUN_8002ba44
/* C868 8001C068 00000000 */   nop
/* C86C 8001C06C 801F023C */  lui        $v0, 0x1f80
.L8001C070:
/* C870 8001C070 FC034234 */  ori        $v0, $v0, 0x3fc
/* C874 8001C074 21404000 */  addu       $t0, $v0, $zero
/* C878 8001C078 00001DAD */  sw         $sp, ($t0)
/* C87C 8001C07C FCFF0825 */  addiu      $t0, $t0, -4
/* C880 8001C080 21E80001 */  addu       $sp, $t0, $zero
/* C884 8001C084 64A0000C */  jal        FUN_80028190
/* C888 8001C088 00000000 */   nop
/* C88C 8001C08C 0400BD27 */  addiu      $sp, $sp, 4
/* C890 8001C090 0000BD8F */  lw         $sp, ($sp)
/* C894 8001C094 801F023C */  lui        $v0, 0x1f80
/* C898 8001C098 FC034234 */  ori        $v0, $v0, 0x3fc
/* C89C 8001C09C 21404000 */  addu       $t0, $v0, $zero
/* C8A0 8001C0A0 00001DAD */  sw         $sp, ($t0)
/* C8A4 8001C0A4 FCFF0825 */  addiu      $t0, $t0, -4
/* C8A8 8001C0A8 21E80001 */  addu       $sp, $t0, $zero
/* C8AC 8001C0AC FF9B020C */  jal        FUN_800a6ffc
/* C8B0 8001C0B0 00000000 */   nop
/* C8B4 8001C0B4 0400BD27 */  addiu      $sp, $sp, 4
/* C8B8 8001C0B8 0000BD8F */  lw         $sp, ($sp)
/* C8BC 8001C0BC 7CAA000C */  jal        vsync_8002a9f0
/* C8C0 8001C0C0 00000000 */   nop
/* C8C4 8001C0C4 2000BF8F */  lw         $ra, 0x20($sp)
/* C8C8 8001C0C8 00000000 */  nop
/* C8CC 8001C0CC 0800E003 */  jr         $ra
/* C8D0 8001C0D0 2800BD27 */   addiu     $sp, $sp, 0x28
