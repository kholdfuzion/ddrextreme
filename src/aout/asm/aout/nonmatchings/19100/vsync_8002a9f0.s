.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel vsync_8002a9f0
/* 1B1F0 8002A9F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1B1F4 8002A9F4 1800BFAF */  sw         $ra, 0x18($sp)
/* 1B1F8 8002A9F8 CD6B000C */  jal        VSync
/* 1B1FC 8002A9FC FFFF0424 */   addiu     $a0, $zero, -1
/* 1B200 8002AA00 1000A2AF */  sw         $v0, 0x10($sp)
/* 1B204 8002AA04 1380043C */  lui        $a0, %hi(D_8012ABD8)
/* 1B208 8002AA08 1000A28F */  lw         $v0, 0x10($sp)
/* 1B20C 8002AA0C D8AB838C */  lw         $v1, %lo(D_8012ABD8)($a0)
/* 1B210 8002AA10 00000000 */  nop
/* 1B214 8002AA14 2A104300 */  slt        $v0, $v0, $v1
/* 1B218 8002AA18 08004014 */  bnez       $v0, .L8002AA3C
/* 1B21C 8002AA1C 00000000 */   nop
/* 1B220 8002AA20 1000A28F */  lw         $v0, 0x10($sp)
/* 1B224 8002AA24 D8AB838C */  lw         $v1, -0x5428($a0)
/* 1B228 8002AA28 00000000 */  nop
/* 1B22C 8002AA2C 23104300 */  subu       $v0, $v0, $v1
/* 1B230 8002AA30 02004228 */  slti       $v0, $v0, 2
/* 1B234 8002AA34 06004014 */  bnez       $v0, .L8002AA50
/* 1B238 8002AA38 00000000 */   nop
.L8002AA3C:
/* 1B23C 8002AA3C 1000A28F */  lw         $v0, 0x10($sp)
/* 1B240 8002AA40 00000000 */  nop
/* 1B244 8002AA44 D8AB82AC */  sw         $v0, -0x5428($a0)
/* 1B248 8002AA48 23F0020C */  jal        FUN_800bc08c
/* 1B24C 8002AA4C 00000000 */   nop
.L8002AA50:
/* 1B250 8002AA50 1800BF8F */  lw         $ra, 0x18($sp)
/* 1B254 8002AA54 00000000 */  nop
/* 1B258 8002AA58 0800E003 */  jr         $ra
/* 1B25C 8002AA5C 2000BD27 */   addiu     $sp, $sp, 0x20
