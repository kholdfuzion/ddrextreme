.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c29bc
/* B31BC 800C29BC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B31C0 800C29C0 1400B1AF */  sw         $s1, 0x14($sp)
/* B31C4 800C29C4 21880000 */  addu       $s1, $zero, $zero
/* B31C8 800C29C8 1800B2AF */  sw         $s2, 0x18($sp)
/* B31CC 800C29CC 0F80123C */  lui        $s2, 0x800f
/* B31D0 800C29D0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* B31D4 800C29D4 1000B0AF */  sw         $s0, 0x10($sp)
.L800C29D8:
/* B31D8 800C29D8 1D6E000C */  jal        FUN_8001b874
/* B31DC 800C29DC 00000000 */   nop
/* B31E0 800C29E0 1F05030C */  jal        FUN_800c147c
/* B31E4 800C29E4 00000000 */   nop
/* B31E8 800C29E8 216E000C */  jal        FUN_8001b884
/* B31EC 800C29EC 21804000 */   addu      $s0, $v0, $zero
/* B31F0 800C29F0 EC0A030C */  jal        FUN_800c2bb0
/* B31F4 800C29F4 C8000424 */   addiu     $a0, $zero, 0xc8
/* B31F8 800C29F8 17000016 */  bnez       $s0, .L800C2A58
/* B31FC 800C29FC 21100002 */   addu      $v0, $s0, $zero
/* B3200 800C2A00 FF000424 */  addiu      $a0, $zero, 0xff
/* B3204 800C2A04 54E54526 */  addiu      $a1, $s2, -0x1aac
/* B3208 800C2A08 E905030C */  jal        FUN_800c17a4
/* B320C 800C2A0C 02000624 */   addiu     $a2, $zero, 2
/* B3210 800C2A10 21804000 */  addu       $s0, $v0, $zero
/* B3214 800C2A14 10000016 */  bnez       $s0, .L800C2A58
/* B3218 800C2A18 00000000 */   nop
/* B321C 800C2A1C EC0A030C */  jal        FUN_800c2bb0
/* B3220 800C2A20 64000424 */   addiu     $a0, $zero, 0x64
/* B3224 800C2A24 01003126 */  addiu      $s1, $s1, 1
/* B3228 800C2A28 0200222A */  slti       $v0, $s1, 2
/* B322C 800C2A2C EAFF4014 */  bnez       $v0, .L800C29D8
/* B3230 800C2A30 00000000 */   nop
/* B3234 800C2A34 1D6E000C */  jal        FUN_8001b874
/* B3238 800C2A38 00000000 */   nop
/* B323C 800C2A3C 1F05030C */  jal        FUN_800c147c
/* B3240 800C2A40 00000000 */   nop
/* B3244 800C2A44 216E000C */  jal        FUN_8001b884
/* B3248 800C2A48 21804000 */   addu      $s0, $v0, $zero
/* B324C 800C2A4C EC0A030C */  jal        FUN_800c2bb0
/* B3250 800C2A50 C8000424 */   addiu     $a0, $zero, 0xc8
/* B3254 800C2A54 21100002 */  addu       $v0, $s0, $zero
.L800C2A58:
/* B3258 800C2A58 1C00BF8F */  lw         $ra, 0x1c($sp)
/* B325C 800C2A5C 1800B28F */  lw         $s2, 0x18($sp)
/* B3260 800C2A60 1400B18F */  lw         $s1, 0x14($sp)
/* B3264 800C2A64 1000B08F */  lw         $s0, 0x10($sp)
/* B3268 800C2A68 0800E003 */  jr         $ra
/* B326C 800C2A6C 2000BD27 */   addiu     $sp, $sp, 0x20
