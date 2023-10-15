.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80026aac
/* 172AC 80026AAC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 172B0 80026AB0 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 172B4 80026AB4 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 172B8 80026AB8 200040AC */  sw         $zero, %lo(D_800F0020)($v0)
/* 172BC 80026ABC 16000224 */  addiu      $v0, $zero, 0x16
/* 172C0 80026AC0 1000BFAF */  sw         $ra, 0x10($sp)
/* 172C4 80026AC4 0C7A010C */  jal        FUN_8005e830
/* 172C8 80026AC8 280062A4 */   sh        $v0, %lo(D_800F0028)($v1)
/* 172CC 80026ACC 1728010C */  jal        FUN_8004a05c
/* 172D0 80026AD0 00000000 */   nop
/* 172D4 80026AD4 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 172D8 80026AD8 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 172DC 80026ADC B40D828C */  lw         $v0, 0xdb4($a0)
/* 172E0 80026AE0 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 172E4 80026AE4 24104300 */  and        $v0, $v0, $v1
/* 172E8 80026AE8 20004234 */  ori        $v0, $v0, 0x20
/* 172EC 80026AEC 47B9020C */  jal        FUN_800ae51c
/* 172F0 80026AF0 B40D82AC */   sw        $v0, 0xdb4($a0)
/* 172F4 80026AF4 1000BF8F */  lw         $ra, 0x10($sp)
/* 172F8 80026AF8 00000000 */  nop
/* 172FC 80026AFC 0800E003 */  jr         $ra
/* 17300 80026B00 1800BD27 */   addiu     $sp, $sp, 0x18
