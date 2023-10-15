.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1BE8
/* A3CC 80019BCC 00140400 */  sll        $v0, $a0, 0x10
.L80019BD0:
/* A3D0 80019BD0 04002386 */  lh         $v1, 4($s1)
/* A3D4 80019BD4 03140200 */  sra        $v0, $v0, 0x10
/* A3D8 80019BD8 18006200 */  mult       $v1, $v0
/* A3DC 80019BDC 060024A6 */  sh         $a0, 6($s1)
/* A3E0 80019BE0 12300000 */  mflo       $a2
/* A3E4 80019BE4 0100C324 */  addiu      $v1, $a2, 1
/* A3E8 80019BE8 C2170300 */  srl        $v0, $v1, 0x1f
/* A3EC 80019BEC 21186200 */  addu       $v1, $v1, $v0
/* A3F0 80019BF0 43200300 */  sra        $a0, $v1, 1
/* A3F4 80019BF4 0300801C */  bgtz       $a0, .L80019C04
/* A3F8 80019BF8 43810300 */   sra       $s0, $v1, 5
/* A3FC 80019BFC 50670008 */  j          SYS_OBJ_1D5C
/* A400 80019C00 FFFF0224 */   addiu     $v0, $zero, -1
.L80019C04:
/* A404 80019C04 21180002 */  addu       $v1, $s0, $zero
/* A408 80019C08 00110300 */  sll        $v0, $v1, 4
/* A40C 80019C0C 23808200 */  subu       $s0, $a0, $v0
/* A410 80019C10 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A414 80019C14 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A418 80019C18 21A06000 */  addu       $s4, $v1, $zero
/* A41C 80019C1C 0000428C */  lw         $v0, ($v0)
/* A420 80019C20 0004033C */  lui        $v1, 0x400
/* A424 80019C24 24104300 */  and        $v0, $v0, $v1
/* A428 80019C28 0E004014 */  bnez       $v0, .L80019C64
/* A42C 80019C2C 00A0043C */   lui       $a0, 0xa000
/* A430 80019C30 0004133C */  lui        $s3, 0x400
.L80019C34:
/* A434 80019C34 266A000C */  jal        SYS_OBJ_28B4
/* A438 80019C38 00000000 */   nop
/* A43C 80019C3C 40004014 */  bnez       $v0, SYS_OBJ_1D5C
/* A440 80019C40 FFFF0224 */   addiu     $v0, $zero, -1
/* A444 80019C44 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A448 80019C48 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A44C 80019C4C 00000000 */  nop
/* A450 80019C50 0000428C */  lw         $v0, ($v0)
/* A454 80019C54 00000000 */  nop
/* A458 80019C58 24105300 */  and        $v0, $v0, $s3
/* A45C 80019C5C F5FF4010 */  beqz       $v0, .L80019C34
/* A460 80019C60 00A0043C */   lui       $a0, 0xa000
.L80019C64:
/* A464 80019C64 0D80033C */  lui        $v1, %hi(D_800D2CA0)
/* A468 80019C68 A02C638C */  lw         $v1, %lo(D_800D2CA0)($v1)
/* A46C 80019C6C 0004023C */  lui        $v0, 0x400
/* A470 80019C70 000062AC */  sw         $v0, ($v1)
/* A474 80019C74 0D80033C */  lui        $v1, %hi(D_800D2C9C)
/* A478 80019C78 9C2C638C */  lw         $v1, %lo(D_800D2C9C)($v1)
/* A47C 80019C7C 0001023C */  lui        $v0, 0x100
/* A480 80019C80 000062AC */  sw         $v0, ($v1)
/* A484 80019C84 0D80023C */  lui        $v0, %hi(D_800D2C9C)
/* A488 80019C88 9C2C428C */  lw         $v0, %lo(D_800D2C9C)($v0)
/* A48C 80019C8C 0200A012 */  beqz       $s5, .L80019C98
/* A490 80019C90 00000000 */   nop
/* A494 80019C94 00B0043C */  lui        $a0, 0xb000
.L80019C98:
/* A498 80019C98 000044AC */  sw         $a0, ($v0)
/* A49C 80019C9C 0D80033C */  lui        $v1, %hi(D_800D2C9C)
/* A4A0 80019CA0 9C2C638C */  lw         $v1, %lo(D_800D2C9C)($v1)
/* A4A4 80019CA4 0000228E */  lw         $v0, ($s1)
/* A4A8 80019CA8 00000000 */  nop
/* A4AC 80019CAC 000062AC */  sw         $v0, ($v1)
/* A4B0 80019CB0 0D80033C */  lui        $v1, %hi(D_800D2C9C)
/* A4B4 80019CB4 9C2C638C */  lw         $v1, %lo(D_800D2C9C)($v1)
/* A4B8 80019CB8 0400228E */  lw         $v0, 4($s1)
/* A4BC 80019CBC FFFF1026 */  addiu      $s0, $s0, -1
/* A4C0 80019CC0 000062AC */  sw         $v0, ($v1)
/* A4C4 80019CC4 FFFF0224 */  addiu      $v0, $zero, -1
/* A4C8 80019CC8 09000212 */  beq        $s0, $v0, .L80019CF0
/* A4CC 80019CCC 00000000 */   nop
/* A4D0 80019CD0 FFFF0424 */  addiu      $a0, $zero, -1
.L80019CD4:
/* A4D4 80019CD4 0000438E */  lw         $v1, ($s2)
/* A4D8 80019CD8 04005226 */  addiu      $s2, $s2, 4
/* A4DC 80019CDC 0D80023C */  lui        $v0, %hi(D_800D2C9C)
/* A4E0 80019CE0 9C2C428C */  lw         $v0, %lo(D_800D2C9C)($v0)
/* A4E4 80019CE4 FFFF1026 */  addiu      $s0, $s0, -1
/* A4E8 80019CE8 FAFF0416 */  bne        $s0, $a0, .L80019CD4
/* A4EC 80019CEC 000043AC */   sw        $v1, ($v0)
.L80019CF0:
/* A4F0 80019CF0 12008012 */  beqz       $s4, .L80019D3C
/* A4F4 80019CF4 0004033C */   lui       $v1, 0x400
/* A4F8 80019CF8 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* A4FC 80019CFC A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* A500 80019D00 02006334 */  ori        $v1, $v1, 2
/* A504 80019D04 000043AC */  sw         $v1, ($v0)
/* A508 80019D08 0D80023C */  lui        $v0, %hi(D_800D2CA4)
/* A50C 80019D0C A42C428C */  lw         $v0, %lo(D_800D2CA4)($v0)
/* A510 80019D10 0001043C */  lui        $a0, 0x100
/* A514 80019D14 000052AC */  sw         $s2, ($v0)
/* A518 80019D18 00141400 */  sll        $v0, $s4, 0x10
/* A51C 80019D1C 0D80033C */  lui        $v1, %hi(D_800D2CA8)
/* A520 80019D20 A82C638C */  lw         $v1, %lo(D_800D2CA8)($v1)
/* A524 80019D24 10004234 */  ori        $v0, $v0, 0x10
/* A528 80019D28 000062AC */  sw         $v0, ($v1)
/* A52C 80019D2C 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* A530 80019D30 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* A534 80019D34 01028434 */  ori        $a0, $a0, 0x201
/* A538 80019D38 000044AC */  sw         $a0, ($v0)
.L80019D3C:
/* A53C 80019D3C 21100000 */  addu       $v0, $zero, $zero
