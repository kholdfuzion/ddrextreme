.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuRGetAllKeysStatus
/* A9574 800B8D74 03008104 */  bgez       $a0, .L800B8D84
/* A9578 800B8D78 18008228 */   slti      $v0, $a0, 0x18
/* A957C 800B8D7C 21200000 */  addu       $a0, $zero, $zero
/* A9580 800B8D80 18008228 */  slti       $v0, $a0, 0x18
.L800B8D84:
/* A9584 800B8D84 09004010 */  beqz       $v0, .L800B8DAC
/* A9588 800B8D88 1800A228 */   slti      $v0, $a1, 0x18
/* A958C 800B8D8C 02004014 */  bnez       $v0, .L800B8D98
/* A9590 800B8D90 00000000 */   nop
/* A9594 800B8D94 17000524 */  addiu      $a1, $zero, 0x17
.L800B8D98:
/* A9598 800B8D98 2900A004 */  bltz       $a1, SR_GAKS_OBJ_CC
/* A959C 800B8D9C FDFF0224 */   addiu     $v0, $zero, -3
/* A95A0 800B8DA0 2A10A400 */  slt        $v0, $a1, $a0
/* A95A4 800B8DA4 03004010 */  beqz       $v0, .L800B8DB4
/* A95A8 800B8DA8 21388000 */   addu      $a3, $a0, $zero
.L800B8DAC:
/* A95AC 800B8DAC 90E30208 */  j          SR_GAKS_OBJ_CC
/* A95B0 800B8DB0 FDFF0224 */   addiu     $v0, $zero, -3
.L800B8DB4:
/* A95B4 800B8DB4 0100A524 */  addiu      $a1, $a1, 1
/* A95B8 800B8DB8 2A10E500 */  slt        $v0, $a3, $a1
/* A95BC 800B8DBC 20004010 */  beqz       $v0, SR_GAKS_OBJ_CC
/* A95C0 800B8DC0 21100000 */   addu      $v0, $zero, $zero
/* A95C4 800B8DC4 01000824 */  addiu      $t0, $zero, 1
/* A95C8 800B8DC8 03000A24 */  addiu      $t2, $zero, 3
/* A95CC 800B8DCC 02000924 */  addiu      $t1, $zero, 2
/* A95D0 800B8DD0 2130E600 */  addu       $a2, $a3, $a2
.L800B8DD4:
/* A95D4 800B8DD4 00210700 */  sll        $a0, $a3, 4
/* A95D8 800B8DD8 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A95DC 800B8DDC F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A95E0 800B8DE0 0F80033C */  lui        $v1, %hi(D_800EC77C)
/* A95E4 800B8DE4 7CC7638C */  lw         $v1, %lo(D_800EC77C)($v1)
/* A95E8 800B8DE8 21208200 */  addu       $a0, $a0, $v0
/* A95EC 800B8DEC 0410E800 */  sllv       $v0, $t0, $a3
/* A95F0 800B8DF0 24186200 */  and        $v1, $v1, $v0
/* A95F4 800B8DF4 0C008294 */  lhu        $v0, 0xc($a0)
/* A95F8 800B8DF8 07006010 */  beqz       $v1, .L800B8E18
/* A95FC 800B8DFC 00000000 */   nop
/* A9600 800B8E00 03004010 */  beqz       $v0, .L800B8E10
/* A9604 800B8E04 00000000 */   nop
/* A9608 800B8E08 8BE30208 */  j          SR_GAKS_OBJ_B8
/* A960C 800B8E0C 0000C8A0 */   sb        $t0, ($a2)
.L800B8E10:
/* A9610 800B8E10 8BE30208 */  j          SR_GAKS_OBJ_B8
/* A9614 800B8E14 0000CAA0 */   sb        $t2, ($a2)
.L800B8E18:
/* A9618 800B8E18 03004010 */  beqz       $v0, .L800B8E28
/* A961C 800B8E1C 00000000 */   nop
/* A9620 800B8E20 8BE30208 */  j          SR_GAKS_OBJ_B8
/* A9624 800B8E24 0000C9A0 */   sb        $t1, ($a2)
.L800B8E28:
/* A9628 800B8E28 0000C0A0 */  sb         $zero, ($a2)
