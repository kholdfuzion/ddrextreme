.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_GVA_OBJ_238
/* AA48C 800B9C8C FFFFE330 */  andi       $v1, $a3, 0xffff
/* AA490 800B9C90 0040622C */  sltiu      $v0, $v1, 0x4000
/* AA494 800B9C94 04004014 */  bnez       $v0, .L800B9CA8
/* AA498 800B9C98 00800234 */   ori       $v0, $zero, 0x8000
/* AA49C 800B9C9C 23106200 */  subu       $v0, $v1, $v0
/* AA4A0 800B9CA0 2BE70208 */  j          S_GVA_OBJ_258
/* AA4A4 800B9CA4 0A0002A6 */   sh        $v0, 0xa($s0)
.L800B9CA8:
/* AA4A8 800B9CA8 0A0007A6 */  sh         $a3, 0xa($s0)
