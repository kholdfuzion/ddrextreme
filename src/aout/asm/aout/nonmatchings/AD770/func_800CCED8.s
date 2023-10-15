.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CCED8
/* BD6D8 800CCED8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BD6DC 800CCEDC 1800B0AF */  sw         $s0, 0x18($sp)
/* BD6E0 800CCEE0 2180A000 */  addu       $s0, $a1, $zero
/* BD6E4 800CCEE4 F0070524 */  addiu      $a1, $zero, 0x7f0
/* BD6E8 800CCEE8 1000A627 */  addiu      $a2, $sp, 0x10
/* BD6EC 800CCEEC 1C00BFAF */  sw         $ra, 0x1c($sp)
/* BD6F0 800CCEF0 0031030C */  jal        FUN_800cc400
/* BD6F4 800CCEF4 08000724 */   addiu     $a3, $zero, 8
/* BD6F8 800CCEF8 21184000 */  addu       $v1, $v0, $zero
/* BD6FC 800CCEFC 0F006014 */  bnez       $v1, .L800CCF3C
/* BD700 800CCF00 FF000224 */   addiu     $v0, $zero, 0xff
/* BD704 800CCF04 000002A2 */  sb         $v0, ($s0)
/* BD708 800CCF08 010002A2 */  sb         $v0, 1($s0)
/* BD70C 800CCF0C AC000224 */  addiu      $v0, $zero, 0xac
/* BD710 800CCF10 020002A2 */  sb         $v0, 2($s0)
/* BD714 800CCF14 1400A293 */  lbu        $v0, 0x14($sp)
/* BD718 800CCF18 00000000 */  nop
/* BD71C 800CCF1C 030002A2 */  sb         $v0, 3($s0)
/* BD720 800CCF20 1500A293 */  lbu        $v0, 0x15($sp)
/* BD724 800CCF24 060000A2 */  sb         $zero, 6($s0)
/* BD728 800CCF28 050000A2 */  sb         $zero, 5($s0)
/* BD72C 800CCF2C 040002A2 */  sb         $v0, 4($s0)
/* BD730 800CCF30 1700A293 */  lbu        $v0, 0x17($sp)
/* BD734 800CCF34 00000000 */  nop
/* BD738 800CCF38 070002A2 */  sb         $v0, 7($s0)
.L800CCF3C:
/* BD73C 800CCF3C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* BD740 800CCF40 1800B08F */  lw         $s0, 0x18($sp)
/* BD744 800CCF44 21106000 */  addu       $v0, $v1, $zero
/* BD748 800CCF48 0800E003 */  jr         $ra
/* BD74C 800CCF4C 2000BD27 */   addiu     $sp, $sp, 0x20
