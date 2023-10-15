.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c71f4
/* B79F4 800C71F4 9800828C */  lw         $v0, 0x98($a0)
/* B79F8 800C71F8 0800878C */  lw         $a3, 8($a0)
/* B79FC 800C71FC 80190200 */  sll        $v1, $v0, 6
/* B7A00 800C7200 21186200 */  addu       $v1, $v1, $v0
/* B7A04 800C7204 40190300 */  sll        $v1, $v1, 5
/* B7A08 800C7208 21186200 */  addu       $v1, $v1, $v0
/* B7A0C 800C720C 80180300 */  sll        $v1, $v1, 2
/* B7A10 800C7210 1F80023C */  lui        $v0, %hi(D_801F74B8)
/* B7A14 800C7214 B8744224 */  addiu      $v0, $v0, %lo(D_801F74B8)
/* B7A18 800C7218 0200E104 */  bgez       $a3, .L800C7224
/* B7A1C 800C721C 21186200 */   addu      $v1, $v1, $v0
/* B7A20 800C7220 FF1FE724 */  addiu      $a3, $a3, 0x1fff
.L800C7224:
/* B7A24 800C7224 9C00868C */  lw         $a2, 0x9c($a0)
/* B7A28 800C7228 433B0700 */  sra        $a3, $a3, 0xd
/* B7A2C 800C722C 0D00E018 */  blez       $a3, .L800C7264
/* B7A30 800C7230 21280000 */   addu      $a1, $zero, $zero
/* B7A34 800C7234 FFFF0834 */  ori        $t0, $zero, 0xffff
/* B7A38 800C7238 C0110600 */  sll        $v0, $a2, 7
.L800C723C:
/* B7A3C 800C723C 21106200 */  addu       $v0, $v1, $v0
/* B7A40 800C7240 08004694 */  lhu        $a2, 8($v0)
/* B7A44 800C7244 00000000 */  nop
/* B7A48 800C7248 0300C814 */  bne        $a2, $t0, .L800C7258
/* B7A4C 800C724C 0100A524 */   addiu     $a1, $a1, 1
/* B7A50 800C7250 0800E003 */  jr         $ra
/* B7A54 800C7254 FFFF0224 */   addiu     $v0, $zero, -1
.L800C7258:
/* B7A58 800C7258 2A10A700 */  slt        $v0, $a1, $a3
/* B7A5C 800C725C F7FF4014 */  bnez       $v0, .L800C723C
/* B7A60 800C7260 C0110600 */   sll       $v0, $a2, 7
.L800C7264:
/* B7A64 800C7264 0800828C */  lw         $v0, 8($a0)
/* B7A68 800C7268 00E00324 */  addiu      $v1, $zero, -0x2000
/* B7A6C 800C726C 24184300 */  and        $v1, $v0, $v1
/* B7A70 800C7270 0100C224 */  addiu      $v0, $a2, 1
/* B7A74 800C7274 02006104 */  bgez       $v1, .L800C7280
/* B7A78 800C7278 80210200 */   sll       $a0, $v0, 6
/* B7A7C 800C727C 7F006324 */  addiu      $v1, $v1, 0x7f
.L800C7280:
/* B7A80 800C7280 C3110300 */  sra        $v0, $v1, 7
/* B7A84 800C7284 0800E003 */  jr         $ra
/* B7A88 800C7288 23108200 */   subu      $v0, $a0, $v0
