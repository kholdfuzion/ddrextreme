.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel flashlib_800be22c
/* AEA2C 800BE22C 0F80023C */  lui        $v0, %hi(D_800EE1AC)
/* AEA30 800BE230 ACE1428C */  lw         $v0, %lo(D_800EE1AC)($v0)
/* AEA34 800BE234 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AEA38 800BE238 06004014 */  bnez       $v0, .L800BE254
/* AEA3C 800BE23C 1000BFAF */   sw        $ra, 0x10($sp)
/* AEA40 800BE240 0F80043C */  lui        $a0, %hi(D_800EE1B0)
/* AEA44 800BE244 C2FA020C */  jal        FUN_800beb08
/* AEA48 800BE248 B0E18424 */   addiu     $a0, $a0, %lo(D_800EE1B0)
/* AEA4C 800BE24C 08004004 */  bltz       $v0, .L800BE270
/* AEA50 800BE250 FFFF0224 */   addiu     $v0, $zero, -1
.L800BE254:
/* AEA54 800BE254 0F80043C */  lui        $a0, %hi(D_800EE0E4)
/* AEA58 800BE258 7E81000C */  jal        strlen
/* AEA5C 800BE25C E4E08424 */   addiu     $a0, $a0, %lo(D_800EE0E4)
/* AEA60 800BE260 0F80033C */  lui        $v1, %hi(D_800EE1AC)
/* AEA64 800BE264 01000224 */  addiu      $v0, $zero, 1
/* AEA68 800BE268 ACE162AC */  sw         $v0, %lo(D_800EE1AC)($v1)
/* AEA6C 800BE26C 21100000 */  addu       $v0, $zero, $zero
.L800BE270:
/* AEA70 800BE270 1000BF8F */  lw         $ra, 0x10($sp)
/* AEA74 800BE274 00000000 */  nop
/* AEA78 800BE278 0800E003 */  jr         $ra
/* AEA7C 800BE27C 1800BD27 */   addiu     $sp, $sp, 0x18
