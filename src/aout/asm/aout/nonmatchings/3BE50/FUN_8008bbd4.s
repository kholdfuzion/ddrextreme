.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8008bbd4
/* 7C3D4 8008BBD4 98FFBD27 */  addiu      $sp, $sp, -0x68
/* 7C3D8 8008BBD8 6400BFAF */  sw         $ra, 0x64($sp)
/* 7C3DC 8008BBDC 6000BEAF */  sw         $fp, 0x60($sp)
/* 7C3E0 8008BBE0 5C00B7AF */  sw         $s7, 0x5c($sp)
/* 7C3E4 8008BBE4 5800B6AF */  sw         $s6, 0x58($sp)
/* 7C3E8 8008BBE8 5400B5AF */  sw         $s5, 0x54($sp)
/* 7C3EC 8008BBEC 5000B4AF */  sw         $s4, 0x50($sp)
/* 7C3F0 8008BBF0 4C00B3AF */  sw         $s3, 0x4c($sp)
/* 7C3F4 8008BBF4 4800B2AF */  sw         $s2, 0x48($sp)
/* 7C3F8 8008BBF8 4400B1AF */  sw         $s1, 0x44($sp)
/* 7C3FC 8008BBFC 4000B0AF */  sw         $s0, 0x40($sp)
/* 7C400 8008BC00 6800A4AF */  sw         $a0, 0x68($sp)
/* 7C404 8008BC04 01000424 */  addiu      $a0, $zero, 1
/* 7C408 8008BC08 02000524 */  addiu      $a1, $zero, 2
/* 7C40C 8008BC0C 0180023C */  lui        $v0, %hi(D_80015D8C)
/* 7C410 8008BC10 1000A4AF */  sw         $a0, 0x10($sp)
/* 7C414 8008BC14 1400A5AF */  sw         $a1, 0x14($sp)
/* 7C418 8008BC18 8C5D4D24 */  addiu      $t5, $v0, %lo(D_80015D8C)
/* 7C41C 8008BC1C 0000AA8D */  lw         $t2, ($t5)
/* 7C420 8008BC20 0400AB8D */  lw         $t3, 4($t5)
/* 7C424 8008BC24 0800AC8D */  lw         $t4, 8($t5)
/* 7C428 8008BC28 1800AAAF */  sw         $t2, 0x18($sp)
/* 7C42C 8008BC2C 1C00ABAF */  sw         $t3, 0x1c($sp)
/* 7C430 8008BC30 2000ACAF */  sw         $t4, 0x20($sp)
/* 7C434 8008BC34 0F80023C */  lui        $v0, %hi(D_800F00B2)
/* 7C438 8008BC38 B2004390 */  lbu        $v1, %lo(D_800F00B2)($v0)
/* 7C43C 8008BC3C 07000224 */  addiu      $v0, $zero, 7
/* 7C440 8008BC40 04006210 */  beq        $v1, $v0, .L8008BC54
/* 7C444 8008BC44 0F80023C */   lui       $v0, 0x800f
/* 7C448 8008BC48 07006014 */  bnez       $v1, .L8008BC68
/* 7C44C 8008BC4C 21A00000 */   addu      $s4, $zero, $zero
/* 7C450 8008BC50 0F80023C */  lui        $v0, %hi(D_800F0028)
.L8008BC54:
/* 7C454 8008BC54 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 7C458 8008BC58 0100033C */  lui        $v1, 1
/* 7C45C 8008BC5C 21104300 */  addu       $v0, $v0, $v1
/* 7C460 8008BC60 06434390 */  lbu        $v1, 0x4306($v0)
/* 7C464 8008BC64 21A00000 */  addu       $s4, $zero, $zero
.L8008BC68:
/* 7C468 8008BC68 1000AA27 */  addiu      $t2, $sp, 0x10
/* 7C46C 8008BC6C 1800AB27 */  addiu      $t3, $sp, 0x18
/* 7C470 8008BC70 2C00AAAF */  sw         $t2, 0x2c($sp)
/* 7C474 8008BC74 2800ABAF */  sw         $t3, 0x28($sp)
/* 7C478 8008BC78 3000A0AF */  sw         $zero, 0x30($sp)
/* 7C47C 8008BC7C 3400A0AF */  sw         $zero, 0x34($sp)
.L8008BC80:
/* 7C480 8008BC80 21480000 */  addu       $t1, $zero, $zero
/* 7C484 8008BC84 21B82001 */  addu       $s7, $t1, $zero
/* 7C488 8008BC88 21F02001 */  addu       $fp, $t1, $zero
/* 7C48C 8008BC8C 2C00A88F */  lw         $t0, 0x2c($sp)
.L8008BC90:
/* 7C490 8008BC90 21880000 */  addu       $s1, $zero, $zero
/* 7C494 8008BC94 21A80001 */  addu       $s5, $t0, $zero
/* 7C498 8008BC98 2800B38F */  lw         $s3, 0x28($sp)
.L8008BC9C:
/* 7C49C 8008BC9C 21800000 */  addu       $s0, $zero, $zero
/* 7C4A0 8008BCA0 21906002 */  addu       $s2, $s3, $zero
/* 7C4A4 8008BCA4 21B0C003 */  addu       $s6, $fp, $zero
.L8008BCA8:
/* 7C4A8 8008BCA8 21208002 */  addu       $a0, $s4, $zero
/* 7C4AC 8008BCAC 0000A58E */  lw         $a1, ($s5)
/* 7C4B0 8008BCB0 0000468E */  lw         $a2, ($s2)
/* 7C4B4 8008BCB4 21380002 */  addu       $a3, $s0, $zero
/* 7C4B8 8008BCB8 3800A8AF */  sw         $t0, 0x38($sp)
/* 7C4BC 8008BCBC 72B8020C */  jal        FUN_800ae1c8
/* 7C4C0 8008BCC0 3C00A9AF */   sw        $t1, 0x3c($sp)
/* 7C4C4 8008BCC4 21208002 */  addu       $a0, $s4, $zero
/* 7C4C8 8008BCC8 40181100 */  sll        $v1, $s1, 1
/* 7C4CC 8008BCCC 21180302 */  addu       $v1, $s0, $v1
/* 7C4D0 8008BCD0 21187700 */  addu       $v1, $v1, $s7
/* 7C4D4 8008BCD4 3000AC8F */  lw         $t4, 0x30($sp)
/* 7C4D8 8008BCD8 6800AD8F */  lw         $t5, 0x68($sp)
/* 7C4DC 8008BCDC 21186C00 */  addu       $v1, $v1, $t4
/* 7C4E0 8008BCE0 2118A301 */  addu       $v1, $t5, $v1
/* 7C4E4 8008BCE4 A10C62A0 */  sb         $v0, 0xca1($v1)
/* 7C4E8 8008BCE8 0000A58E */  lw         $a1, ($s5)
/* 7C4EC 8008BCEC 0000468E */  lw         $a2, ($s2)
/* 7C4F0 8008BCF0 0AB8020C */  jal        FUN_800ae028
/* 7C4F4 8008BCF4 21380002 */   addu      $a3, $s0, $zero
/* 7C4F8 8008BCF8 80181000 */  sll        $v1, $s0, 2
/* 7C4FC 8008BCFC 01001026 */  addiu      $s0, $s0, 1
/* 7C500 8008BD00 C0201100 */  sll        $a0, $s1, 3
/* 7C504 8008BD04 21186400 */  addu       $v1, $v1, $a0
/* 7C508 8008BD08 21187600 */  addu       $v1, $v1, $s6
/* 7C50C 8008BD0C 3400AA8F */  lw         $t2, 0x34($sp)
/* 7C510 8008BD10 6800AB8F */  lw         $t3, 0x68($sp)
/* 7C514 8008BD14 21186A00 */  addu       $v1, $v1, $t2
/* 7C518 8008BD18 21186301 */  addu       $v1, $t3, $v1
/* 7C51C 8008BD1C 501862AC */  sw         $v0, 0x1850($v1)
/* 7C520 8008BD20 0200022A */  slti       $v0, $s0, 2
/* 7C524 8008BD24 3800A88F */  lw         $t0, 0x38($sp)
/* 7C528 8008BD28 3C00A98F */  lw         $t1, 0x3c($sp)
/* 7C52C 8008BD2C DEFF4014 */  bnez       $v0, .L8008BCA8
/* 7C530 8008BD30 00000000 */   nop
/* 7C534 8008BD34 01003126 */  addiu      $s1, $s1, 1
/* 7C538 8008BD38 0300222A */  slti       $v0, $s1, 3
/* 7C53C 8008BD3C D7FF4014 */  bnez       $v0, .L8008BC9C
/* 7C540 8008BD40 04007326 */   addiu     $s3, $s3, 4
/* 7C544 8008BD44 0600F726 */  addiu      $s7, $s7, 6
/* 7C548 8008BD48 1800DE27 */  addiu      $fp, $fp, 0x18
/* 7C54C 8008BD4C 01002925 */  addiu      $t1, $t1, 1
/* 7C550 8008BD50 02002229 */  slti       $v0, $t1, 2
/* 7C554 8008BD54 CEFF4014 */  bnez       $v0, .L8008BC90
/* 7C558 8008BD58 04000825 */   addiu     $t0, $t0, 4
/* 7C55C 8008BD5C 0F008232 */  andi       $v0, $s4, 0xf
/* 7C560 8008BD60 03004014 */  bnez       $v0, .L8008BD70
/* 7C564 8008BD64 00000000 */   nop
/* 7C568 8008BD68 7CAA000C */  jal        vsync_8002a9f0
/* 7C56C 8008BD6C 00000000 */   nop
.L8008BD70:
/* 7C570 8008BD70 01009426 */  addiu      $s4, $s4, 1
/* 7C574 8008BD74 F900822A */  slti       $v0, $s4, 0xf9
/* 7C578 8008BD78 3000AC8F */  lw         $t4, 0x30($sp)
/* 7C57C 8008BD7C 3400AD8F */  lw         $t5, 0x34($sp)
/* 7C580 8008BD80 0C008C25 */  addiu      $t4, $t4, 0xc
/* 7C584 8008BD84 3000AD25 */  addiu      $t5, $t5, 0x30
/* 7C588 8008BD88 3000ACAF */  sw         $t4, 0x30($sp)
/* 7C58C 8008BD8C BCFF4014 */  bnez       $v0, .L8008BC80
/* 7C590 8008BD90 3400ADAF */   sw        $t5, 0x34($sp)
/* 7C594 8008BD94 6400BF8F */  lw         $ra, 0x64($sp)
/* 7C598 8008BD98 6000BE8F */  lw         $fp, 0x60($sp)
/* 7C59C 8008BD9C 5C00B78F */  lw         $s7, 0x5c($sp)
/* 7C5A0 8008BDA0 5800B68F */  lw         $s6, 0x58($sp)
/* 7C5A4 8008BDA4 5400B58F */  lw         $s5, 0x54($sp)
/* 7C5A8 8008BDA8 5000B48F */  lw         $s4, 0x50($sp)
/* 7C5AC 8008BDAC 4C00B38F */  lw         $s3, 0x4c($sp)
/* 7C5B0 8008BDB0 4800B28F */  lw         $s2, 0x48($sp)
/* 7C5B4 8008BDB4 4400B18F */  lw         $s1, 0x44($sp)
/* 7C5B8 8008BDB8 4000B08F */  lw         $s0, 0x40($sp)
/* 7C5BC 8008BDBC 0800E003 */  jr         $ra
/* 7C5C0 8008BDC0 6800BD27 */   addiu     $sp, $sp, 0x68
