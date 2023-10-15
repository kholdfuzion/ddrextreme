.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSYNC_OBJ_178
/* B8AC 8001B0AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* B8B0 8001B0B0 C02B0500 */  sll        $a1, $a1, 0xf
/* B8B4 8001B0B4 1000A5AF */  sw         $a1, 0x10($sp)
/* B8B8 8001B0B8 0D80023C */  lui        $v0, %hi(D_800D3E28)
/* B8BC 8001B0BC 283E428C */  lw         $v0, %lo(D_800D3E28)($v0)
/* B8C0 8001B0C0 00000000 */  nop
/* B8C4 8001B0C4 2A104400 */  slt        $v0, $v0, $a0
/* B8C8 8001B0C8 1A004010 */  beqz       $v0, VSYNC_OBJ_200
/* B8CC 8001B0CC 1800BFAF */   sw        $ra, 0x18($sp)
/* B8D0 8001B0D0 FFFF0324 */  addiu      $v1, $zero, -1
.L8001B0D4:
/* B8D4 8001B0D4 1000A28F */  lw         $v0, 0x10($sp)
/* B8D8 8001B0D8 00000000 */  nop
/* B8DC 8001B0DC FFFF4224 */  addiu      $v0, $v0, -1
/* B8E0 8001B0E0 1000A2AF */  sw         $v0, 0x10($sp)
/* B8E4 8001B0E4 1000A28F */  lw         $v0, 0x10($sp)
/* B8E8 8001B0E8 00000000 */  nop
/* B8EC 8001B0EC 0B004314 */  bne        $v0, $v1, .L8001B11C
/* B8F0 8001B0F0 00000000 */   nop
/* B8F4 8001B0F4 0180043C */  lui        $a0, %hi(D_800102C0)
/* B8F8 8001B0F8 7B5F000C */  jal        FUN_80017dec
/* B8FC 8001B0FC C0028424 */   addiu     $a0, $a0, %lo(D_800102C0)
/* B900 8001B100 516C000C */  jal        ChangeClearPAD
/* B904 8001B104 21200000 */   addu      $a0, $zero, $zero
/* B908 8001B108 03000424 */  addiu      $a0, $zero, 3
/* B90C 8001B10C 556C000C */  jal        ChangeClearRCnt
/* B910 8001B110 21280000 */   addu      $a1, $zero, $zero
/* B914 8001B114 4D6C0008 */  j          VSYNC_OBJ_200
/* B918 8001B118 00000000 */   nop
.L8001B11C:
/* B91C 8001B11C 0D80023C */  lui        $v0, %hi(D_800D3E28)
/* B920 8001B120 283E428C */  lw         $v0, %lo(D_800D3E28)($v0)
/* B924 8001B124 00000000 */  nop
/* B928 8001B128 2A104400 */  slt        $v0, $v0, $a0
/* B92C 8001B12C E9FF4014 */  bnez       $v0, .L8001B0D4
/* B930 8001B130 00000000 */   nop
