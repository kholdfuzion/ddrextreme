.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9a08
/* BA208 800C9A08 FF00023C */  lui        $v0, 0xff
/* BA20C 800C9A0C FFFF4234 */  ori        $v0, $v0, 0xffff
/* BA210 800C9A10 2428A200 */  and        $a1, $a1, $v0
/* BA214 800C9A14 FFFF063C */  lui        $a2, 0xffff
/* BA218 800C9A18 FF00C634 */  ori        $a2, $a2, 0xff
/* BA21C 800C9A1C FFFFA530 */  andi       $a1, $a1, 0xffff
/* BA220 800C9A20 00008390 */  lbu        $v1, ($a0)
/* BA224 800C9A24 01008290 */  lbu        $v0, 1($a0)
/* BA228 800C9A28 001E0300 */  sll        $v1, $v1, 0x18
/* BA22C 800C9A2C 2528A300 */  or         $a1, $a1, $v1
/* BA230 800C9A30 00140200 */  sll        $v0, $v0, 0x10
/* BA234 800C9A34 2528A200 */  or         $a1, $a1, $v0
/* BA238 800C9A38 2428A600 */  and        $a1, $a1, $a2
/* BA23C 800C9A3C 02008290 */  lbu        $v0, 2($a0)
/* BA240 800C9A40 00FF0324 */  addiu      $v1, $zero, -0x100
/* BA244 800C9A44 00120200 */  sll        $v0, $v0, 8
/* BA248 800C9A48 2528A200 */  or         $a1, $a1, $v0
/* BA24C 800C9A4C 03008290 */  lbu        $v0, 3($a0)
/* BA250 800C9A50 2428A300 */  and        $a1, $a1, $v1
/* BA254 800C9A54 0800E003 */  jr         $ra
/* BA258 800C9A58 2510A200 */   or        $v0, $a1, $v0
