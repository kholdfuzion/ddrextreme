.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BEB90
/* AF390 800BEB90 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF394 800BEB94 0F80033C */  lui        $v1, %hi(D_800EE1FC)
/* AF398 800BEB98 FCE1638C */  lw         $v1, %lo(D_800EE1FC)($v1)
/* AF39C 800BEB9C 0F80023C */  lui        $v0, %hi(D_800EE1C4)
/* AF3A0 800BEBA0 1800B0AF */  sw         $s0, 0x18($sp)
/* AF3A4 800BEBA4 C4E15024 */  addiu      $s0, $v0, %lo(D_800EE1C4)
/* AF3A8 800BEBA8 2000BFAF */  sw         $ra, 0x20($sp)
/* AF3AC 800BEBAC 03006014 */  bnez       $v1, .L800BEBBC
/* AF3B0 800BEBB0 1C00B1AF */   sw        $s1, 0x1c($sp)
/* AF3B4 800BEBB4 00FB0208 */  j          .L800BEC00
/* AF3B8 800BEBB8 FFFF0224 */   addiu     $v0, $zero, -1
.L800BEBBC:
/* AF3BC 800BEBBC 0F80043C */  lui        $a0, %hi(D_800EE1D4)
/* AF3C0 800BEBC0 755F000C */  jal        FUN_80017dd4
/* AF3C4 800BEBC4 D4E18424 */   addiu     $a0, $a0, %lo(D_800EE1D4)
/* AF3C8 800BEBC8 0C000012 */  beqz       $s0, .L800BEBFC
/* AF3CC 800BEBCC 0180113C */   lui       $s1, 0x8001
.L800BEBD0:
/* AF3D0 800BEBD0 0400028E */  lw         $v0, 4($s0)
/* AF3D4 800BEBD4 08000696 */  lhu        $a2, 8($s0)
/* AF3D8 800BEBD8 0A000796 */  lhu        $a3, 0xa($s0)
/* AF3DC 800BEBDC 1000A2AF */  sw         $v0, 0x10($sp)
/* AF3E0 800BEBE0 0000058E */  lw         $a1, ($s0)
/* AF3E4 800BEBE4 755F000C */  jal        FUN_80017dd4
/* AF3E8 800BEBE8 AC762426 */   addiu     $a0, $s1, 0x76ac
/* AF3EC 800BEBEC 0C00108E */  lw         $s0, 0xc($s0)
/* AF3F0 800BEBF0 00000000 */  nop
/* AF3F4 800BEBF4 F6FF0016 */  bnez       $s0, .L800BEBD0
/* AF3F8 800BEBF8 00000000 */   nop
.L800BEBFC:
/* AF3FC 800BEBFC 21100000 */  addu       $v0, $zero, $zero
.L800BEC00:
/* AF400 800BEC00 2000BF8F */  lw         $ra, 0x20($sp)
/* AF404 800BEC04 1C00B18F */  lw         $s1, 0x1c($sp)
/* AF408 800BEC08 1800B08F */  lw         $s0, 0x18($sp)
/* AF40C 800BEC0C 0800E003 */  jr         $ra
/* AF410 800BEC10 2800BD27 */   addiu     $sp, $sp, 0x28
