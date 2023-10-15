.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002bc64
/* 1C464 8002BC64 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* 1C468 8002BC68 1580023C */  lui        $v0, %hi(D_8014C1F0)
/* 1C46C 8002BC6C F0C14624 */  addiu      $a2, $v0, %lo(D_8014C1F0)
/* 1C470 8002BC70 1A00CE24 */  addiu      $t6, $a2, 0x1a
/* 1C474 8002BC74 1800CD24 */  addiu      $t5, $a2, 0x18
/* 1C478 8002BC78 2200CC24 */  addiu      $t4, $a2, 0x22
/* 1C47C 8002BC7C 2000CB24 */  addiu      $t3, $a2, 0x20
/* 1C480 8002BC80 2A00CA24 */  addiu      $t2, $a2, 0x2a
/* 1C484 8002BC84 2800C824 */  addiu      $t0, $a2, 0x28
/* 1C488 8002BC88 4200D824 */  addiu      $t8, $a2, 0x42
/* 1C48C 8002BC8C 4000CF24 */  addiu      $t7, $a2, 0x40
/* 1C490 8002BC90 0000B0AF */  sw         $s0, ($sp)
/* 1C494 8002BC94 4A00D024 */  addiu      $s0, $a2, 0x4a
/* 1C498 8002BC98 4800D924 */  addiu      $t9, $a2, 0x48
/* 1C49C 8002BC9C 0800B2AF */  sw         $s2, 8($sp)
/* 1C4A0 8002BCA0 AA00D224 */  addiu      $s2, $a2, 0xaa
/* 1C4A4 8002BCA4 0400B1AF */  sw         $s1, 4($sp)
/* 1C4A8 8002BCA8 A800D124 */  addiu      $s1, $a2, 0xa8
/* 1C4AC 8002BCAC FFFF0724 */  addiu      $a3, $zero, -1
/* 1C4B0 8002BCB0 6C010424 */  addiu      $a0, $zero, 0x16c
/* 1C4B4 8002BCB4 C400C524 */  addiu      $a1, $a2, 0xc4
.L8002BCB8:
/* 1C4B8 8002BCB8 01000324 */  addiu      $v1, $zero, 1
/* 1C4BC 8002BCBC 0200A224 */  addiu      $v0, $a1, 2
.L8002BCC0:
/* 1C4C0 8002BCC0 000047A4 */  sh         $a3, ($v0)
/* 1C4C4 8002BCC4 FFFF6324 */  addiu      $v1, $v1, -1
/* 1C4C8 8002BCC8 FDFF6104 */  bgez       $v1, .L8002BCC0
/* 1C4CC 8002BCCC FEFF4224 */   addiu     $v0, $v0, -2
/* 1C4D0 8002BCD0 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C4D4 8002BCD4 F8FF8104 */  bgez       $a0, .L8002BCB8
/* 1C4D8 8002BCD8 0400A524 */   addiu     $a1, $a1, 4
/* 1C4DC 8002BCDC 21480001 */  addu       $t1, $t0, $zero
/* 1C4E0 8002BCE0 21404001 */  addu       $t0, $t2, $zero
/* 1C4E4 8002BCE4 21386001 */  addu       $a3, $t3, $zero
/* 1C4E8 8002BCE8 21288001 */  addu       $a1, $t4, $zero
/* 1C4EC 8002BCEC 2118A001 */  addu       $v1, $t5, $zero
/* 1C4F0 8002BCF0 2110C001 */  addu       $v0, $t6, $zero
/* 1C4F4 8002BCF4 01000424 */  addiu      $a0, $zero, 1
/* 1C4F8 8002BCF8 0000C0A4 */  sh         $zero, ($a2)
/* 1C4FC 8002BCFC 1200C0A4 */  sh         $zero, 0x12($a2)
/* 1C500 8002BD00 1000C0A4 */  sh         $zero, 0x10($a2)
/* 1C504 8002BD04 1600C0A4 */  sh         $zero, 0x16($a2)
/* 1C508 8002BD08 1400C0A4 */  sh         $zero, 0x14($a2)
.L8002BD0C:
/* 1C50C 8002BD0C 000040A4 */  sh         $zero, ($v0)
/* 1C510 8002BD10 000060A4 */  sh         $zero, ($v1)
/* 1C514 8002BD14 0000A0A4 */  sh         $zero, ($a1)
/* 1C518 8002BD18 0000E0A4 */  sh         $zero, ($a3)
/* 1C51C 8002BD1C 000000A5 */  sh         $zero, ($t0)
/* 1C520 8002BD20 000020A5 */  sh         $zero, ($t1)
/* 1C524 8002BD24 04002925 */  addiu      $t1, $t1, 4
/* 1C528 8002BD28 04000825 */  addiu      $t0, $t0, 4
/* 1C52C 8002BD2C 0400E724 */  addiu      $a3, $a3, 4
/* 1C530 8002BD30 0400A524 */  addiu      $a1, $a1, 4
/* 1C534 8002BD34 04006324 */  addiu      $v1, $v1, 4
/* 1C538 8002BD38 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C53C 8002BD3C F3FF8104 */  bgez       $a0, .L8002BD0C
/* 1C540 8002BD40 04004224 */   addiu     $v0, $v0, 4
/* 1C544 8002BD44 2118E001 */  addu       $v1, $t7, $zero
/* 1C548 8002BD48 21100003 */  addu       $v0, $t8, $zero
/* 1C54C 8002BD4C 01000424 */  addiu      $a0, $zero, 1
.L8002BD50:
/* 1C550 8002BD50 000040A4 */  sh         $zero, ($v0)
/* 1C554 8002BD54 000060A4 */  sh         $zero, ($v1)
/* 1C558 8002BD58 04006324 */  addiu      $v1, $v1, 4
/* 1C55C 8002BD5C FFFF8424 */  addiu      $a0, $a0, -1
/* 1C560 8002BD60 FBFF8104 */  bgez       $a0, .L8002BD50
/* 1C564 8002BD64 04004224 */   addiu     $v0, $v0, 4
/* 1C568 8002BD68 21282003 */  addu       $a1, $t9, $zero
/* 1C56C 8002BD6C 21180002 */  addu       $v1, $s0, $zero
/* 1C570 8002BD70 17000424 */  addiu      $a0, $zero, 0x17
/* 1C574 8002BD74 50460224 */  addiu      $v0, $zero, 0x4650
/* 1C578 8002BD78 3200C0A4 */  sh         $zero, 0x32($a2)
/* 1C57C 8002BD7C 3000C0A4 */  sh         $zero, 0x30($a2)
/* 1C580 8002BD80 3600C0A4 */  sh         $zero, 0x36($a2)
/* 1C584 8002BD84 3400C2A4 */  sh         $v0, 0x34($a2)
/* 1C588 8002BD88 3A00C0A4 */  sh         $zero, 0x3a($a2)
/* 1C58C 8002BD8C 3800C0A4 */  sh         $zero, 0x38($a2)
/* 1C590 8002BD90 3E00C0A4 */  sh         $zero, 0x3e($a2)
/* 1C594 8002BD94 3C00C0A4 */  sh         $zero, 0x3c($a2)
.L8002BD98:
/* 1C598 8002BD98 000060A4 */  sh         $zero, ($v1)
/* 1C59C 8002BD9C 0000A0A4 */  sh         $zero, ($a1)
/* 1C5A0 8002BDA0 0400A524 */  addiu      $a1, $a1, 4
/* 1C5A4 8002BDA4 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C5A8 8002BDA8 FBFF8104 */  bgez       $a0, .L8002BD98
/* 1C5AC 8002BDAC 04006324 */   addiu     $v1, $v1, 4
/* 1C5B0 8002BDB0 21182002 */  addu       $v1, $s1, $zero
/* 1C5B4 8002BDB4 21104002 */  addu       $v0, $s2, $zero
/* 1C5B8 8002BDB8 06000424 */  addiu      $a0, $zero, 6
.L8002BDBC:
/* 1C5BC 8002BDBC 000040A4 */  sh         $zero, ($v0)
/* 1C5C0 8002BDC0 000060A4 */  sh         $zero, ($v1)
/* 1C5C4 8002BDC4 04006324 */  addiu      $v1, $v1, 4
/* 1C5C8 8002BDC8 FFFF8424 */  addiu      $a0, $a0, -1
/* 1C5CC 8002BDCC FBFF8104 */  bgez       $a0, .L8002BDBC
/* 1C5D0 8002BDD0 04004224 */   addiu     $v0, $v0, 4
/* 1C5D4 8002BDD4 0800B28F */  lw         $s2, 8($sp)
/* 1C5D8 8002BDD8 0400B18F */  lw         $s1, 4($sp)
/* 1C5DC 8002BDDC 0000B08F */  lw         $s0, ($sp)
/* 1C5E0 8002BDE0 0800E003 */  jr         $ra
/* 1C5E4 8002BDE4 1000BD27 */   addiu     $sp, $sp, 0x10
