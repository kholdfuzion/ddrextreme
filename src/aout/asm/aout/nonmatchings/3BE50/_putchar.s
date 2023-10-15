.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _putchar
/* AC30C 800BBB0C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC310 800BBB10 1000B0AF */  sw         $s0, 0x10($sp)
/* AC314 800BBB14 21808000 */  addu       $s0, $a0, $zero
/* AC318 800BBB18 00260400 */  sll        $a0, $a0, 0x18
/* AC31C 800BBB1C 03260400 */  sra        $a0, $a0, 0x18
/* AC320 800BBB20 09000224 */  addiu      $v0, $zero, 9
/* AC324 800BBB24 09008210 */  beq        $a0, $v0, PUTCHAR_OBJ_40
/* AC328 800BBB28 1400BFAF */   sw        $ra, 0x14($sp)
/* AC32C 800BBB2C 0A000224 */  addiu      $v0, $zero, 0xa
/* AC330 800BBB30 10008214 */  bne        $a0, $v0, .L800BBB74
/* AC334 800BBB34 FF000232 */   andi      $v0, $s0, 0xff
/* AC338 800BBB38 C3EE020C */  jal        _putchar
/* AC33C 800BBB3C 0D000424 */   addiu     $a0, $zero, 0xd
/* AC340 800BBB40 0F80013C */  lui        $at, %hi(D_800ED08C)
/* AC344 800BBB44 EAEE0208 */  j          PUTCHAR_OBJ_9C
/* AC348 800BBB48 8CD020AC */   sw        $zero, %lo(D_800ED08C)($at)
