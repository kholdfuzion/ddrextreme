.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b2d68
/* A3568 800B2D68 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A356C 800B2D6C 1E80023C */  lui        $v0, %hi(D_801E0766)
/* A3570 800B2D70 66074390 */  lbu        $v1, %lo(D_801E0766)($v0)
/* A3574 800B2D74 FF008430 */  andi       $a0, $a0, 0xff
/* A3578 800B2D78 04006010 */  beqz       $v1, .L800B2D8C
/* A357C 800B2D7C 1000BFAF */   sw        $ra, 0x10($sp)
/* A3580 800B2D80 00240400 */  sll        $a0, $a0, 0x10
/* A3584 800B2D84 2BDA020C */  jal        FUN_800b68ac
/* A3588 800B2D88 00808434 */   ori       $a0, $a0, 0x8000
.L800B2D8C:
/* A358C 800B2D8C 1000BF8F */  lw         $ra, 0x10($sp)
/* A3590 800B2D90 00000000 */  nop
/* A3594 800B2D94 0800E003 */  jr         $ra
/* A3598 800B2D98 1800BD27 */   addiu     $sp, $sp, 0x18
