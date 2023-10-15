.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b089c
/* A109C 800B089C 1D80023C */  lui        $v0, %hi(D_801D0052)
/* A10A0 800B08A0 52004380 */  lb         $v1, %lo(D_801D0052)($v0)
/* A10A4 800B08A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A10A8 800B08A8 0B006014 */  bnez       $v1, .L800B08D8
/* A10AC 800B08AC 1000BFAF */   sw        $ra, 0x10($sp)
/* A10B0 800B08B0 FFC5020C */  jal        FUN_800b17fc
/* A10B4 800B08B4 00000000 */   nop
/* A10B8 800B08B8 746F033C */  lui        $v1, 0x6f74
/* A10BC 800B08BC 27AE6334 */  ori        $v1, $v1, 0xae27
/* A10C0 800B08C0 18004300 */  mult       $v0, $v1
/* A10C4 800B08C4 C3170200 */  sra        $v0, $v0, 0x1f
/* A10C8 800B08C8 10180000 */  mfhi       $v1
/* A10CC 800B08CC C3190300 */  sra        $v1, $v1, 7
/* A10D0 800B08D0 37C20208 */  j          .L800B08DC
/* A10D4 800B08D4 23106200 */   subu      $v0, $v1, $v0
.L800B08D8:
/* A10D8 800B08D8 21100000 */  addu       $v0, $zero, $zero
.L800B08DC:
/* A10DC 800B08DC 1000BF8F */  lw         $ra, 0x10($sp)
/* A10E0 800B08E0 00000000 */  nop
/* A10E4 800B08E4 0800E003 */  jr         $ra
/* A10E8 800B08E8 1800BD27 */   addiu     $sp, $sp, 0x18
