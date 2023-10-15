.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_6A8
/* 114E0 80020CE0 FFFF3126 */  addiu      $s1, $s1, -1
/* 114E4 80020CE4 2002A28F */  lw         $v0, 0x220($sp)
/* 114E8 80020CE8 01001024 */  addiu      $s0, $zero, 1
/* 114EC 80020CEC 00004390 */  lbu        $v1, ($v0)
/* 114F0 80020CF0 04004224 */  addiu      $v0, $v0, 4
/* 114F4 80020CF4 000023A2 */  sb         $v1, ($s1)
/* 114F8 80020CF8 76830008 */  j          SPRINTF_OBJ_7A0
/* 114FC 80020CFC 2002A2AF */   sw        $v0, 0x220($sp)
