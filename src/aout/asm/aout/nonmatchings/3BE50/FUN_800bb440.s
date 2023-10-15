.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb440
/* ABC40 800BB440 21180000 */  addu       $v1, $zero, $zero
/* ABC44 800BB444 585D063C */  lui        $a2, 0x5d58
/* ABC48 800BB448 658BC634 */  ori        $a2, $a2, 0x8b65
/* ABC4C 800BB44C 0080093C */  lui        $t1, 0x8000
/* ABC50 800BB450 1E800A3C */  lui        $t2, %hi(D_801E0F50)
/* ABC54 800BB454 500F4825 */  addiu      $t0, $t2, %lo(D_801E0F50)
/* ABC58 800BB458 10000724 */  addiu      $a3, $zero, 0x10
.L800BB45C:
/* ABC5C 800BB45C 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB460:
/* ABC60 800BB460 18008600 */  mult       $a0, $a2
/* ABC64 800BB464 FFFFA524 */  addiu      $a1, $a1, -1
/* ABC68 800BB468 42180300 */  srl        $v1, $v1, 1
/* ABC6C 800BB46C 12100000 */  mflo       $v0
/* ABC70 800BB470 01004424 */  addiu      $a0, $v0, 1
/* ABC74 800BB474 24108900 */  and        $v0, $a0, $t1
/* ABC78 800BB478 F9FFA104 */  bgez       $a1, .L800BB460
/* ABC7C 800BB47C 25186200 */   or        $v1, $v1, $v0
/* ABC80 800BB480 000003AD */  sw         $v1, ($t0)
/* ABC84 800BB484 FFFFE724 */  addiu      $a3, $a3, -1
/* ABC88 800BB488 F4FFE104 */  bgez       $a3, .L800BB45C
/* ABC8C 800BB48C 04000825 */   addiu     $t0, $t0, 4
/* ABC90 800BB490 500F4425 */  addiu      $a0, $t2, 0xf50
/* ABC94 800BB494 44008624 */  addiu      $a2, $a0, 0x44
/* ABC98 800BB498 F7010724 */  addiu      $a3, $zero, 0x1f7
/* ABC9C 800BB49C 4000828C */  lw         $v0, 0x40($a0)
/* ABCA0 800BB4A0 500F438D */  lw         $v1, 0xf50($t2)
/* ABCA4 800BB4A4 3C00858C */  lw         $a1, 0x3c($a0)
/* ABCA8 800BB4A8 C0150200 */  sll        $v0, $v0, 0x17
/* ABCAC 800BB4AC 421A0300 */  srl        $v1, $v1, 9
/* ABCB0 800BB4B0 26104300 */  xor        $v0, $v0, $v1
/* ABCB4 800BB4B4 26104500 */  xor        $v0, $v0, $a1
/* ABCB8 800BB4B8 400082AC */  sw         $v0, 0x40($a0)
.L800BB4BC:
/* ABCBC 800BB4BC FFFFE724 */  addiu      $a3, $a3, -1
/* ABCC0 800BB4C0 BCFFC28C */  lw         $v0, -0x44($a2)
/* ABCC4 800BB4C4 C0FFC38C */  lw         $v1, -0x40($a2)
/* ABCC8 800BB4C8 FCFFC48C */  lw         $a0, -4($a2)
/* ABCCC 800BB4CC C0150200 */  sll        $v0, $v0, 0x17
/* ABCD0 800BB4D0 421A0300 */  srl        $v1, $v1, 9
/* ABCD4 800BB4D4 26104300 */  xor        $v0, $v0, $v1
/* ABCD8 800BB4D8 26104400 */  xor        $v0, $v0, $a0
/* ABCDC 800BB4DC 0000C2AC */  sw         $v0, ($a2)
/* ABCE0 800BB4E0 F6FFE104 */  bgez       $a3, .L800BB4BC
/* ABCE4 800BB4E4 0400C624 */   addiu     $a2, $a2, 4
/* ABCE8 800BB4E8 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABCEC 800BB4EC 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABCF0 800BB4F0 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB4F4:
/* ABCF4 800BB4F4 0000828C */  lw         $v0, ($a0)
/* ABCF8 800BB4F8 A407838C */  lw         $v1, 0x7a4($a0)
/* ABCFC 800BB4FC FFFFA524 */  addiu      $a1, $a1, -1
/* ABD00 800BB500 26104300 */  xor        $v0, $v0, $v1
/* ABD04 800BB504 000082AC */  sw         $v0, ($a0)
/* ABD08 800BB508 FAFFA104 */  bgez       $a1, .L800BB4F4
/* ABD0C 800BB50C 04008424 */   addiu     $a0, $a0, 4
/* ABD10 800BB510 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABD14 800BB514 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABD18 800BB518 80004424 */  addiu      $a0, $v0, 0x80
/* ABD1C 800BB51C E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB520:
/* ABD20 800BB520 0000828C */  lw         $v0, ($a0)
/* ABD24 800BB524 80FF838C */  lw         $v1, -0x80($a0)
/* ABD28 800BB528 FFFFA524 */  addiu      $a1, $a1, -1
/* ABD2C 800BB52C 26104300 */  xor        $v0, $v0, $v1
/* ABD30 800BB530 000082AC */  sw         $v0, ($a0)
/* ABD34 800BB534 FAFFA104 */  bgez       $a1, .L800BB520
/* ABD38 800BB538 04008424 */   addiu     $a0, $a0, 4
/* ABD3C 800BB53C 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABD40 800BB540 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABD44 800BB544 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB548:
/* ABD48 800BB548 0000828C */  lw         $v0, ($a0)
/* ABD4C 800BB54C A407838C */  lw         $v1, 0x7a4($a0)
/* ABD50 800BB550 FFFFA524 */  addiu      $a1, $a1, -1
/* ABD54 800BB554 26104300 */  xor        $v0, $v0, $v1
/* ABD58 800BB558 000082AC */  sw         $v0, ($a0)
/* ABD5C 800BB55C FAFFA104 */  bgez       $a1, .L800BB548
/* ABD60 800BB560 04008424 */   addiu     $a0, $a0, 4
/* ABD64 800BB564 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABD68 800BB568 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABD6C 800BB56C 80004424 */  addiu      $a0, $v0, 0x80
/* ABD70 800BB570 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB574:
/* ABD74 800BB574 0000828C */  lw         $v0, ($a0)
/* ABD78 800BB578 80FF838C */  lw         $v1, -0x80($a0)
/* ABD7C 800BB57C FFFFA524 */  addiu      $a1, $a1, -1
/* ABD80 800BB580 26104300 */  xor        $v0, $v0, $v1
/* ABD84 800BB584 000082AC */  sw         $v0, ($a0)
/* ABD88 800BB588 FAFFA104 */  bgez       $a1, .L800BB574
/* ABD8C 800BB58C 04008424 */   addiu     $a0, $a0, 4
/* ABD90 800BB590 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABD94 800BB594 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABD98 800BB598 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB59C:
/* ABD9C 800BB59C 0000828C */  lw         $v0, ($a0)
/* ABDA0 800BB5A0 A407838C */  lw         $v1, 0x7a4($a0)
/* ABDA4 800BB5A4 FFFFA524 */  addiu      $a1, $a1, -1
/* ABDA8 800BB5A8 26104300 */  xor        $v0, $v0, $v1
/* ABDAC 800BB5AC 000082AC */  sw         $v0, ($a0)
/* ABDB0 800BB5B0 FAFFA104 */  bgez       $a1, .L800BB59C
/* ABDB4 800BB5B4 04008424 */   addiu     $a0, $a0, 4
/* ABDB8 800BB5B8 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABDBC 800BB5BC 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABDC0 800BB5C0 80004424 */  addiu      $a0, $v0, 0x80
/* ABDC4 800BB5C4 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB5C8:
/* ABDC8 800BB5C8 0000828C */  lw         $v0, ($a0)
/* ABDCC 800BB5CC 80FF838C */  lw         $v1, -0x80($a0)
/* ABDD0 800BB5D0 FFFFA524 */  addiu      $a1, $a1, -1
/* ABDD4 800BB5D4 26104300 */  xor        $v0, $v0, $v1
/* ABDD8 800BB5D8 000082AC */  sw         $v0, ($a0)
/* ABDDC 800BB5DC FAFFA104 */  bgez       $a1, .L800BB5C8
/* ABDE0 800BB5E0 04008424 */   addiu     $a0, $a0, 4
/* ABDE4 800BB5E4 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABDE8 800BB5E8 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABDEC 800BB5EC 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB5F0:
/* ABDF0 800BB5F0 0000828C */  lw         $v0, ($a0)
/* ABDF4 800BB5F4 A407838C */  lw         $v1, 0x7a4($a0)
/* ABDF8 800BB5F8 FFFFA524 */  addiu      $a1, $a1, -1
/* ABDFC 800BB5FC 26104300 */  xor        $v0, $v0, $v1
/* ABE00 800BB600 000082AC */  sw         $v0, ($a0)
/* ABE04 800BB604 FAFFA104 */  bgez       $a1, .L800BB5F0
/* ABE08 800BB608 04008424 */   addiu     $a0, $a0, 4
/* ABE0C 800BB60C 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABE10 800BB610 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABE14 800BB614 80004424 */  addiu      $a0, $v0, 0x80
/* ABE18 800BB618 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB61C:
/* ABE1C 800BB61C 0000828C */  lw         $v0, ($a0)
/* ABE20 800BB620 80FF838C */  lw         $v1, -0x80($a0)
/* ABE24 800BB624 FFFFA524 */  addiu      $a1, $a1, -1
/* ABE28 800BB628 26104300 */  xor        $v0, $v0, $v1
/* ABE2C 800BB62C 000082AC */  sw         $v0, ($a0)
/* ABE30 800BB630 FAFFA104 */  bgez       $a1, .L800BB61C
/* ABE34 800BB634 04008424 */   addiu     $a0, $a0, 4
/* ABE38 800BB638 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABE3C 800BB63C 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABE40 800BB640 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB644:
/* ABE44 800BB644 0000828C */  lw         $v0, ($a0)
/* ABE48 800BB648 A407838C */  lw         $v1, 0x7a4($a0)
/* ABE4C 800BB64C FFFFA524 */  addiu      $a1, $a1, -1
/* ABE50 800BB650 26104300 */  xor        $v0, $v0, $v1
/* ABE54 800BB654 000082AC */  sw         $v0, ($a0)
/* ABE58 800BB658 FAFFA104 */  bgez       $a1, .L800BB644
/* ABE5C 800BB65C 04008424 */   addiu     $a0, $a0, 4
/* ABE60 800BB660 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABE64 800BB664 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABE68 800BB668 80004424 */  addiu      $a0, $v0, 0x80
/* ABE6C 800BB66C E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB670:
/* ABE70 800BB670 0000828C */  lw         $v0, ($a0)
/* ABE74 800BB674 80FF838C */  lw         $v1, -0x80($a0)
/* ABE78 800BB678 FFFFA524 */  addiu      $a1, $a1, -1
/* ABE7C 800BB67C 26104300 */  xor        $v0, $v0, $v1
/* ABE80 800BB680 000082AC */  sw         $v0, ($a0)
/* ABE84 800BB684 FAFFA104 */  bgez       $a1, .L800BB670
/* ABE88 800BB688 04008424 */   addiu     $a0, $a0, 4
/* ABE8C 800BB68C 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABE90 800BB690 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABE94 800BB694 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB698:
/* ABE98 800BB698 0000828C */  lw         $v0, ($a0)
/* ABE9C 800BB69C A407838C */  lw         $v1, 0x7a4($a0)
/* ABEA0 800BB6A0 FFFFA524 */  addiu      $a1, $a1, -1
/* ABEA4 800BB6A4 26104300 */  xor        $v0, $v0, $v1
/* ABEA8 800BB6A8 000082AC */  sw         $v0, ($a0)
/* ABEAC 800BB6AC FAFFA104 */  bgez       $a1, .L800BB698
/* ABEB0 800BB6B0 04008424 */   addiu     $a0, $a0, 4
/* ABEB4 800BB6B4 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABEB8 800BB6B8 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABEBC 800BB6BC 80004424 */  addiu      $a0, $v0, 0x80
/* ABEC0 800BB6C0 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB6C4:
/* ABEC4 800BB6C4 0000828C */  lw         $v0, ($a0)
/* ABEC8 800BB6C8 80FF838C */  lw         $v1, -0x80($a0)
/* ABECC 800BB6CC FFFFA524 */  addiu      $a1, $a1, -1
/* ABED0 800BB6D0 26104300 */  xor        $v0, $v0, $v1
/* ABED4 800BB6D4 000082AC */  sw         $v0, ($a0)
/* ABED8 800BB6D8 FAFFA104 */  bgez       $a1, .L800BB6C4
/* ABEDC 800BB6DC 04008424 */   addiu     $a0, $a0, 4
/* ABEE0 800BB6E0 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABEE4 800BB6E4 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABEE8 800BB6E8 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB6EC:
/* ABEEC 800BB6EC 0000828C */  lw         $v0, ($a0)
/* ABEF0 800BB6F0 A407838C */  lw         $v1, 0x7a4($a0)
/* ABEF4 800BB6F4 FFFFA524 */  addiu      $a1, $a1, -1
/* ABEF8 800BB6F8 26104300 */  xor        $v0, $v0, $v1
/* ABEFC 800BB6FC 000082AC */  sw         $v0, ($a0)
/* ABF00 800BB700 FAFFA104 */  bgez       $a1, .L800BB6EC
/* ABF04 800BB704 04008424 */   addiu     $a0, $a0, 4
/* ABF08 800BB708 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABF0C 800BB70C 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABF10 800BB710 80004424 */  addiu      $a0, $v0, 0x80
/* ABF14 800BB714 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB718:
/* ABF18 800BB718 0000828C */  lw         $v0, ($a0)
/* ABF1C 800BB71C 80FF838C */  lw         $v1, -0x80($a0)
/* ABF20 800BB720 FFFFA524 */  addiu      $a1, $a1, -1
/* ABF24 800BB724 26104300 */  xor        $v0, $v0, $v1
/* ABF28 800BB728 000082AC */  sw         $v0, ($a0)
/* ABF2C 800BB72C FAFFA104 */  bgez       $a1, .L800BB718
/* ABF30 800BB730 04008424 */   addiu     $a0, $a0, 4
/* ABF34 800BB734 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABF38 800BB738 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABF3C 800BB73C 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB740:
/* ABF40 800BB740 0000828C */  lw         $v0, ($a0)
/* ABF44 800BB744 A407838C */  lw         $v1, 0x7a4($a0)
/* ABF48 800BB748 FFFFA524 */  addiu      $a1, $a1, -1
/* ABF4C 800BB74C 26104300 */  xor        $v0, $v0, $v1
/* ABF50 800BB750 000082AC */  sw         $v0, ($a0)
/* ABF54 800BB754 FAFFA104 */  bgez       $a1, .L800BB740
/* ABF58 800BB758 04008424 */   addiu     $a0, $a0, 4
/* ABF5C 800BB75C 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABF60 800BB760 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABF64 800BB764 80004424 */  addiu      $a0, $v0, 0x80
/* ABF68 800BB768 E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB76C:
/* ABF6C 800BB76C 0000828C */  lw         $v0, ($a0)
/* ABF70 800BB770 80FF838C */  lw         $v1, -0x80($a0)
/* ABF74 800BB774 FFFFA524 */  addiu      $a1, $a1, -1
/* ABF78 800BB778 26104300 */  xor        $v0, $v0, $v1
/* ABF7C 800BB77C 000082AC */  sw         $v0, ($a0)
/* ABF80 800BB780 FAFFA104 */  bgez       $a1, .L800BB76C
/* ABF84 800BB784 04008424 */   addiu     $a0, $a0, 4
/* ABF88 800BB788 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABF8C 800BB78C 500F4424 */  addiu      $a0, $v0, %lo(D_801E0F50)
/* ABF90 800BB790 1F000524 */  addiu      $a1, $zero, 0x1f
.L800BB794:
/* ABF94 800BB794 0000828C */  lw         $v0, ($a0)
/* ABF98 800BB798 A407838C */  lw         $v1, 0x7a4($a0)
/* ABF9C 800BB79C FFFFA524 */  addiu      $a1, $a1, -1
/* ABFA0 800BB7A0 26104300 */  xor        $v0, $v0, $v1
/* ABFA4 800BB7A4 000082AC */  sw         $v0, ($a0)
/* ABFA8 800BB7A8 FAFFA104 */  bgez       $a1, .L800BB794
/* ABFAC 800BB7AC 04008424 */   addiu     $a0, $a0, 4
/* ABFB0 800BB7B0 1E80023C */  lui        $v0, %hi(D_801E0F50)
/* ABFB4 800BB7B4 500F4224 */  addiu      $v0, $v0, %lo(D_801E0F50)
/* ABFB8 800BB7B8 80004424 */  addiu      $a0, $v0, 0x80
/* ABFBC 800BB7BC E8010524 */  addiu      $a1, $zero, 0x1e8
.L800BB7C0:
/* ABFC0 800BB7C0 0000828C */  lw         $v0, ($a0)
/* ABFC4 800BB7C4 80FF838C */  lw         $v1, -0x80($a0)
/* ABFC8 800BB7C8 FFFFA524 */  addiu      $a1, $a1, -1
/* ABFCC 800BB7CC 26104300 */  xor        $v0, $v0, $v1
/* ABFD0 800BB7D0 000082AC */  sw         $v0, ($a0)
/* ABFD4 800BB7D4 FAFFA104 */  bgez       $a1, .L800BB7C0
/* ABFD8 800BB7D8 04008424 */   addiu     $a0, $a0, 4
/* ABFDC 800BB7DC 08020324 */  addiu      $v1, $zero, 0x208
/* ABFE0 800BB7E0 1E80023C */  lui        $v0, %hi(D_801E0F40)
/* ABFE4 800BB7E4 0800E003 */  jr         $ra
/* ABFE8 800BB7E8 400F43AC */   sw        $v1, %lo(D_801E0F40)($v0)
