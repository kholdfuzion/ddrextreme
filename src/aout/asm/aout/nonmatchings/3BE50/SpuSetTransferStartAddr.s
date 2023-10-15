.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetTransferStartAddr
/* A94E4 800B8CE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A94E8 800B8CE8 21288000 */  addu       $a1, $a0, $zero
/* A94EC 800B8CEC 0700023C */  lui        $v0, 7
/* A94F0 800B8CF0 E8EF4234 */  ori        $v0, $v0, 0xefe8
/* A94F4 800B8CF4 F0EFA324 */  addiu      $v1, $a1, -0x1010
/* A94F8 800B8CF8 2B104300 */  sltu       $v0, $v0, $v1
/* A94FC 800B8CFC 0B004014 */  bnez       $v0, .L800B8D2C
/* A9500 800B8D00 1000BFAF */   sw        $ra, 0x10($sp)
/* A9504 800B8D04 81DD020C */  jal        _spu_FsetRXXa
/* A9508 800B8D08 FFFF0424 */   addiu     $a0, $zero, -1
/* A950C 800B8D0C 0F80013C */  lui        $at, %hi(D_800EC808)
/* A9510 800B8D10 08C822A4 */  sh         $v0, %lo(D_800EC808)($at)
/* A9514 800B8D14 0F80033C */  lui        $v1, %hi(D_800EC808)
/* A9518 800B8D18 08C86394 */  lhu        $v1, %lo(D_800EC808)($v1)
/* A951C 800B8D1C 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A9520 800B8D20 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A9524 800B8D24 4CE30208 */  j          S_STSA_OBJ_4C
/* A9528 800B8D28 04104300 */   sllv      $v0, $v1, $v0
.L800B8D2C:
/* A952C 800B8D2C 21100000 */  addu       $v0, $zero, $zero
