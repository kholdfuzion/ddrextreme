.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SRMP_OBJ_168
/* A847C 800B7C7C 0300A016 */  bnez       $s5, .L800B7C8C
/* A8480 800B7C80 08006232 */   andi      $v0, $s3, 8
/* A8484 800B7C84 45004010 */  beqz       $v0, .L800B7D9C
/* A8488 800B7C88 00000000 */   nop
.L800B7C8C:
/* A848C 800B7C8C 0F80033C */  lui        $v1, %hi(D_800EC794)
/* A8490 800B7C90 94C7638C */  lw         $v1, %lo(D_800EC794)($v1)
/* A8494 800B7C94 00000000 */  nop
/* A8498 800B7C98 09006228 */  slti       $v0, $v1, 9
/* A849C 800B7C9C 3F004010 */  beqz       $v0, .L800B7D9C
/* A84A0 800B7CA0 07006228 */   slti      $v0, $v1, 7
/* A84A4 800B7CA4 3D004014 */  bnez       $v0, .L800B7D9C
/* A84A8 800B7CA8 00000000 */   nop
/* A84AC 800B7CAC 15008016 */  bnez       $s4, .L800B7D04
/* A84B0 800B7CB0 01001624 */   addiu     $s6, $zero, 1
/* A84B4 800B7CB4 1000A527 */  addiu      $a1, $sp, 0x10
/* A84B8 800B7CB8 43000424 */  addiu      $a0, $zero, 0x43
/* A84BC 800B7CBC 0F80023C */  lui        $v0, %hi(D_800EC794)
/* A84C0 800B7CC0 94C7428C */  lw         $v0, %lo(D_800EC794)($v0)
/* A84C4 800B7CC4 FFFF0624 */  addiu      $a2, $zero, -1
/* A84C8 800B7CC8 00190200 */  sll        $v1, $v0, 4
/* A84CC 800B7CCC 21186200 */  addu       $v1, $v1, $v0
/* A84D0 800B7CD0 80180300 */  sll        $v1, $v1, 2
/* A84D4 800B7CD4 0F80023C */  lui        $v0, %hi(D_800ECDB0)
/* A84D8 800B7CD8 B0CD4224 */  addiu      $v0, $v0, %lo(D_800ECDB0)
/* A84DC 800B7CDC 21186200 */  addu       $v1, $v1, $v0
.L800B7CE0:
/* A84E0 800B7CE0 00006290 */  lbu        $v0, ($v1)
/* A84E4 800B7CE4 01006324 */  addiu      $v1, $v1, 1
/* A84E8 800B7CE8 FFFF8424 */  addiu      $a0, $a0, -1
/* A84EC 800B7CEC 0000A2A0 */  sb         $v0, ($a1)
/* A84F0 800B7CF0 FBFF8614 */  bne        $a0, $a2, .L800B7CE0
/* A84F4 800B7CF4 0100A524 */   addiu     $a1, $a1, 1
/* A84F8 800B7CF8 010C023C */  lui        $v0, 0xc01
/* A84FC 800B7CFC 001C4234 */  ori        $v0, $v0, 0x1c00
/* A8500 800B7D00 1000A2AF */  sw         $v0, 0x10($sp)
.L800B7D04:
/* A8504 800B7D04 0281043C */  lui        $a0, 0x8102
/* A8508 800B7D08 0C00428E */  lw         $v0, 0xc($s2)
/* A850C 800B7D0C 09048434 */  ori        $a0, $a0, 0x409
/* A8510 800B7D10 401B0200 */  sll        $v1, $v0, 0xd
/* A8514 800B7D14 18006400 */  mult       $v1, $a0
/* A8518 800B7D18 10380000 */  mfhi       $a3
/* A851C 800B7D1C 002B0200 */  sll        $a1, $v0, 0xc
/* A8520 800B7D20 00000000 */  nop
/* A8524 800B7D24 1800A400 */  mult       $a1, $a0
/* A8528 800B7D28 0F80013C */  lui        $at, %hi(D_800EC79C)
/* A852C 800B7D2C 9CC722AC */  sw         $v0, %lo(D_800EC79C)($at)
/* A8530 800B7D30 2110E300 */  addu       $v0, $a3, $v1
/* A8534 800B7D34 83110200 */  sra        $v0, $v0, 6
/* A8538 800B7D38 C31F0300 */  sra        $v1, $v1, 0x1f
/* A853C 800B7D3C 23104300 */  subu       $v0, $v0, $v1
/* A8540 800B7D40 1400A497 */  lhu        $a0, 0x14($sp)
/* A8544 800B7D44 3600A397 */  lhu        $v1, 0x36($sp)
/* A8548 800B7D48 23104400 */  subu       $v0, $v0, $a0
/* A854C 800B7D4C 2800A2A7 */  sh         $v0, 0x28($sp)
/* A8550 800B7D50 1600A297 */  lhu        $v0, 0x16($sp)
/* A8554 800B7D54 10300000 */  mfhi       $a2
/* A8558 800B7D58 2120C500 */  addu       $a0, $a2, $a1
/* A855C 800B7D5C 83210400 */  sra        $a0, $a0, 6
/* A8560 800B7D60 C32F0500 */  sra        $a1, $a1, 0x1f
/* A8564 800B7D64 23208500 */  subu       $a0, $a0, $a1
/* A8568 800B7D68 23108200 */  subu       $v0, $a0, $v0
/* A856C 800B7D6C 2A00A2A7 */  sh         $v0, 0x2a($sp)
/* A8570 800B7D70 2E00A297 */  lhu        $v0, 0x2e($sp)
/* A8574 800B7D74 21186400 */  addu       $v1, $v1, $a0
/* A8578 800B7D78 3400A3A7 */  sh         $v1, 0x34($sp)
/* A857C 800B7D7C 4E00A397 */  lhu        $v1, 0x4e($sp)
/* A8580 800B7D80 21104400 */  addu       $v0, $v0, $a0
/* A8584 800B7D84 2C00A2A7 */  sh         $v0, 0x2c($sp)
/* A8588 800B7D88 4C00A297 */  lhu        $v0, 0x4c($sp)
/* A858C 800B7D8C 21186400 */  addu       $v1, $v1, $a0
/* A8590 800B7D90 4A00A3A7 */  sh         $v1, 0x4a($sp)
/* A8594 800B7D94 21104400 */  addu       $v0, $v0, $a0
/* A8598 800B7D98 4800A2A7 */  sh         $v0, 0x48($sp)
.L800B7D9C:
/* A859C 800B7D9C 0300A016 */  bnez       $s5, .L800B7DAC
/* A85A0 800B7DA0 10006232 */   andi      $v0, $s3, 0x10
/* A85A4 800B7DA4 32004010 */  beqz       $v0, .L800B7E70
/* A85A8 800B7DA8 00000000 */   nop
.L800B7DAC:
/* A85AC 800B7DAC 0F80033C */  lui        $v1, %hi(D_800EC794)
/* A85B0 800B7DB0 94C7638C */  lw         $v1, %lo(D_800EC794)($v1)
/* A85B4 800B7DB4 00000000 */  nop
/* A85B8 800B7DB8 09006228 */  slti       $v0, $v1, 9
/* A85BC 800B7DBC 2C004010 */  beqz       $v0, .L800B7E70
/* A85C0 800B7DC0 07006228 */   slti      $v0, $v1, 7
/* A85C4 800B7DC4 2A004014 */  bnez       $v0, .L800B7E70
/* A85C8 800B7DC8 00000000 */   nop
/* A85CC 800B7DCC 19008016 */  bnez       $s4, .L800B7E34
/* A85D0 800B7DD0 01001E24 */   addiu     $fp, $zero, 1
/* A85D4 800B7DD4 1300C016 */  bnez       $s6, .L800B7E24
/* A85D8 800B7DD8 1000A527 */   addiu     $a1, $sp, 0x10
/* A85DC 800B7DDC 43000424 */  addiu      $a0, $zero, 0x43
/* A85E0 800B7DE0 0F80023C */  lui        $v0, %hi(D_800EC794)
/* A85E4 800B7DE4 94C7428C */  lw         $v0, %lo(D_800EC794)($v0)
/* A85E8 800B7DE8 FFFF0624 */  addiu      $a2, $zero, -1
/* A85EC 800B7DEC 00190200 */  sll        $v1, $v0, 4
/* A85F0 800B7DF0 21186200 */  addu       $v1, $v1, $v0
/* A85F4 800B7DF4 80180300 */  sll        $v1, $v1, 2
/* A85F8 800B7DF8 0F80023C */  lui        $v0, %hi(D_800ECDB0)
/* A85FC 800B7DFC B0CD4224 */  addiu      $v0, $v0, %lo(D_800ECDB0)
/* A8600 800B7E00 21186200 */  addu       $v1, $v1, $v0
.L800B7E04:
/* A8604 800B7E04 00006290 */  lbu        $v0, ($v1)
/* A8608 800B7E08 01006324 */  addiu      $v1, $v1, 1
/* A860C 800B7E0C FFFF8424 */  addiu      $a0, $a0, -1
/* A8610 800B7E10 0000A2A0 */  sb         $v0, ($a1)
/* A8614 800B7E14 FBFF8614 */  bne        $a0, $a2, .L800B7E04
/* A8618 800B7E18 0100A524 */   addiu     $a1, $a1, 1
/* A861C 800B7E1C 8CDF0208 */  j          S_SRMP_OBJ_31C
/* A8620 800B7E20 80000224 */   addiu     $v0, $zero, 0x80
.L800B7E24:
/* A8624 800B7E24 1000A28F */  lw         $v0, 0x10($sp)
/* A8628 800B7E28 00000000 */  nop
/* A862C 800B7E2C 80004234 */  ori        $v0, $v0, 0x80
