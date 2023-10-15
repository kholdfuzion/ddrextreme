.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPU_OBJ_78C
/* A7C40 800B7440 FCFF048E */  lw         $a0, -4($s0)
/* A7C44 800B7444 0F80013C */  lui        $at, %hi(D_800EC844)
/* A7C48 800B7448 44C824AC */  sw         $a0, %lo(D_800EC844)($at)
/* A7C4C 800B744C 0000048E */  lw         $a0, ($s0)
/* A7C50 800B7450 0F80053C */  lui        $a1, %hi(D_800EC7F4)
/* A7C54 800B7454 F4C7A58C */  lw         $a1, %lo(D_800EC7F4)($a1)
/* A7C58 800B7458 82190400 */  srl        $v1, $a0, 6
/* A7C5C 800B745C 3F008230 */  andi       $v0, $a0, 0x3f
/* A7C60 800B7460 2B100200 */  sltu       $v0, $zero, $v0
/* A7C64 800B7464 0F80043C */  lui        $a0, %hi(D_800EC844)
/* A7C68 800B7468 44C8848C */  lw         $a0, %lo(D_800EC844)($a0)
/* A7C6C 800B746C 21186200 */  addu       $v1, $v1, $v0
/* A7C70 800B7470 0F80013C */  lui        $at, %hi(D_800EC848)
/* A7C74 800B7474 48C823AC */  sw         $v1, %lo(D_800EC848)($at)
/* A7C78 800B7478 0000A4AC */  sw         $a0, ($a1)
/* A7C7C 800B747C 0F80023C */  lui        $v0, %hi(D_800EC848)
/* A7C80 800B7480 48C8428C */  lw         $v0, %lo(D_800EC848)($v0)
/* A7C84 800B7484 0F80033C */  lui        $v1, %hi(D_800EC7F8)
/* A7C88 800B7488 F8C7638C */  lw         $v1, %lo(D_800EC7F8)($v1)
/* A7C8C 800B748C 00140200 */  sll        $v0, $v0, 0x10
/* A7C90 800B7490 10004234 */  ori        $v0, $v0, 0x10
/* A7C94 800B7494 000062AC */  sw         $v0, ($v1)
/* A7C98 800B7498 0F80033C */  lui        $v1, %hi(D_800EC840)
/* A7C9C 800B749C 40C8638C */  lw         $v1, %lo(D_800EC840)($v1)
/* A7CA0 800B74A0 01000224 */  addiu      $v0, $zero, 1
/* A7CA4 800B74A4 03006214 */  bne        $v1, $v0, .L800B74B4
/* A7CA8 800B74A8 0102C634 */   ori       $a2, $a2, 0x201
/* A7CAC 800B74AC 0001063C */  lui        $a2, 0x100
/* A7CB0 800B74B0 0002C634 */  ori        $a2, $a2, 0x200
.L800B74B4:
/* A7CB4 800B74B4 0F80023C */  lui        $v0, %hi(D_800EC7FC)
/* A7CB8 800B74B8 FCC7428C */  lw         $v0, %lo(D_800EC7FC)($v0)
/* A7CBC 800B74BC 00000000 */  nop
/* A7CC0 800B74C0 000046AC */  sw         $a2, ($v0)
/* A7CC4 800B74C4 21100000 */  addu       $v0, $zero, $zero
