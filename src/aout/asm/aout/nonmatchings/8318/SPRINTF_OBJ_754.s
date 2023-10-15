.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_754
/* 1158C 80020D8C 2002A28F */  lw         $v0, 0x220($sp)
/* 11590 80020D90 1002A38F */  lw         $v1, 0x210($sp)
/* 11594 80020D94 0000518C */  lw         $s1, ($v0)
/* 11598 80020D98 04004224 */  addiu      $v0, $v0, 4
/* 1159C 80020D9C 2002A2AF */  sw         $v0, 0x220($sp)
/* 115A0 80020DA0 42110300 */  srl        $v0, $v1, 5
/* 115A4 80020DA4 01004230 */  andi       $v0, $v0, 1
/* 115A8 80020DA8 03004010 */  beqz       $v0, .L80020DB8
/* 115AC 80020DAC 00000000 */   nop
/* 115B0 80020DB0 99830008 */  j          SPRINTF_OBJ_82C
/* 115B4 80020DB4 000032A6 */   sh        $s2, ($s1)
.L80020DB8:
/* 115B8 80020DB8 99830008 */  j          SPRINTF_OBJ_82C
/* 115BC 80020DBC 000032AE */   sw        $s2, ($s1)
