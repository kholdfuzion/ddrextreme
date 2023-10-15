.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8001E4CC
/* ECCC 8001E4CC 70FFBD27 */  addiu      $sp, $sp, -0x90
/* ECD0 8001E4D0 8400B1AF */  sw         $s1, 0x84($sp)
/* ECD4 8001E4D4 21888000 */  addu       $s1, $a0, $zero
/* ECD8 8001E4D8 0F80043C */  lui        $a0, %hi(D_800F0028)
/* ECDC 8001E4DC 28008424 */  addiu      $a0, $a0, %lo(D_800F0028)
/* ECE0 8001E4E0 80101100 */  sll        $v0, $s1, 2
/* ECE4 8001E4E4 21105100 */  addu       $v0, $v0, $s1
/* ECE8 8001E4E8 C0190200 */  sll        $v1, $v0, 7
/* ECEC 8001E4EC 21104300 */  addu       $v0, $v0, $v1
/* ECF0 8001E4F0 40110200 */  sll        $v0, $v0, 5
/* ECF4 8001E4F4 23105100 */  subu       $v0, $v0, $s1
/* ECF8 8001E4F8 80100200 */  sll        $v0, $v0, 2
/* ECFC 8001E4FC 21384400 */  addu       $a3, $v0, $a0
/* ED00 8001E500 8800BFAF */  sw         $ra, 0x88($sp)
/* ED04 8001E504 8000B0AF */  sw         $s0, 0x80($sp)
/* ED08 8001E508 3D00F080 */  lb         $s0, 0x3d($a3)
/* ED0C 8001E50C 4100E280 */  lb         $v0, 0x41($a3)
/* ED10 8001E510 00000000 */  nop
/* ED14 8001E514 3D000212 */  beq        $s0, $v0, .L8001E60C
/* ED18 8001E518 0180023C */   lui       $v0, %hi(D_80010850)
/* ED1C 8001E51C 50084324 */  addiu      $v1, $v0, %lo(D_80010850)
/* ED20 8001E520 5008458C */  lw         $a1, 0x850($v0)
/* ED24 8001E524 0400668C */  lw         $a2, 4($v1)
/* ED28 8001E528 0800628C */  lw         $v0, 8($v1)
/* ED2C 8001E52C 21200002 */  addu       $a0, $s0, $zero
/* ED30 8001E530 4100F0A0 */  sb         $s0, 0x41($a3)
/* ED34 8001E534 1000A5AF */  sw         $a1, 0x10($sp)
/* ED38 8001E538 1400A6AF */  sw         $a2, 0x14($sp)
/* ED3C 8001E53C B970000C */  jal        FUN_8001c2e4
/* ED40 8001E540 1800A2AF */   sw        $v0, 0x18($sp)
/* ED44 8001E544 1000A427 */  addiu      $a0, $sp, 0x10
/* ED48 8001E548 3F71000C */  jal        FUN_8001c4fc
/* ED4C 8001E54C 21284000 */   addu      $a1, $v0, $zero
/* ED50 8001E550 1000A427 */  addiu      $a0, $sp, 0x10
/* ED54 8001E554 0180053C */  lui        $a1, %hi(D_8001085C)
/* ED58 8001E558 3F71000C */  jal        FUN_8001c4fc
/* ED5C 8001E55C 5C08A524 */   addiu     $a1, $a1, %lo(D_8001085C)
/* ED60 8001E560 B970000C */  jal        FUN_8001c2e4
/* ED64 8001E564 21200002 */   addu      $a0, $s0, $zero
/* ED68 8001E568 1000A427 */  addiu      $a0, $sp, 0x10
/* ED6C 8001E56C 3F71000C */  jal        FUN_8001c4fc
/* ED70 8001E570 21284000 */   addu      $a1, $v0, $zero
/* ED74 8001E574 1000A427 */  addiu      $a0, $sp, 0x10
/* ED78 8001E578 0180053C */  lui        $a1, %hi(D_800107D8)
/* ED7C 8001E57C 3F71000C */  jal        FUN_8001c4fc
/* ED80 8001E580 D807A524 */   addiu     $a1, $a1, %lo(D_800107D8)
/* ED84 8001E584 1000A427 */  addiu      $a0, $sp, 0x10
/* ED88 8001E588 2380053C */  lui        $a1, 0x8023
/* ED8C 8001E58C DDB3000C */  jal        decodefile_8002cf74
/* ED90 8001E590 0080A534 */   ori       $a1, $a1, 0x8000
/* ED94 8001E594 2380043C */  lui        $a0, 0x8023
/* ED98 8001E598 04808434 */  ori        $a0, $a0, 0x8004
/* ED9C 8001E59C 6000A527 */  addiu      $a1, $sp, 0x60
/* EDA0 8001E5A0 197C000C */  jal        GsGetTimInfo
/* EDA4 8001E5A4 00821100 */   sll       $s0, $s1, 8
/* EDA8 8001E5A8 6800A397 */  lhu        $v1, 0x68($sp)
/* EDAC 8001E5AC 6A00A497 */  lhu        $a0, 0x6a($sp)
/* EDB0 8001E5B0 7400A597 */  lhu        $a1, 0x74($sp)
/* EDB4 8001E5B4 7600A697 */  lhu        $a2, 0x76($sp)
/* EDB8 8001E5B8 00020224 */  addiu      $v0, $zero, 0x200
/* EDBC 8001E5BC 5000A2A7 */  sh         $v0, 0x50($sp)
/* EDC0 8001E5C0 F4002226 */  addiu      $v0, $s1, 0xf4
/* EDC4 8001E5C4 5200B0A7 */  sh         $s0, 0x52($sp)
/* EDC8 8001E5C8 5800A0A7 */  sh         $zero, 0x58($sp)
/* EDCC 8001E5CC 5A00A2A7 */  sh         $v0, 0x5a($sp)
/* EDD0 8001E5D0 5400A3A7 */  sh         $v1, 0x54($sp)
/* EDD4 8001E5D4 5600A4A7 */  sh         $a0, 0x56($sp)
/* EDD8 8001E5D8 5C00A5A7 */  sh         $a1, 0x5c($sp)
/* EDDC 8001E5DC 7CAA000C */  jal        vsync_8002a9f0
/* EDE0 8001E5E0 5E00A6A7 */   sh        $a2, 0x5e($sp)
/* EDE4 8001E5E4 6C00A58F */  lw         $a1, 0x6c($sp)
/* EDE8 8001E5E8 8361000C */  jal        LoadImage
/* EDEC 8001E5EC 5000A427 */   addiu     $a0, $sp, 0x50
/* EDF0 8001E5F0 7CAA000C */  jal        vsync_8002a9f0
/* EDF4 8001E5F4 00000000 */   nop
/* EDF8 8001E5F8 7800A58F */  lw         $a1, 0x78($sp)
/* EDFC 8001E5FC 8361000C */  jal        LoadImage
/* EE00 8001E600 5800A427 */   addiu     $a0, $sp, 0x58
/* EE04 8001E604 D860000C */  jal        DrawSync
/* EE08 8001E608 21200000 */   addu      $a0, $zero, $zero
.L8001E60C:
/* EE0C 8001E60C 8800BF8F */  lw         $ra, 0x88($sp)
/* EE10 8001E610 8400B18F */  lw         $s1, 0x84($sp)
/* EE14 8001E614 8000B08F */  lw         $s0, 0x80($sp)
/* EE18 8001E618 0800E003 */  jr         $ra
/* EE1C 8001E61C 9000BD27 */   addiu     $sp, $sp, 0x90
