.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800BABFC
/* AB3FC 800BABFC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AB400 800BAC00 1000B0AF */  sw         $s0, 0x10($sp)
/* AB404 800BAC04 1400BFAF */  sw         $ra, 0x14($sp)
/* AB408 800BAC08 9DEA020C */  jal        FUN_800baa74
/* AB40C 800BAC0C 2180A000 */   addu      $s0, $a1, $zero
/* AB410 800BAC10 03000C24 */  addiu      $t4, $zero, 3
/* AB414 800BAC14 01000A24 */  addiu      $t2, $zero, 1
/* AB418 800BAC18 1E80023C */  lui        $v0, %hi(D_801E0EF0)
/* AB41C 800BAC1C F00E4924 */  addiu      $t1, $v0, %lo(D_801E0EF0)
/* AB420 800BAC20 0F000B24 */  addiu      $t3, $zero, 0xf
.L800BAC24:
/* AB424 800BAC24 00002391 */  lbu        $v1, ($t1)
/* AB428 800BAC28 10002591 */  lbu        $a1, 0x10($t1)
/* AB42C 800BAC2C C2100300 */  srl        $v0, $v1, 3
/* AB430 800BAC30 23108201 */  subu       $v0, $t4, $v0
/* AB434 800BAC34 FF004730 */  andi       $a3, $v0, 0xff
/* AB438 800BAC38 07006830 */  andi       $t0, $v1, 7
/* AB43C 800BAC3C C2200500 */  srl        $a0, $a1, 3
/* AB440 800BAC40 23208401 */  subu       $a0, $t4, $a0
/* AB444 800BAC44 FF008430 */  andi       $a0, $a0, 0xff
/* AB448 800BAC48 21100702 */  addu       $v0, $s0, $a3
/* AB44C 800BAC4C 21300402 */  addu       $a2, $s0, $a0
/* AB450 800BAC50 00004390 */  lbu        $v1, ($v0)
/* AB454 800BAC54 0000C490 */  lbu        $a0, ($a2)
/* AB458 800BAC58 07180301 */  srav       $v1, $v1, $t0
/* AB45C 800BAC5C 01006330 */  andi       $v1, $v1, 1
/* AB460 800BAC60 04006010 */  beqz       $v1, .L800BAC74
/* AB464 800BAC64 0700A530 */   andi      $a1, $a1, 7
/* AB468 800BAC68 0410AA00 */  sllv       $v0, $t2, $a1
/* AB46C 800BAC6C 20EB0208 */  j          .L800BAC80
/* AB470 800BAC70 25108200 */   or        $v0, $a0, $v0
.L800BAC74:
/* AB474 800BAC74 0410AA00 */  sllv       $v0, $t2, $a1
/* AB478 800BAC78 27100200 */  nor        $v0, $zero, $v0
/* AB47C 800BAC7C 24108200 */  and        $v0, $a0, $v0
.L800BAC80:
/* AB480 800BAC80 0000C2A0 */  sb         $v0, ($a2)
/* AB484 800BAC84 0710A400 */  srav       $v0, $a0, $a1
/* AB488 800BAC88 01004230 */  andi       $v0, $v0, 1
/* AB48C 800BAC8C 06004010 */  beqz       $v0, .L800BACA8
/* AB490 800BAC90 21100702 */   addu      $v0, $s0, $a3
/* AB494 800BAC94 00004390 */  lbu        $v1, ($v0)
/* AB498 800BAC98 04200A01 */  sllv       $a0, $t2, $t0
/* AB49C 800BAC9C 25186400 */  or         $v1, $v1, $a0
/* AB4A0 800BACA0 2FEB0208 */  j          .L800BACBC
/* AB4A4 800BACA4 000043A0 */   sb        $v1, ($v0)
.L800BACA8:
/* AB4A8 800BACA8 04180A01 */  sllv       $v1, $t2, $t0
/* AB4AC 800BACAC 00004490 */  lbu        $a0, ($v0)
/* AB4B0 800BACB0 27180300 */  nor        $v1, $zero, $v1
/* AB4B4 800BACB4 24208300 */  and        $a0, $a0, $v1
/* AB4B8 800BACB8 000044A0 */  sb         $a0, ($v0)
.L800BACBC:
/* AB4BC 800BACBC FFFF6B25 */  addiu      $t3, $t3, -1
/* AB4C0 800BACC0 D8FF6105 */  bgez       $t3, .L800BAC24
/* AB4C4 800BACC4 01002925 */   addiu     $t1, $t1, 1
/* AB4C8 800BACC8 1400BF8F */  lw         $ra, 0x14($sp)
/* AB4CC 800BACCC 1000B08F */  lw         $s0, 0x10($sp)
/* AB4D0 800BACD0 0800E003 */  jr         $ra
/* AB4D4 800BACD4 1800BD27 */   addiu     $sp, $sp, 0x18
