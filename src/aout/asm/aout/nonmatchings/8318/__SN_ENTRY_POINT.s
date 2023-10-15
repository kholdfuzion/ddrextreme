.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel __SN_ENTRY_POINT
/* 8598 80017D98 0F80023C */  lui        $v0, %hi(D_800EE758)
/* 859C 80017D9C 58E74224 */  addiu      $v0, $v0, %lo(D_800EE758)
/* 85A0 80017DA0 2080033C */  lui        $v1, %hi(D_801FCF60)
/* 85A4 80017DA4 60CF6324 */  addiu      $v1, $v1, %lo(D_801FCF60)
.L80017DA8:
/* 85A8 80017DA8 000040AC */  sw         $zero, ($v0)
/* 85AC 80017DAC 04004224 */  addiu      $v0, $v0, 4
/* 85B0 80017DB0 2B084300 */  sltu       $at, $v0, $v1
/* 85B4 80017DB4 FCFF2014 */  bnez       $at, .L80017DA8
/* 85B8 80017DB8 00000000 */   nop
/* 85BC 80017DBC 0F801C3C */  lui        $gp, %hi(D_800EE754)
/* 85C0 80017DC0 54E79C27 */  addiu      $gp, $gp, %lo(D_800EE754)
/* 85C4 80017DC4 C65E0008 */  j          FUN_80017b18
/* 85C8 80017DC8 00000000 */   nop
