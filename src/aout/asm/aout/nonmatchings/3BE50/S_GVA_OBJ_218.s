.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_218
/* AA46C 800B9C6C FFFFA330 */  andi       $v1, $a1, 0xffff
/* AA470 800B9C70 0040622C */  sltiu      $v0, $v1, 0x4000
/* AA474 800B9C74 04004014 */  bnez       $v0, .L800B9C88
/* AA478 800B9C78 00800234 */   ori       $v0, $zero, 0x8000
/* AA47C 800B9C7C 23106200 */  subu       $v0, $v1, $v0
/* AA480 800B9C80 23E70208 */  j          S_GVA_OBJ_238
/* AA484 800B9C84 080002A6 */   sh        $v0, 8($s0)
.L800B9C88:
/* AA488 800B9C88 080005A6 */  sh         $a1, 8($s0)
