.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_FF4
/* 97D8 80018FD8 2180A000 */  addu       $s0, $a1, $zero
/* 97DC 80018FDC 02000526 */  addiu      $a1, $s0, 2
/* 97E0 80018FE0 2A104502 */  slt        $v0, $s2, $a1
/* 97E4 80018FE4 05004014 */  bnez       $v0, .L80018FFC
/* 97E8 80018FE8 0301422A */   slti      $v0, $s2, 0x103
/* 97EC 80018FEC 02010524 */  addiu      $a1, $zero, 0x102
