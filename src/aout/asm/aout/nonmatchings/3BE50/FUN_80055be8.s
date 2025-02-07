.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80055be8
/* 463E8 80055BE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 463EC 80055BEC 1400B1AF */  sw         $s1, 0x14($sp)
/* 463F0 80055BF0 21888000 */  addu       $s1, $a0, $zero
/* 463F4 80055BF4 13000224 */  addiu      $v0, $zero, 0x13
/* 463F8 80055BF8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 463FC 80055BFC 1800B2AF */  sw         $s2, 0x18($sp)
/* 46400 80055C00 3A00A214 */  bne        $a1, $v0, .L80055CEC
/* 46404 80055C04 1000B0AF */   sw        $s0, 0x10($sp)
/* 46408 80055C08 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4640C 80055C0C 21300000 */  addu       $a2, $zero, $zero
/* 46410 80055C10 A89D448C */  lw         $a0, %lo(D_80129DA8)($v0)
/* 46414 80055C14 80101100 */  sll        $v0, $s1, 2
/* 46418 80055C18 21105100 */  addu       $v0, $v0, $s1
/* 4641C 80055C1C C0100200 */  sll        $v0, $v0, 3
/* 46420 80055C20 21105100 */  addu       $v0, $v0, $s1
/* 46424 80055C24 C0100200 */  sll        $v0, $v0, 3
/* 46428 80055C28 23105100 */  subu       $v0, $v0, $s1
/* 4642C 80055C2C 80100200 */  sll        $v0, $v0, 2
/* 46430 80055C30 21105100 */  addu       $v0, $v0, $s1
/* 46434 80055C34 C0100200 */  sll        $v0, $v0, 3
/* 46438 80055C38 40180400 */  sll        $v1, $a0, 1
/* 4643C 80055C3C 21186400 */  addu       $v1, $v1, $a0
/* 46440 80055C40 C0180300 */  sll        $v1, $v1, 3
/* 46444 80055C44 23186400 */  subu       $v1, $v1, $a0
/* 46448 80055C48 C0190300 */  sll        $v1, $v1, 7
/* 4644C 80055C4C 21186400 */  addu       $v1, $v1, $a0
/* 46450 80055C50 80180300 */  sll        $v1, $v1, 2
/* 46454 80055C54 21186400 */  addu       $v1, $v1, $a0
/* 46458 80055C58 C0180300 */  sll        $v1, $v1, 3
/* 4645C 80055C5C 1780043C */  lui        $a0, %hi(D_80172958)
/* 46460 80055C60 58298424 */  addiu      $a0, $a0, %lo(D_80172958)
/* 46464 80055C64 21104400 */  addu       $v0, $v0, $a0
/* 46468 80055C68 21186200 */  addu       $v1, $v1, $v0
/* 4646C 80055C6C E0286724 */  addiu      $a3, $v1, 0x28e0
/* 46470 80055C70 C0286524 */  addiu      $a1, $v1, 0x28c0
/* 46474 80055C74 FF000224 */  addiu      $v0, $zero, 0xff
/* 46478 80055C78 01000424 */  addiu      $a0, $zero, 1
/* 4647C 80055C7C BC2862A4 */  sh         $v0, 0x28bc($v1)
/* 46480 80055C80 F8FF0224 */  addiu      $v0, $zero, -8
/* 46484 80055C84 A62864A0 */  sb         $a0, 0x28a6($v1)
/* 46488 80055C88 FFFF0424 */  addiu      $a0, $zero, -1
/* 4648C 80055C8C A02860A4 */  sh         $zero, 0x28a0($v1)
/* 46490 80055C90 A22860A4 */  sh         $zero, 0x28a2($v1)
/* 46494 80055C94 A42860A0 */  sb         $zero, 0x28a4($v1)
/* 46498 80055C98 A52860A0 */  sb         $zero, 0x28a5($v1)
/* 4649C 80055C9C A72862A0 */  sb         $v0, 0x28a7($v1)
/* 464A0 80055CA0 B02864A4 */  sh         $a0, 0x28b0($v1)
/* 464A4 80055CA4 B22864A4 */  sh         $a0, 0x28b2($v1)
/* 464A8 80055CA8 B42860A4 */  sh         $zero, 0x28b4($v1)
/* 464AC 80055CAC B62860A4 */  sh         $zero, 0x28b6($v1)
/* 464B0 80055CB0 B82864A4 */  sh         $a0, 0x28b8($v1)
/* 464B4 80055CB4 BA2864A4 */  sh         $a0, 0x28ba($v1)
/* 464B8 80055CB8 A82860A4 */  sh         $zero, 0x28a8($v1)
/* 464BC 80055CBC AA2860A4 */  sh         $zero, 0x28aa($v1)
/* 464C0 80055CC0 AC2860A4 */  sh         $zero, 0x28ac($v1)
/* 464C4 80055CC4 AE2860A4 */  sh         $zero, 0x28ae($v1)
.L80055CC8:
/* 464C8 80055CC8 0000A0AC */  sw         $zero, ($a1)
/* 464CC 80055CCC 0400A524 */  addiu      $a1, $a1, 4
/* 464D0 80055CD0 2118E600 */  addu       $v1, $a3, $a2
/* 464D4 80055CD4 0100C624 */  addiu      $a2, $a2, 1
/* 464D8 80055CD8 0800C228 */  slti       $v0, $a2, 8
/* 464DC 80055CDC FAFF4014 */  bnez       $v0, .L80055CC8
/* 464E0 80055CE0 000060A0 */   sb        $zero, ($v1)
/* 464E4 80055CE4 8B570108 */  j          .L80055E2C
/* 464E8 80055CE8 00000000 */   nop
.L80055CEC:
/* 464EC 80055CEC 0F000624 */  addiu      $a2, $zero, 0xf
/* 464F0 80055CF0 1D00A614 */  bne        $a1, $a2, .L80055D68
/* 464F4 80055CF4 1380023C */   lui       $v0, %hi(D_80129DA8)
/* 464F8 80055CF8 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 464FC 80055CFC 80101100 */  sll        $v0, $s1, 2
/* 46500 80055D00 21105100 */  addu       $v0, $v0, $s1
/* 46504 80055D04 C0100200 */  sll        $v0, $v0, 3
/* 46508 80055D08 21105100 */  addu       $v0, $v0, $s1
/* 4650C 80055D0C C0100200 */  sll        $v0, $v0, 3
/* 46510 80055D10 23105100 */  subu       $v0, $v0, $s1
/* 46514 80055D14 80100200 */  sll        $v0, $v0, 2
/* 46518 80055D18 21105100 */  addu       $v0, $v0, $s1
/* 4651C 80055D1C C0100200 */  sll        $v0, $v0, 3
/* 46520 80055D20 40200300 */  sll        $a0, $v1, 1
/* 46524 80055D24 21208300 */  addu       $a0, $a0, $v1
/* 46528 80055D28 C0200400 */  sll        $a0, $a0, 3
/* 4652C 80055D2C 23208300 */  subu       $a0, $a0, $v1
/* 46530 80055D30 C0210400 */  sll        $a0, $a0, 7
/* 46534 80055D34 21208300 */  addu       $a0, $a0, $v1
/* 46538 80055D38 80200400 */  sll        $a0, $a0, 2
/* 4653C 80055D3C 21208300 */  addu       $a0, $a0, $v1
/* 46540 80055D40 C0200400 */  sll        $a0, $a0, 3
/* 46544 80055D44 1780033C */  lui        $v1, %hi(D_80172958)
/* 46548 80055D48 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4654C 80055D4C 21104300 */  addu       $v0, $v0, $v1
/* 46550 80055D50 21208200 */  addu       $a0, $a0, $v0
/* 46554 80055D54 A22880A4 */  sh         $zero, 0x28a2($a0)
/* 46558 80055D58 A42885A0 */  sb         $a1, 0x28a4($a0)
/* 4655C 80055D5C A02880A4 */  sh         $zero, 0x28a0($a0)
/* 46560 80055D60 8B570108 */  j          .L80055E2C
/* 46564 80055D64 A52880A0 */   sb        $zero, 0x28a5($a0)
.L80055D68:
/* 46568 80055D68 A89D438C */  lw         $v1, -0x6258($v0)
/* 4656C 80055D6C 80101100 */  sll        $v0, $s1, 2
/* 46570 80055D70 21105100 */  addu       $v0, $v0, $s1
/* 46574 80055D74 C0100200 */  sll        $v0, $v0, 3
/* 46578 80055D78 21105100 */  addu       $v0, $v0, $s1
/* 4657C 80055D7C C0100200 */  sll        $v0, $v0, 3
/* 46580 80055D80 23105100 */  subu       $v0, $v0, $s1
/* 46584 80055D84 80100200 */  sll        $v0, $v0, 2
/* 46588 80055D88 21105100 */  addu       $v0, $v0, $s1
/* 4658C 80055D8C C0100200 */  sll        $v0, $v0, 3
/* 46590 80055D90 40200300 */  sll        $a0, $v1, 1
/* 46594 80055D94 21208300 */  addu       $a0, $a0, $v1
/* 46598 80055D98 C0200400 */  sll        $a0, $a0, 3
/* 4659C 80055D9C 23208300 */  subu       $a0, $a0, $v1
/* 465A0 80055DA0 C0210400 */  sll        $a0, $a0, 7
/* 465A4 80055DA4 21208300 */  addu       $a0, $a0, $v1
/* 465A8 80055DA8 80200400 */  sll        $a0, $a0, 2
/* 465AC 80055DAC 21208300 */  addu       $a0, $a0, $v1
/* 465B0 80055DB0 C0200400 */  sll        $a0, $a0, 3
/* 465B4 80055DB4 1780033C */  lui        $v1, %hi(D_80172958)
/* 465B8 80055DB8 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 465BC 80055DBC 21104300 */  addu       $v0, $v0, $v1
/* 465C0 80055DC0 21808200 */  addu       $s0, $a0, $v0
/* 465C4 80055DC4 A4280292 */  lbu        $v0, 0x28a4($s0)
/* 465C8 80055DC8 00000000 */  nop
/* 465CC 80055DCC 17004510 */  beq        $v0, $a1, .L80055E2C
/* 465D0 80055DD0 00000000 */   nop
/* 465D4 80055DD4 A0281286 */  lh         $s2, 0x28a0($s0)
/* 465D8 80055DD8 02004614 */  bne        $v0, $a2, .L80055DE4
/* 465DC 80055DDC 00000000 */   nop
/* 465E0 80055DE0 21900000 */  addu       $s2, $zero, $zero
.L80055DE4:
/* 465E4 80055DE4 21202002 */  addu       $a0, $s1, $zero
/* 465E8 80055DE8 A22800A6 */  sh         $zero, 0x28a2($s0)
/* 465EC 80055DEC 0E58010C */  jal        FUN_80056038
/* 465F0 80055DF0 A42805A2 */   sb        $a1, 0x28a4($s0)
/* 465F4 80055DF4 7A5C010C */  jal        FUN_800571e8
/* 465F8 80055DF8 21202002 */   addu      $a0, $s1, $zero
/* 465FC 80055DFC D361010C */  jal        FUN_8005874c
/* 46600 80055E00 21202002 */   addu      $a0, $s1, $zero
/* 46604 80055E04 A0280286 */  lh         $v0, 0x28a0($s0)
/* 46608 80055E08 00000000 */  nop
/* 4660C 80055E0C 07004212 */  beq        $s2, $v0, .L80055E2C
/* 46610 80055E10 A52800A2 */   sb        $zero, 0x28a5($s0)
/* 46614 80055E14 BE68010C */  jal        FUN_8005a2f8
/* 46618 80055E18 21202002 */   addu      $a0, $s1, $zero
/* 4661C 80055E1C 6461010C */  jal        FUN_80058590
/* 46620 80055E20 21202002 */   addu      $a0, $s1, $zero
/* 46624 80055E24 A461010C */  jal        FUN_80058690
/* 46628 80055E28 21202002 */   addu      $a0, $s1, $zero
.L80055E2C:
/* 4662C 80055E2C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 46630 80055E30 1800B28F */  lw         $s2, 0x18($sp)
/* 46634 80055E34 1400B18F */  lw         $s1, 0x14($sp)
/* 46638 80055E38 1000B08F */  lw         $s0, 0x10($sp)
/* 4663C 80055E3C 0800E003 */  jr         $ra
/* 46640 80055E40 2000BD27 */   addiu     $sp, $sp, 0x20
