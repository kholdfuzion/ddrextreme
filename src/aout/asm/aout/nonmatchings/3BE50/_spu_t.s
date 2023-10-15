.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_t
/* A7A58 800B7258 0000A4AF */  sw         $a0, ($sp)
/* A7A5C 800B725C 0400A5AF */  sw         $a1, 4($sp)
/* A7A60 800B7260 0800A6AF */  sw         $a2, 8($sp)
/* A7A64 800B7264 0C00A7AF */  sw         $a3, 0xc($sp)
/* A7A68 800B7268 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7A6C 800B726C 1000B0AF */  sw         $s0, 0x10($sp)
/* A7A70 800B7270 1C00B027 */  addiu      $s0, $sp, 0x1c
/* A7A74 800B7274 01000624 */  addiu      $a2, $zero, 1
/* A7A78 800B7278 1400BFAF */  sw         $ra, 0x14($sp)
/* A7A7C 800B727C 19008610 */  beq        $a0, $a2, .L800B72E4
/* A7A80 800B7280 1800A4AF */   sw        $a0, 0x18($sp)
/* A7A84 800B7284 02008228 */  slti       $v0, $a0, 2
/* A7A88 800B7288 05004010 */  beqz       $v0, .L800B72A0
/* A7A8C 800B728C 02000224 */   addiu     $v0, $zero, 2
/* A7A90 800B7290 2F008010 */  beqz       $a0, .L800B7350
/* A7A94 800B7294 21100000 */   addu      $v0, $zero, $zero
/* A7A98 800B7298 32DD0208 */  j          SPU_OBJ_814
/* A7A9C 800B729C 00000000 */   nop
.L800B72A0:
/* A7AA0 800B72A0 05008210 */  beq        $a0, $v0, .L800B72B8
/* A7AA4 800B72A4 03000224 */   addiu     $v0, $zero, 3
/* A7AA8 800B72A8 43008210 */  beq        $a0, $v0, .L800B73B8
/* A7AAC 800B72AC 21100000 */   addu      $v0, $zero, $zero
/* A7AB0 800B72B0 32DD0208 */  j          SPU_OBJ_814
/* A7AB4 800B72B4 00000000 */   nop
.L800B72B8:
/* A7AB8 800B72B8 1C00A48F */  lw         $a0, 0x1c($sp)
/* A7ABC 800B72BC 0F80023C */  lui        $v0, %hi(D_800EC818)
/* A7AC0 800B72C0 18C8428C */  lw         $v0, %lo(D_800EC818)($v0)
/* A7AC4 800B72C4 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A7AC8 800B72C8 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A7ACC 800B72CC 06104400 */  srlv       $v0, $a0, $v0
/* A7AD0 800B72D0 0F80013C */  lui        $at, %hi(D_800EC808)
/* A7AD4 800B72D4 08C822A4 */  sh         $v0, %lo(D_800EC808)($at)
/* A7AD8 800B72D8 A60162A4 */  sh         $v0, 0x1a6($v1)
/* A7ADC 800B72DC 32DD0208 */  j          SPU_OBJ_814
/* A7AE0 800B72E0 21100000 */   addu      $v0, $zero, $zero
.L800B72E4:
/* A7AE4 800B72E4 0F80053C */  lui        $a1, %hi(D_800EC7F0)
/* A7AE8 800B72E8 F0C7A58C */  lw         $a1, %lo(D_800EC7F0)($a1)
/* A7AEC 800B72EC 0F80043C */  lui        $a0, %hi(D_800EC808)
/* A7AF0 800B72F0 08C88494 */  lhu        $a0, %lo(D_800EC808)($a0)
/* A7AF4 800B72F4 A601A294 */  lhu        $v0, 0x1a6($a1)
/* A7AF8 800B72F8 0F80013C */  lui        $at, %hi(D_800EC840)
/* A7AFC 800B72FC 40C820AC */  sw         $zero, %lo(D_800EC840)($at)
/* A7B00 800B7300 09004410 */  beq        $v0, $a0, .L800B7328
/* A7B04 800B7304 21180000 */   addu      $v1, $zero, $zero
/* A7B08 800B7308 01006324 */  addiu      $v1, $v1, 1
.L800B730C:
/* A7B0C 800B730C 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7B10 800B7310 6D004010 */  beqz       $v0, SPU_OBJ_814
/* A7B14 800B7314 FEFF0224 */   addiu     $v0, $zero, -2
/* A7B18 800B7318 A601A294 */  lhu        $v0, 0x1a6($a1)
/* A7B1C 800B731C 00000000 */  nop
/* A7B20 800B7320 FAFF4414 */  bne        $v0, $a0, .L800B730C
/* A7B24 800B7324 01006324 */   addiu     $v1, $v1, 1
.L800B7328:
/* A7B28 800B7328 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A7B2C 800B732C F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A7B30 800B7330 00000000 */  nop
/* A7B34 800B7334 AA016294 */  lhu        $v0, 0x1aa($v1)
/* A7B38 800B7338 00000000 */  nop
/* A7B3C 800B733C CFFF4230 */  andi       $v0, $v0, 0xffcf
/* A7B40 800B7340 20004234 */  ori        $v0, $v0, 0x20
/* A7B44 800B7344 AA0162A4 */  sh         $v0, 0x1aa($v1)
/* A7B48 800B7348 32DD0208 */  j          SPU_OBJ_814
/* A7B4C 800B734C 21100000 */   addu      $v0, $zero, $zero
.L800B7350:
/* A7B50 800B7350 0F80053C */  lui        $a1, %hi(D_800EC7F0)
/* A7B54 800B7354 F0C7A58C */  lw         $a1, %lo(D_800EC7F0)($a1)
/* A7B58 800B7358 0F80043C */  lui        $a0, %hi(D_800EC808)
/* A7B5C 800B735C 08C88494 */  lhu        $a0, %lo(D_800EC808)($a0)
/* A7B60 800B7360 A601A294 */  lhu        $v0, 0x1a6($a1)
/* A7B64 800B7364 0F80013C */  lui        $at, %hi(D_800EC840)
/* A7B68 800B7368 40C826AC */  sw         $a2, %lo(D_800EC840)($at)
/* A7B6C 800B736C 09004410 */  beq        $v0, $a0, .L800B7394
/* A7B70 800B7370 21180000 */   addu      $v1, $zero, $zero
/* A7B74 800B7374 01006324 */  addiu      $v1, $v1, 1
.L800B7378:
/* A7B78 800B7378 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7B7C 800B737C 52004010 */  beqz       $v0, SPU_OBJ_814
/* A7B80 800B7380 FEFF0224 */   addiu     $v0, $zero, -2
/* A7B84 800B7384 A601A294 */  lhu        $v0, 0x1a6($a1)
/* A7B88 800B7388 00000000 */  nop
/* A7B8C 800B738C FAFF4414 */  bne        $v0, $a0, .L800B7378
/* A7B90 800B7390 01006324 */   addiu     $v1, $v1, 1
.L800B7394:
/* A7B94 800B7394 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* A7B98 800B7398 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* A7B9C 800B739C 00000000 */  nop
/* A7BA0 800B73A0 AA016294 */  lhu        $v0, 0x1aa($v1)
/* A7BA4 800B73A4 00000000 */  nop
/* A7BA8 800B73A8 30004234 */  ori        $v0, $v0, 0x30
/* A7BAC 800B73AC AA0162A4 */  sh         $v0, 0x1aa($v1)
/* A7BB0 800B73B0 32DD0208 */  j          SPU_OBJ_814
/* A7BB4 800B73B4 21100000 */   addu      $v0, $zero, $zero
.L800B73B8:
/* A7BB8 800B73B8 0F80023C */  lui        $v0, %hi(D_800EC840)
/* A7BBC 800B73BC 40C8428C */  lw         $v0, %lo(D_800EC840)($v0)
/* A7BC0 800B73C0 00000000 */  nop
/* A7BC4 800B73C4 02004614 */  bne        $v0, $a2, .L800B73D0
/* A7BC8 800B73C8 20000424 */   addiu     $a0, $zero, 0x20
/* A7BCC 800B73CC 30000424 */  addiu      $a0, $zero, 0x30
.L800B73D0:
/* A7BD0 800B73D0 0F80053C */  lui        $a1, %hi(D_800EC7F0)
/* A7BD4 800B73D4 F0C7A58C */  lw         $a1, %lo(D_800EC7F0)($a1)
/* A7BD8 800B73D8 21180000 */  addu       $v1, $zero, $zero
/* A7BDC 800B73DC AA01A294 */  lhu        $v0, 0x1aa($a1)
/* A7BE0 800B73E0 FFFF8430 */  andi       $a0, $a0, 0xffff
/* A7BE4 800B73E4 30004230 */  andi       $v0, $v0, 0x30
/* A7BE8 800B73E8 09004410 */  beq        $v0, $a0, .L800B7410
/* A7BEC 800B73EC 01006324 */   addiu     $v1, $v1, 1
.L800B73F0:
/* A7BF0 800B73F0 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7BF4 800B73F4 34004010 */  beqz       $v0, SPU_OBJ_814
/* A7BF8 800B73F8 FEFF0224 */   addiu     $v0, $zero, -2
/* A7BFC 800B73FC AA01A294 */  lhu        $v0, 0x1aa($a1)
/* A7C00 800B7400 00000000 */  nop
/* A7C04 800B7404 30004230 */  andi       $v0, $v0, 0x30
/* A7C08 800B7408 F9FF4414 */  bne        $v0, $a0, .L800B73F0
/* A7C0C 800B740C 01006324 */   addiu     $v1, $v1, 1
.L800B7410:
/* A7C10 800B7410 0F80033C */  lui        $v1, %hi(D_800EC840)
/* A7C14 800B7414 40C8638C */  lw         $v1, %lo(D_800EC840)($v1)
/* A7C18 800B7418 01000224 */  addiu      $v0, $zero, 1
/* A7C1C 800B741C 05006214 */  bne        $v1, $v0, .L800B7434
/* A7C20 800B7420 00000000 */   nop
/* A7C24 800B7424 D9DD020C */  jal        SPU_OBJ_AB0
/* A7C28 800B7428 04001026 */   addiu     $s0, $s0, 4
/* A7C2C 800B742C 10DD0208 */  j          SPU_OBJ_78C
/* A7C30 800B7430 0001063C */   lui       $a2, 0x100
.L800B7434:
/* A7C34 800B7434 CFDD020C */  jal        SPU_OBJ_A88
/* A7C38 800B7438 04001026 */   addiu     $s0, $s0, 4
/* A7C3C 800B743C 0001063C */  lui        $a2, 0x100
