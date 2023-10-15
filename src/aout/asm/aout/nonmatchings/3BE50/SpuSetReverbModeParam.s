.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetReverbModeParam
/* A8314 800B7B14 78FFBD27 */  addiu      $sp, $sp, -0x88
/* A8318 800B7B18 6800B2AF */  sw         $s2, 0x68($sp)
/* A831C 800B7B1C 21908000 */  addu       $s2, $a0, $zero
/* A8320 800B7B20 7C00B7AF */  sw         $s7, 0x7c($sp)
/* A8324 800B7B24 21B80000 */  addu       $s7, $zero, $zero
/* A8328 800B7B28 7000B4AF */  sw         $s4, 0x70($sp)
/* A832C 800B7B2C 21A00000 */  addu       $s4, $zero, $zero
/* A8330 800B7B30 7800B6AF */  sw         $s6, 0x78($sp)
/* A8334 800B7B34 21B00000 */  addu       $s6, $zero, $zero
/* A8338 800B7B38 8400BFAF */  sw         $ra, 0x84($sp)
/* A833C 800B7B3C 8000BEAF */  sw         $fp, 0x80($sp)
/* A8340 800B7B40 7400B5AF */  sw         $s5, 0x74($sp)
/* A8344 800B7B44 6C00B3AF */  sw         $s3, 0x6c($sp)
/* A8348 800B7B48 6400B1AF */  sw         $s1, 0x64($sp)
/* A834C 800B7B4C 6000B0AF */  sw         $s0, 0x60($sp)
/* A8350 800B7B50 5800A0AF */  sw         $zero, 0x58($sp)
/* A8354 800B7B54 0000538E */  lw         $s3, ($s2)
/* A8358 800B7B58 21F00000 */  addu       $fp, $zero, $zero
/* A835C 800B7B5C 0100752E */  sltiu      $s5, $s3, 1
/* A8360 800B7B60 0400A016 */  bnez       $s5, .L800B7B74
/* A8364 800B7B64 1000A0AF */   sw        $zero, 0x10($sp)
/* A8368 800B7B68 01006232 */  andi       $v0, $s3, 1
/* A836C 800B7B6C 43004010 */  beqz       $v0, S_SRMP_OBJ_168
/* A8370 800B7B70 00000000 */   nop
.L800B7B74:
/* A8374 800B7B74 0400508E */  lw         $s0, 4($s2)
/* A8378 800B7B78 00000000 */  nop
/* A837C 800B7B7C 00010232 */  andi       $v0, $s0, 0x100
/* A8380 800B7B80 04004010 */  beqz       $v0, .L800B7B94
/* A8384 800B7B84 FFFE0224 */   addiu     $v0, $zero, -0x101
/* A8388 800B7B88 24800202 */  and        $s0, $s0, $v0
/* A838C 800B7B8C 01000824 */  addiu      $t0, $zero, 1
/* A8390 800B7B90 5800A8AF */  sw         $t0, 0x58($sp)
.L800B7B94:
/* A8394 800B7B94 0A00022E */  sltiu      $v0, $s0, 0xa
/* A8398 800B7B98 09004010 */  beqz       $v0, .L800B7BC0
/* A839C 800B7B9C 80101000 */   sll       $v0, $s0, 2
/* A83A0 800B7BA0 0F80043C */  lui        $a0, %hi(D_800ECD80)
/* A83A4 800B7BA4 21208200 */  addu       $a0, $a0, $v0
/* A83A8 800B7BA8 80CD848C */  lw         $a0, %lo(D_800ECD80)($a0)
/* A83AC 800B7BAC 0F80113C */  lui        $s1, %hi(D_800ECD80)
/* A83B0 800B7BB0 A1DE020C */  jal        _SpuIsInAllocateArea_
/* A83B4 800B7BB4 80CD3126 */   addiu     $s1, $s1, %lo(D_800ECD80)
/* A83B8 800B7BB8 03004010 */  beqz       $v0, .L800B7BC8
/* A83BC 800B7BBC 01001424 */   addiu     $s4, $zero, 1
.L800B7BC0:
/* A83C0 800B7BC0 EEDF0208 */  j          S_SRMP_OBJ_4A4
/* A83C4 800B7BC4 FFFF0224 */   addiu     $v0, $zero, -1
.L800B7BC8:
/* A83C8 800B7BC8 1000A627 */  addiu      $a2, $sp, 0x10
/* A83CC 800B7BCC 43000524 */  addiu      $a1, $zero, 0x43
/* A83D0 800B7BD0 0F80013C */  lui        $at, %hi(D_800EC794)
/* A83D4 800B7BD4 94C730AC */  sw         $s0, %lo(D_800EC794)($at)
/* A83D8 800B7BD8 0F80033C */  lui        $v1, %hi(D_800EC794)
/* A83DC 800B7BDC 94C7638C */  lw         $v1, %lo(D_800EC794)($v1)
/* A83E0 800B7BE0 FFFF0724 */  addiu      $a3, $zero, -1
/* A83E4 800B7BE4 80200300 */  sll        $a0, $v1, 2
/* A83E8 800B7BE8 21209100 */  addu       $a0, $a0, $s1
/* A83EC 800B7BEC 00110300 */  sll        $v0, $v1, 4
/* A83F0 800B7BF0 21104300 */  addu       $v0, $v0, $v1
/* A83F4 800B7BF4 80100200 */  sll        $v0, $v0, 2
/* A83F8 800B7BF8 0F80033C */  lui        $v1, %hi(D_800ECDB0)
/* A83FC 800B7BFC B0CD6324 */  addiu      $v1, $v1, %lo(D_800ECDB0)
/* A8400 800B7C00 0000848C */  lw         $a0, ($a0)
/* A8404 800B7C04 21184300 */  addu       $v1, $v0, $v1
/* A8408 800B7C08 0F80013C */  lui        $at, %hi(D_800EC78C)
/* A840C 800B7C0C 8CC724AC */  sw         $a0, %lo(D_800EC78C)($at)
.L800B7C10:
/* A8410 800B7C10 00006290 */  lbu        $v0, ($v1)
/* A8414 800B7C14 01006324 */  addiu      $v1, $v1, 1
/* A8418 800B7C18 FFFFA524 */  addiu      $a1, $a1, -1
/* A841C 800B7C1C 0000C2A0 */  sb         $v0, ($a2)
/* A8420 800B7C20 FBFFA714 */  bne        $a1, $a3, .L800B7C10
/* A8424 800B7C24 0100C624 */   addiu     $a2, $a2, 1
/* A8428 800B7C28 0F80043C */  lui        $a0, %hi(D_800EC794)
/* A842C 800B7C2C 94C78424 */  addiu      $a0, $a0, %lo(D_800EC794)
/* A8430 800B7C30 0000838C */  lw         $v1, ($a0)
/* A8434 800B7C34 07000224 */  addiu      $v0, $zero, 7
/* A8438 800B7C38 05006210 */  beq        $v1, $v0, .L800B7C50
/* A843C 800B7C3C 08000224 */   addiu     $v0, $zero, 8
/* A8440 800B7C40 07006210 */  beq        $v1, $v0, .L800B7C60
/* A8444 800B7C44 7F000224 */   addiu     $v0, $zero, 0x7f
/* A8448 800B7C48 1BDF0208 */  j          S_SRMP_OBJ_158
/* A844C 800B7C4C 00000000 */   nop
.L800B7C50:
/* A8450 800B7C50 7F000224 */  addiu      $v0, $zero, 0x7f
/* A8454 800B7C54 0C0082AC */  sw         $v0, 0xc($a0)
/* A8458 800B7C58 1FDF0208 */  j          S_SRMP_OBJ_168
/* A845C 800B7C5C 080082AC */   sw        $v0, 8($a0)
.L800B7C60:
/* A8460 800B7C60 0C0080AC */  sw         $zero, 0xc($a0)
/* A8464 800B7C64 1FDF0208 */  j          S_SRMP_OBJ_168
/* A8468 800B7C68 080082AC */   sw        $v0, 8($a0)
