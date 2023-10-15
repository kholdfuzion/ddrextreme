.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel putchar
/* AC444 800BBC44 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC448 800BBC48 1000B0AF */  sw         $s0, 0x10($sp)
/* AC44C 800BBC4C 21808000 */  addu       $s0, $a0, $zero
/* AC450 800BBC50 00260400 */  sll        $a0, $a0, 0x18
/* AC454 800BBC54 03260400 */  sra        $a0, $a0, 0x18
/* AC458 800BBC58 09000224 */  addiu      $v0, $zero, 9
/* AC45C 800BBC5C 09008210 */  beq        $a0, $v0, PUTCHAR_OBJ_178
/* AC460 800BBC60 1400BFAF */   sw        $ra, 0x14($sp)
/* AC464 800BBC64 0A000224 */  addiu      $v0, $zero, 0xa
/* AC468 800BBC68 10008214 */  bne        $a0, $v0, .L800BBCAC
/* AC46C 800BBC6C FF000232 */   andi      $v0, $s0, 0xff
/* AC470 800BBC70 C3EE020C */  jal        _putchar
/* AC474 800BBC74 0D000424 */   addiu     $a0, $zero, 0xd
/* AC478 800BBC78 0F80013C */  lui        $at, %hi(D_800ED08C)
/* AC47C 800BBC7C 38EF0208 */  j          PUTCHAR_OBJ_1D4
/* AC480 800BBC80 8CD020AC */   sw        $zero, %lo(D_800ED08C)($at)
