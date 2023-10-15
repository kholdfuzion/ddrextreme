.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005e8ac
/* 4F0AC 8005E8AC 0E80053C */  lui        $a1, %hi(D_800DAF94)
/* 4F0B0 8005E8B0 94AFA48C */  lw         $a0, %lo(D_800DAF94)($a1)
/* 4F0B4 8005E8B4 00000000 */  nop
/* 4F0B8 8005E8B8 0000828C */  lw         $v0, ($a0)
/* 4F0BC 8005E8BC 00000000 */  nop
/* 4F0C0 8005E8C0 01004224 */  addiu      $v0, $v0, 1
/* 4F0C4 8005E8C4 000082AC */  sw         $v0, ($a0)
/* 4F0C8 8005E8C8 15004228 */  slti       $v0, $v0, 0x15
/* 4F0CC 8005E8CC 0B004014 */  bnez       $v0, .L8005E8FC
/* 4F0D0 8005E8D0 FFFF0224 */   addiu     $v0, $zero, -1
/* 4F0D4 8005E8D4 0400838C */  lw         $v1, 4($a0)
/* 4F0D8 8005E8D8 00000000 */  nop
/* 4F0DC 8005E8DC 04006214 */  bne        $v1, $v0, .L8005E8F0
/* 4F0E0 8005E8E0 0F80023C */   lui       $v0, %hi(D_800F001C)
/* 4F0E4 8005E8E4 1C00438C */  lw         $v1, %lo(D_800F001C)($v0)
/* 4F0E8 8005E8E8 00000000 */  nop
/* 4F0EC 8005E8EC 040083AC */  sw         $v1, 4($a0)
.L8005E8F0:
/* 4F0F0 8005E8F0 94AFA38C */  lw         $v1, -0x506c($a1)
/* 4F0F4 8005E8F4 14000224 */  addiu      $v0, $zero, 0x14
/* 4F0F8 8005E8F8 000062AC */  sw         $v0, ($v1)
.L8005E8FC:
/* 4F0FC 8005E8FC 0800E003 */  jr         $ra
/* 4F100 8005E900 00000000 */   nop
