.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetKey
/* A9234 800B8A34 FF00023C */  lui        $v0, 0xff
/* A9238 800B8A38 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A923C 800B8A3C 2428A200 */  and        $a1, $a1, $v0
/* A9240 800B8A40 35008010 */  beqz       $a0, .L800B8B18
/* A9244 800B8A44 02340500 */   srl       $a2, $a1, 0x10
/* A9248 800B8A48 01000224 */  addiu      $v0, $zero, 1
/* A924C 800B8A4C 66008214 */  bne        $a0, $v0, S_SK_OBJ_1B4
/* A9250 800B8A50 00000000 */   nop
/* A9254 800B8A54 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A9258 800B8A58 DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A925C 800B8A5C 00000000 */  nop
/* A9260 800B8A60 01004230 */  andi       $v0, $v0, 1
/* A9264 800B8A64 24004010 */  beqz       $v0, .L800B8AF8
/* A9268 800B8A68 00000000 */   nop
/* A926C 800B8A6C 1E80043C */  lui        $a0, %hi(D_801E0ED8)
/* A9270 800B8A70 D80E8424 */  addiu      $a0, $a0, %lo(D_801E0ED8)
/* A9274 800B8A74 000085A4 */  sh         $a1, ($a0)
/* A9278 800B8A78 020086A4 */  sh         $a2, 2($a0)
/* A927C 800B8A7C 0F80023C */  lui        $v0, %hi(D_800EC7A8)
/* A9280 800B8A80 A8C7428C */  lw         $v0, %lo(D_800EC7A8)($v0)
/* A9284 800B8A84 00000000 */  nop
/* A9288 800B8A88 01004234 */  ori        $v0, $v0, 1
/* A928C 800B8A8C 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A9290 800B8A90 A8C722AC */  sw         $v0, %lo(D_800EC7A8)($at)
/* A9294 800B8A94 0F80023C */  lui        $v0, %hi(D_800EC7A4)
/* A9298 800B8A98 A4C7428C */  lw         $v0, %lo(D_800EC7A4)($v0)
/* A929C 800B8A9C 00000000 */  nop
/* A92A0 800B8AA0 25104500 */  or         $v0, $v0, $a1
/* A92A4 800B8AA4 0F80013C */  lui        $at, %hi(D_800EC7A4)
/* A92A8 800B8AA8 A4C722AC */  sw         $v0, %lo(D_800EC7A4)($at)
/* A92AC 800B8AAC 04008294 */  lhu        $v0, 4($a0)
/* A92B0 800B8AB0 00000000 */  nop
/* A92B4 800B8AB4 24104500 */  and        $v0, $v0, $a1
/* A92B8 800B8AB8 05004010 */  beqz       $v0, .L800B8AD0
/* A92BC 800B8ABC 00000000 */   nop
/* A92C0 800B8AC0 04008294 */  lhu        $v0, 4($a0)
/* A92C4 800B8AC4 27180500 */  nor        $v1, $zero, $a1
/* A92C8 800B8AC8 24104300 */  and        $v0, $v0, $v1
/* A92CC 800B8ACC 040082A4 */  sh         $v0, 4($a0)
.L800B8AD0:
/* A92D0 800B8AD0 06008294 */  lhu        $v0, 6($a0)
/* A92D4 800B8AD4 00000000 */  nop
/* A92D8 800B8AD8 24104600 */  and        $v0, $v0, $a2
/* A92DC 800B8ADC 42004010 */  beqz       $v0, S_SK_OBJ_1B4
/* A92E0 800B8AE0 00000000 */   nop
/* A92E4 800B8AE4 06008294 */  lhu        $v0, 6($a0)
/* A92E8 800B8AE8 27180600 */  nor        $v1, $zero, $a2
/* A92EC 800B8AEC 24104300 */  and        $v0, $v0, $v1
/* A92F0 800B8AF0 FAE20208 */  j          S_SK_OBJ_1B4
/* A92F4 800B8AF4 060082A4 */   sh        $v0, 6($a0)
.L800B8AF8:
/* A92F8 800B8AF8 0F80023C */  lui        $v0, %hi(D_800EC77C)
/* A92FC 800B8AFC 7CC7428C */  lw         $v0, %lo(D_800EC77C)($v0)
/* A9300 800B8B00 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A9304 800B8B04 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A9308 800B8B08 25104500 */  or         $v0, $v0, $a1
/* A930C 800B8B0C 880165A4 */  sh         $a1, 0x188($v1)
/* A9310 800B8B10 F8E20208 */  j          S_SK_OBJ_1AC
/* A9314 800B8B14 8A0166A4 */   sh        $a2, 0x18a($v1)
.L800B8B18:
/* A9318 800B8B18 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A931C 800B8B1C DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A9320 800B8B20 00000000 */  nop
/* A9324 800B8B24 01004230 */  andi       $v0, $v0, 1
/* A9328 800B8B28 24004010 */  beqz       $v0, .L800B8BBC
/* A932C 800B8B2C 00000000 */   nop
/* A9330 800B8B30 1E80043C */  lui        $a0, %hi(D_801E0ED8)
/* A9334 800B8B34 D80E8424 */  addiu      $a0, $a0, %lo(D_801E0ED8)
/* A9338 800B8B38 040085A4 */  sh         $a1, 4($a0)
/* A933C 800B8B3C 060086A4 */  sh         $a2, 6($a0)
/* A9340 800B8B40 0F80023C */  lui        $v0, %hi(D_800EC7A8)
/* A9344 800B8B44 A8C7428C */  lw         $v0, %lo(D_800EC7A8)($v0)
/* A9348 800B8B48 00000000 */  nop
/* A934C 800B8B4C 01004234 */  ori        $v0, $v0, 1
/* A9350 800B8B50 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A9354 800B8B54 A8C722AC */  sw         $v0, %lo(D_800EC7A8)($at)
/* A9358 800B8B58 0F80023C */  lui        $v0, %hi(D_800EC7A4)
/* A935C 800B8B5C A4C7428C */  lw         $v0, %lo(D_800EC7A4)($v0)
/* A9360 800B8B60 27180500 */  nor        $v1, $zero, $a1
/* A9364 800B8B64 24104300 */  and        $v0, $v0, $v1
/* A9368 800B8B68 0F80013C */  lui        $at, %hi(D_800EC7A4)
/* A936C 800B8B6C A4C722AC */  sw         $v0, %lo(D_800EC7A4)($at)
/* A9370 800B8B70 00008294 */  lhu        $v0, ($a0)
/* A9374 800B8B74 00000000 */  nop
/* A9378 800B8B78 24104500 */  and        $v0, $v0, $a1
/* A937C 800B8B7C 05004010 */  beqz       $v0, .L800B8B94
/* A9380 800B8B80 00000000 */   nop
/* A9384 800B8B84 00008294 */  lhu        $v0, ($a0)
/* A9388 800B8B88 00000000 */  nop
/* A938C 800B8B8C 24104300 */  and        $v0, $v0, $v1
/* A9390 800B8B90 000082A4 */  sh         $v0, ($a0)
.L800B8B94:
/* A9394 800B8B94 02008294 */  lhu        $v0, 2($a0)
/* A9398 800B8B98 00000000 */  nop
/* A939C 800B8B9C 24104600 */  and        $v0, $v0, $a2
/* A93A0 800B8BA0 11004010 */  beqz       $v0, S_SK_OBJ_1B4
/* A93A4 800B8BA4 00000000 */   nop
/* A93A8 800B8BA8 02008294 */  lhu        $v0, 2($a0)
/* A93AC 800B8BAC 27180600 */  nor        $v1, $zero, $a2
/* A93B0 800B8BB0 24104300 */  and        $v0, $v0, $v1
/* A93B4 800B8BB4 FAE20208 */  j          S_SK_OBJ_1B4
/* A93B8 800B8BB8 020082A4 */   sh        $v0, 2($a0)
.L800B8BBC:
/* A93BC 800B8BBC 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A93C0 800B8BC0 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A93C4 800B8BC4 00000000 */  nop
/* A93C8 800B8BC8 8C0145A4 */  sh         $a1, 0x18c($v0)
/* A93CC 800B8BCC 8E0146A4 */  sh         $a2, 0x18e($v0)
/* A93D0 800B8BD0 0F80023C */  lui        $v0, %hi(D_800EC77C)
/* A93D4 800B8BD4 7CC7428C */  lw         $v0, %lo(D_800EC77C)($v0)
/* A93D8 800B8BD8 27180500 */  nor        $v1, $zero, $a1
/* A93DC 800B8BDC 24104300 */  and        $v0, $v0, $v1
