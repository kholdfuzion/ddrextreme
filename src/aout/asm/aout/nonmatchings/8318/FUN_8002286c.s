.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002286c
/* 1306C 8002286C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 13070 80022870 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 13074 80022874 0F80033C */  lui        $v1, 0x800f
/* 13078 80022878 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 1307C 8002287C 1F000224 */  addiu      $v0, $zero, 0x1f
/* 13080 80022880 1380053C */  lui        $a1, %hi(D_80129DA8)
/* 13084 80022884 A89DA524 */  addiu      $a1, $a1, %lo(D_80129DA8)
/* 13088 80022888 1000BFAF */  sw         $ra, 0x10($sp)
/* 1308C 8002288C 280062A4 */  sh         $v0, 0x28($v1)
/* 13090 80022890 B40DA28C */  lw         $v0, 0xdb4($a1)
/* 13094 80022894 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 13098 80022898 24104300 */  and        $v0, $v0, $v1
/* 1309C 8002289C 20004234 */  ori        $v0, $v0, 0x20
/* 130A0 800228A0 B40DA2AC */  sw         $v0, 0xdb4($a1)
/* 130A4 800228A4 0400828C */  lw         $v0, 4($a0)
/* 130A8 800228A8 00000000 */  nop
/* 130AC 800228AC 01004224 */  addiu      $v0, $v0, 1
/* 130B0 800228B0 F7BB010C */  jal        FUN_8006efdc
/* 130B4 800228B4 040082AC */   sw        $v0, 4($a0)
/* 130B8 800228B8 E755010C */  jal        FUN_8005579c
/* 130BC 800228BC 00000000 */   nop
/* 130C0 800228C0 1000BF8F */  lw         $ra, 0x10($sp)
/* 130C4 800228C4 00000000 */  nop
/* 130C8 800228C8 0800E003 */  jr         $ra
/* 130CC 800228CC 1800BD27 */   addiu     $sp, $sp, 0x18
