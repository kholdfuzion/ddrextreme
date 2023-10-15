.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuReserveReverbWorkArea
/* A8CC4 800B84C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A8CC8 800B84C8 0A008010 */  beqz       $a0, .L800B84F4
/* A8CCC 800B84CC 1000BFAF */   sw        $ra, 0x10($sp)
/* A8CD0 800B84D0 0F80043C */  lui        $a0, %hi(D_800EC78C)
/* A8CD4 800B84D4 8CC7848C */  lw         $a0, %lo(D_800EC78C)($a0)
/* A8CD8 800B84D8 A1DE020C */  jal        _SpuIsInAllocateArea_
/* A8CDC 800B84DC 00000000 */   nop
/* A8CE0 800B84E0 04004014 */  bnez       $v0, .L800B84F4
/* A8CE4 800B84E4 01000224 */   addiu     $v0, $zero, 1
/* A8CE8 800B84E8 0F80013C */  lui        $at, %hi(D_800EC788)
/* A8CEC 800B84EC 40E10208 */  j          S_RRWA_OBJ_3C
/* A8CF0 800B84F0 88C722AC */   sw        $v0, %lo(D_800EC788)($at)
.L800B84F4:
/* A8CF4 800B84F4 0F80013C */  lui        $at, %hi(D_800EC788)
/* A8CF8 800B84F8 88C720AC */  sw         $zero, %lo(D_800EC788)($at)
/* A8CFC 800B84FC 21100000 */  addu       $v0, $zero, $zero
