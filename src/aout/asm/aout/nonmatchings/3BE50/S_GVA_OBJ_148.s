.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_148
/* AA39C 800B9B9C 0080E230 */  andi       $v0, $a3, 0x8000
/* AA3A0 800B9BA0 32004010 */  beqz       $v0, S_GVA_OBJ_218
/* AA3A4 800B9BA4 21200000 */   addu      $a0, $zero, $zero
/* AA3A8 800B9BA8 00F0E330 */  andi       $v1, $a3, 0xf000
/* AA3AC 800B9BAC 00B00234 */  ori        $v0, $zero, 0xb000
/* AA3B0 800B9BB0 26006210 */  beq        $v1, $v0, .L800B9C4C
/* AA3B4 800B9BB4 2A104300 */   slt       $v0, $v0, $v1
/* AA3B8 800B9BB8 0F004014 */  bnez       $v0, .L800B9BF8
/* AA3BC 800B9BBC 00D00234 */   ori       $v0, $zero, 0xd000
/* AA3C0 800B9BC0 00900234 */  ori        $v0, $zero, 0x9000
/* AA3C4 800B9BC4 1D006210 */  beq        $v1, $v0, .L800B9C3C
/* AA3C8 800B9BC8 2A104300 */   slt       $v0, $v0, $v1
/* AA3CC 800B9BCC 06004014 */  bnez       $v0, .L800B9BE8
/* AA3D0 800B9BD0 00A00234 */   ori       $v0, $zero, 0xa000
/* AA3D4 800B9BD4 00800234 */  ori        $v0, $zero, 0x8000
/* AA3D8 800B9BD8 16006210 */  beq        $v1, $v0, .L800B9C34
/* AA3DC 800B9BDC 00000000 */   nop
/* AA3E0 800B9BE0 1BE70208 */  j          S_GVA_OBJ_218
/* AA3E4 800B9BE4 FF0FE730 */   andi      $a3, $a3, 0xfff
.L800B9BE8:
/* AA3E8 800B9BE8 16006210 */  beq        $v1, $v0, .L800B9C44
/* AA3EC 800B9BEC 00000000 */   nop
/* AA3F0 800B9BF0 1BE70208 */  j          S_GVA_OBJ_218
/* AA3F4 800B9BF4 FF0FE730 */   andi      $a3, $a3, 0xfff
.L800B9BF8:
/* AA3F8 800B9BF8 18006210 */  beq        $v1, $v0, .L800B9C5C
/* AA3FC 800B9BFC 2A104300 */   slt       $v0, $v0, $v1
/* AA400 800B9C00 06004014 */  bnez       $v0, .L800B9C1C
/* AA404 800B9C04 00E00234 */   ori       $v0, $zero, 0xe000
/* AA408 800B9C08 00C00234 */  ori        $v0, $zero, 0xc000
/* AA40C 800B9C0C 11006210 */  beq        $v1, $v0, .L800B9C54
/* AA410 800B9C10 00000000 */   nop
/* AA414 800B9C14 1BE70208 */  j          S_GVA_OBJ_218
/* AA418 800B9C18 FF0FE730 */   andi      $a3, $a3, 0xfff
.L800B9C1C:
/* AA41C 800B9C1C 11006210 */  beq        $v1, $v0, .L800B9C64
/* AA420 800B9C20 00F00234 */   ori       $v0, $zero, 0xf000
/* AA424 800B9C24 0F006210 */  beq        $v1, $v0, .L800B9C64
/* AA428 800B9C28 00000000 */   nop
/* AA42C 800B9C2C 1BE70208 */  j          S_GVA_OBJ_218
/* AA430 800B9C30 FF0FE730 */   andi      $a3, $a3, 0xfff
.L800B9C34:
/* AA434 800B9C34 1AE70208 */  j          S_GVA_OBJ_214
/* AA438 800B9C38 01000424 */   addiu     $a0, $zero, 1
.L800B9C3C:
/* AA43C 800B9C3C 1AE70208 */  j          S_GVA_OBJ_214
/* AA440 800B9C40 02000424 */   addiu     $a0, $zero, 2
.L800B9C44:
/* AA444 800B9C44 1AE70208 */  j          S_GVA_OBJ_214
/* AA448 800B9C48 03000424 */   addiu     $a0, $zero, 3
.L800B9C4C:
/* AA44C 800B9C4C 1AE70208 */  j          S_GVA_OBJ_214
/* AA450 800B9C50 04000424 */   addiu     $a0, $zero, 4
.L800B9C54:
/* AA454 800B9C54 1AE70208 */  j          S_GVA_OBJ_214
/* AA458 800B9C58 05000424 */   addiu     $a0, $zero, 5
.L800B9C5C:
/* AA45C 800B9C5C 1AE70208 */  j          S_GVA_OBJ_214
/* AA460 800B9C60 06000424 */   addiu     $a0, $zero, 6
.L800B9C64:
/* AA464 800B9C64 07000424 */  addiu      $a0, $zero, 7
