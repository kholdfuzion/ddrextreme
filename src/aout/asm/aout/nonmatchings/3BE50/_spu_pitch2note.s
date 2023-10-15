.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_pitch2note
/* A9DA4 800B95A4 FFFFC230 */  andi       $v0, $a2, 0xffff
/* A9DA8 800B95A8 0040422C */  sltiu      $v0, $v0, 0x4000
/* A9DAC 800B95AC 02004014 */  bnez       $v0, .L800B95B8
/* A9DB0 800B95B0 21580000 */   addu      $t3, $zero, $zero
/* A9DB4 800B95B4 FF3F0624 */  addiu      $a2, $zero, 0x3fff
.L800B95B8:
/* A9DB8 800B95B8 21380000 */  addu       $a3, $zero, $zero
/* A9DBC 800B95BC FFFFC330 */  andi       $v1, $a2, 0xffff
/* A9DC0 800B95C0 0710E300 */  srav       $v0, $v1, $a3
.L800B95C4:
/* A9DC4 800B95C4 01004230 */  andi       $v0, $v0, 1
/* A9DC8 800B95C8 02004010 */  beqz       $v0, .L800B95D4
/* A9DCC 800B95CC 00000000 */   nop
/* A9DD0 800B95D0 2158E000 */  addu       $t3, $a3, $zero
.L800B95D4:
/* A9DD4 800B95D4 0100E724 */  addiu      $a3, $a3, 1
/* A9DD8 800B95D8 0E00E228 */  slti       $v0, $a3, 0xe
/* A9DDC 800B95DC F9FF4014 */  bnez       $v0, .L800B95C4
/* A9DE0 800B95E0 0710E300 */   srav      $v0, $v1, $a3
/* A9DE4 800B95E4 FFFFC330 */  andi       $v1, $a2, 0xffff
/* A9DE8 800B95E8 0F000224 */  addiu      $v0, $zero, 0xf
/* A9DEC 800B95EC 23104B00 */  subu       $v0, $v0, $t3
/* A9DF0 800B95F0 04304300 */  sllv       $a2, $v1, $v0
/* A9DF4 800B95F4 0B000724 */  addiu      $a3, $zero, 0xb
/* A9DF8 800B95F8 FFFFC330 */  andi       $v1, $a2, 0xffff
/* A9DFC 800B95FC 0F80083C */  lui        $t0, %hi(D_800ECC76)
/* A9E00 800B9600 76CC0825 */  addiu      $t0, $t0, %lo(D_800ECC76)
.L800B9604:
/* A9E04 800B9604 00000295 */  lhu        $v0, ($t0)
/* A9E08 800B9608 00000000 */  nop
/* A9E0C 800B960C 2B106200 */  sltu       $v0, $v1, $v0
/* A9E10 800B9610 03004014 */  bnez       $v0, .L800B9620
/* A9E14 800B9614 00000000 */   nop
/* A9E18 800B9618 8BE50208 */  j          S_N2P_OBJ_158
/* A9E1C 800B961C 2150E000 */   addu      $t2, $a3, $zero
.L800B9620:
/* A9E20 800B9620 FFFFE724 */  addiu      $a3, $a3, -1
/* A9E24 800B9624 F7FFE104 */  bgez       $a3, .L800B9604
/* A9E28 800B9628 FEFF0825 */   addiu     $t0, $t0, -2
