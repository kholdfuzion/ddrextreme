.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SAV_OBJ_200
/* A8FC4 800B87C4 FFFF4234 */  ori        $v0, $v0, 0xffff
/* A8FC8 800B87C8 24100201 */  and        $v0, $t0, $v0
/* A8FCC 800B87CC 27100200 */  nor        $v0, $zero, $v0
/* A8FD0 800B87D0 1CE20208 */  j          S_SAV_OBJ_2AC
/* A8FD4 800B87D4 24504201 */   and       $t2, $t2, $v0
.L800B87D8:
/* A8FD8 800B87D8 0F80023C */  lui        $v0, %hi(D_800EC7DC)
/* A8FDC 800B87DC DCC7428C */  lw         $v0, %lo(D_800EC7DC)($v0)
/* A8FE0 800B87E0 00000000 */  nop
/* A8FE4 800B87E4 01004230 */  andi       $v0, $v0, 1
/* A8FE8 800B87E8 14004010 */  beqz       $v0, .L800B883C
/* A8FEC 800B87EC 40180700 */   sll       $v1, $a3, 1
/* A8FF0 800B87F0 1E80043C */  lui        $a0, %hi(D_801E0D50)
/* A8FF4 800B87F4 500D8424 */  addiu      $a0, $a0, %lo(D_801E0D50)
/* A8FF8 800B87F8 40100600 */  sll        $v0, $a2, 1
/* A8FFC 800B87FC 21104400 */  addu       $v0, $v0, $a0
/* A9000 800B8800 21186400 */  addu       $v1, $v1, $a0
/* A9004 800B8804 000048A4 */  sh         $t0, ($v0)
/* A9008 800B8808 02140800 */  srl        $v0, $t0, 0x10
/* A900C 800B880C FF004230 */  andi       $v0, $v0, 0xff
/* A9010 800B8810 000062A4 */  sh         $v0, ($v1)
/* A9014 800B8814 3AFFC224 */  addiu      $v0, $a2, -0xc6
/* A9018 800B8818 43100200 */  sra        $v0, $v0, 1
/* A901C 800B881C 0F80033C */  lui        $v1, %hi(D_800EC7A8)
/* A9020 800B8820 A8C7638C */  lw         $v1, %lo(D_800EC7A8)($v1)
/* A9024 800B8824 04104B00 */  sllv       $v0, $t3, $v0
/* A9028 800B8828 25186200 */  or         $v1, $v1, $v0
/* A902C 800B882C 0F80013C */  lui        $at, %hi(D_800EC7A8)
/* A9030 800B8830 A8C723AC */  sw         $v1, %lo(D_800EC7A8)($at)
/* A9034 800B8834 1AE20208 */  j          S_SAV_OBJ_2A4
/* A9038 800B8838 FF00023C */   lui       $v0, 0xff
.L800B883C:
/* A903C 800B883C 40100600 */  sll        $v0, $a2, 1
/* A9040 800B8840 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A9044 800B8844 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A9048 800B8848 00000000 */  nop
/* A904C 800B884C 21104400 */  addu       $v0, $v0, $a0
/* A9050 800B8850 21186400 */  addu       $v1, $v1, $a0
/* A9054 800B8854 000048A4 */  sh         $t0, ($v0)
/* A9058 800B8858 02140800 */  srl        $v0, $t0, 0x10
/* A905C 800B885C FF004230 */  andi       $v0, $v0, 0xff
/* A9060 800B8860 000062A4 */  sh         $v0, ($v1)
/* A9064 800B8864 FF00023C */  lui        $v0, 0xff
