.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80022bb8
/* 133B8 80022BB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 133BC 80022BBC 0F80023C */  lui        $v0, %hi(D_800EFFA8)
/* 133C0 80022BC0 A8FF4324 */  addiu      $v1, $v0, %lo(D_800EFFA8)
/* 133C4 80022BC4 1400BFAF */  sw         $ra, 0x14($sp)
/* 133C8 80022BC8 1000B0AF */  sw         $s0, 0x10($sp)
/* 133CC 80022BCC 7800638C */  lw         $v1, 0x78($v1)
/* 133D0 80022BD0 00000000 */  nop
/* 133D4 80022BD4 10006428 */  slti       $a0, $v1, 0x10
/* 133D8 80022BD8 03008010 */  beqz       $a0, .L80022BE8
/* 133DC 80022BDC 21804000 */   addu      $s0, $v0, $zero
/* 133E0 80022BE0 028B0008 */  j          .L80022C08
/* 133E4 80022BE4 00220300 */   sll       $a0, $v1, 8
.L80022BE8:
/* 133E8 80022BE8 59016228 */  slti       $v0, $v1, 0x159
/* 133EC 80022BEC 06004014 */  bnez       $v0, .L80022C08
/* 133F0 80022BF0 00100424 */   addiu     $a0, $zero, 0x1000
/* 133F4 80022BF4 68010224 */  addiu      $v0, $zero, 0x168
/* 133F8 80022BF8 23104300 */  subu       $v0, $v0, $v1
/* 133FC 80022BFC 00120200 */  sll        $v0, $v0, 8
/* 13400 80022C00 00200324 */  addiu      $v1, $zero, 0x2000
/* 13404 80022C04 23206200 */  subu       $a0, $v1, $v0
.L80022C08:
/* 13408 80022C08 074F010C */  jal        FUN_80053c1c
/* 1340C 80022C0C 00000000 */   nop
/* 13410 80022C10 A8FF0226 */  addiu      $v0, $s0, -0x58
/* 13414 80022C14 7800438C */  lw         $v1, 0x78($v0)
/* 13418 80022C18 00000000 */  nop
/* 1341C 80022C1C 69016328 */  slti       $v1, $v1, 0x169
/* 13420 80022C20 02006010 */  beqz       $v1, .L80022C2C
/* 13424 80022C24 07000224 */   addiu     $v0, $zero, 7
/* 13428 80022C28 03000224 */  addiu      $v0, $zero, 3
.L80022C2C:
/* 1342C 80022C2C 1400BF8F */  lw         $ra, 0x14($sp)
/* 13430 80022C30 1000B08F */  lw         $s0, 0x10($sp)
/* 13434 80022C34 0800E003 */  jr         $ra
/* 13438 80022C38 1800BD27 */   addiu     $sp, $sp, 0x18
