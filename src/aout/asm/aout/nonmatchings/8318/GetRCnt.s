.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel GetRCnt
/* 86A0 80017EA0 FFFF8330 */  andi       $v1, $a0, 0xffff
/* 86A4 80017EA4 03006228 */  slti       $v0, $v1, 3
/* 86A8 80017EA8 08004010 */  beqz       $v0, .L80017ECC
/* 86AC 80017EAC 00190300 */   sll       $v1, $v1, 4
/* 86B0 80017EB0 0D80023C */  lui        $v0, %hi(D_800D2B2C)
/* 86B4 80017EB4 2C2B428C */  lw         $v0, %lo(D_800D2B2C)($v0)
/* 86B8 80017EB8 00000000 */  nop
/* 86BC 80017EBC 21186200 */  addu       $v1, $v1, $v0
/* 86C0 80017EC0 00006294 */  lhu        $v0, ($v1)
/* 86C4 80017EC4 B45F0008 */  j          COUNTER_OBJ_CC
/* 86C8 80017EC8 00000000 */   nop
.L80017ECC:
/* 86CC 80017ECC 21100000 */  addu       $v0, $zero, $zero
