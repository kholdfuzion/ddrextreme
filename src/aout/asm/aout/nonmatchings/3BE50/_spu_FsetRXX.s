.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_FsetRXX
/* A7DC0 800B75C0 0700C014 */  bnez       $a2, .L800B75E0
/* A7DC4 800B75C4 40100400 */   sll       $v0, $a0, 1
/* A7DC8 800B75C8 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A7DCC 800B75CC F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A7DD0 800B75D0 00000000 */  nop
/* A7DD4 800B75D4 21104300 */  addu       $v0, $v0, $v1
/* A7DD8 800B75D8 7FDD0208 */  j          SPU_OBJ_948
/* A7DDC 800B75DC 000045A4 */   sh        $a1, ($v0)
.L800B75E0:
/* A7DE0 800B75E0 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A7DE4 800B75E4 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A7DE8 800B75E8 0F80033C */  lui        $v1, %hi(D_800EC818)
/* A7DEC 800B75EC 18C8638C */  lw         $v1, %lo(D_800EC818)($v1)
/* A7DF0 800B75F0 21104400 */  addu       $v0, $v0, $a0
/* A7DF4 800B75F4 06186500 */  srlv       $v1, $a1, $v1
/* A7DF8 800B75F8 000043A4 */  sh         $v1, ($v0)
