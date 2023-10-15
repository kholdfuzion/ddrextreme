.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel rsin
/* 2CFD0 8003C7D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2CFD4 8003C7D4 05008004 */  bltz       $a0, .L8003C7EC
/* 2CFD8 8003C7D8 1000BFAF */   sw        $ra, 0x10($sp)
/* 2CFDC 8003C7DC 03F2000C */  jal        sin_1
/* 2CFE0 8003C7E0 FF0F8430 */   andi      $a0, $a0, 0xfff
/* 2CFE4 8003C7E4 FFF10008 */  j          GEO_00_OBJ_2C
/* 2CFE8 8003C7E8 00000000 */   nop
.L8003C7EC:
/* 2CFEC 8003C7EC 23200400 */  negu       $a0, $a0
/* 2CFF0 8003C7F0 03F2000C */  jal        sin_1
/* 2CFF4 8003C7F4 FF0F8430 */   andi      $a0, $a0, 0xfff
/* 2CFF8 8003C7F8 23100200 */  negu       $v0, $v0
