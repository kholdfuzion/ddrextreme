.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel COUNTER_OBJ_74
/* 8678 80017E78 02004010 */  beqz       $v0, .L80017E84
/* 867C 80017E7C 01000224 */   addiu     $v0, $zero, 1
/* 8680 80017E80 1000E734 */  ori        $a3, $a3, 0x10
.L80017E84:
/* 8684 80017E84 0D80043C */  lui        $a0, %hi(D_800D2B2C)
/* 8688 80017E88 2C2B848C */  lw         $a0, %lo(D_800D2B2C)($a0)
/* 868C 80017E8C 00190800 */  sll        $v1, $t0, 4
/* 8690 80017E90 21186400 */  addu       $v1, $v1, $a0
/* 8694 80017E94 040067A4 */  sh         $a3, 4($v1)
