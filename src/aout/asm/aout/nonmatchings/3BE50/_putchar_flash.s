.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _putchar_flash
/* AC408 800BBC08 0F80063C */  lui        $a2, %hi(D_800ED090)
/* AC40C 800BBC0C 90D0C68C */  lw         $a2, %lo(D_800ED090)($a2)
/* AC410 800BBC10 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* AC414 800BBC14 0700C018 */  blez       $a2, .L800BBC34
/* AC418 800BBC18 1000BFAF */   sw        $ra, 0x10($sp)
/* AC41C 800BBC1C 1E80053C */  lui        $a1, %hi(D_801E1778)
/* AC420 800BBC20 7817A524 */  addiu      $a1, $a1, %lo(D_801E1778)
/* AC424 800BBC24 5BEF020C */  jal        write
/* AC428 800BBC28 01000424 */   addiu     $a0, $zero, 1
/* AC42C 800BBC2C 0F80013C */  lui        $at, %hi(D_800ED090)
/* AC430 800BBC30 90D020AC */  sw         $zero, %lo(D_800ED090)($at)
.L800BBC34:
/* AC434 800BBC34 1000BF8F */  lw         $ra, 0x10($sp)
/* AC438 800BBC38 1800BD27 */  addiu      $sp, $sp, 0x18
/* AC43C 800BBC3C 0800E003 */  jr         $ra
/* AC440 800BBC40 00000000 */   nop
