.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_35C
/* 11194 80020994 2002A28F */  lw         $v0, 0x220($sp)
/* 11198 80020998 00000000 */  nop
/* 1119C 8002099C 0000448C */  lw         $a0, ($v0)
/* 111A0 800209A0 04004224 */  addiu      $v0, $v0, 4
/* 111A4 800209A4 2002A2AF */  sw         $v0, 0x220($sp)
/* 111A8 800209A8 1002A28F */  lw         $v0, 0x210($sp)
/* 111AC 800209AC 00000000 */  nop
/* 111B0 800209B0 42110200 */  srl        $v0, $v0, 5
/* 111B4 800209B4 01004230 */  andi       $v0, $v0, 1
/* 111B8 800209B8 02004010 */  beqz       $v0, .L800209C4
/* 111BC 800209BC 00000000 */   nop
/* 111C0 800209C0 FFFF8430 */  andi       $a0, $a0, 0xffff
.L800209C4:
/* 111C4 800209C4 1102A0A3 */  sb         $zero, 0x211($sp)
