.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetReverbDepth
/* A8D14 800B8514 0000858C */  lw         $a1, ($a0)
/* A8D18 800B8518 00000000 */  nop
/* A8D1C 800B851C 0100A62C */  sltiu      $a2, $a1, 1
/* A8D20 800B8520 0300C014 */  bnez       $a2, .L800B8530
/* A8D24 800B8524 0200A230 */   andi      $v0, $a1, 2
/* A8D28 800B8528 09004010 */  beqz       $v0, .L800B8550
/* A8D2C 800B852C 00000000 */   nop
.L800B8530:
/* A8D30 800B8530 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A8D34 800B8534 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A8D38 800B8538 08008394 */  lhu        $v1, 8($a0)
/* A8D3C 800B853C 00000000 */  nop
/* A8D40 800B8540 840143A4 */  sh         $v1, 0x184($v0)
/* A8D44 800B8544 08008294 */  lhu        $v0, 8($a0)
/* A8D48 800B8548 0F80013C */  lui        $at, %hi(D_800EC798)
/* A8D4C 800B854C 98C722A4 */  sh         $v0, %lo(D_800EC798)($at)
.L800B8550:
/* A8D50 800B8550 0400C014 */  bnez       $a2, .L800B8564
/* A8D54 800B8554 00000000 */   nop
/* A8D58 800B8558 0400A230 */  andi       $v0, $a1, 4
/* A8D5C 800B855C 09004010 */  beqz       $v0, .L800B8584
/* A8D60 800B8560 00000000 */   nop
.L800B8564:
/* A8D64 800B8564 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A8D68 800B8568 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A8D6C 800B856C 0A008394 */  lhu        $v1, 0xa($a0)
/* A8D70 800B8570 00000000 */  nop
/* A8D74 800B8574 860143A4 */  sh         $v1, 0x186($v0)
/* A8D78 800B8578 0A008294 */  lhu        $v0, 0xa($a0)
/* A8D7C 800B857C 0F80013C */  lui        $at, %hi(D_800EC79A)
/* A8D80 800B8580 9AC722A4 */  sh         $v0, %lo(D_800EC79A)($at)
.L800B8584:
/* A8D84 800B8584 0800E003 */  jr         $ra
/* A8D88 800B8588 21100000 */   addu      $v0, $zero, $zero
/* A8D8C 800B858C 00000000 */  nop
/* A8D90 800B8590 00000000 */  nop
