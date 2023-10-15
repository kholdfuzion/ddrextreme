.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c0424
/* B0C24 800C0424 00240400 */  sll        $a0, $a0, 0x10
/* B0C28 800C0428 FF00A530 */  andi       $a1, $a1, 0xff
/* B0C2C 800C042C 0F80023C */  lui        $v0, %hi(D_800EE280)
/* B0C30 800C0430 80E24224 */  addiu      $v0, $v0, %lo(D_800EE280)
/* B0C34 800C0434 C3230400 */  sra        $a0, $a0, 0xf
/* B0C38 800C0438 21208200 */  addu       $a0, $a0, $v0
/* B0C3C 800C043C 00008390 */  lbu        $v1, ($a0)
/* B0C40 800C0440 02110500 */  srl        $v0, $a1, 4
/* B0C44 800C0444 25104300 */  or         $v0, $v0, $v1
/* B0C48 800C0448 0000C2A0 */  sb         $v0, ($a2)
/* B0C4C 800C044C 00290500 */  sll        $a1, $a1, 4
/* B0C50 800C0450 0800E003 */  jr         $ra
/* B0C54 800C0454 0100C5A0 */   sb        $a1, 1($a2)
