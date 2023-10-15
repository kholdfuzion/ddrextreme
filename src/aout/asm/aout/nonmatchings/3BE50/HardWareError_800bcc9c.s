.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel HardWareError_800bcc9c
/* AD49C 800BCC9C E8FEBD27 */  addiu      $sp, $sp, -0x118
/* AD4A0 800BCCA0 1001BFAF */  sw         $ra, 0x110($sp)
/* AD4A4 800BCCA4 0C01B5AF */  sw         $s5, 0x10c($sp)
/* AD4A8 800BCCA8 0801B4AF */  sw         $s4, 0x108($sp)
/* AD4AC 800BCCAC 0401B3AF */  sw         $s3, 0x104($sp)
/* AD4B0 800BCCB0 0001B2AF */  sw         $s2, 0x100($sp)
/* AD4B4 800BCCB4 FC00B1AF */  sw         $s1, 0xfc($sp)
/* AD4B8 800BCCB8 F800B0AF */  sw         $s0, 0xf8($sp)
/* AD4BC 800BCCBC 21908000 */  addu       $s2, $a0, $zero
/* AD4C0 800BCCC0 2198A000 */  addu       $s3, $a1, $zero
/* AD4C4 800BCCC4 2188C000 */  addu       $s1, $a2, $zero
/* AD4C8 800BCCC8 2801B58F */  lw         $s5, 0x128($sp)
/* AD4CC 800BCCCC 7CAA000C */  jal        vsync_8002a9f0
/* AD4D0 800BCCD0 21A0E000 */   addu      $s4, $a3, $zero
/* AD4D4 800BCCD4 2DF4020C */  jal        FUN_800bd0b4
/* AD4D8 800BCCD8 1E80103C */   lui       $s0, 0x801e
/* AD4DC 800BCCDC 77F4020C */  jal        FUN_800bd1dc
/* AD4E0 800BCCE0 00000000 */   nop
/* AD4E4 800BCCE4 1E80033C */  lui        $v1, %hi(D_801E17A0)
/* AD4E8 800BCCE8 0F000224 */  addiu      $v0, $zero, 0xf
/* AD4EC 800BCCEC A01762AC */  sw         $v0, %lo(D_801E17A0)($v1)
/* AD4F0 800BCCF0 D4270426 */  addiu      $a0, $s0, 0x27d4
/* AD4F4 800BCCF4 E161000C */  jal        ClearOTag
/* AD4F8 800BCCF8 00010524 */   addiu     $a1, $zero, 0x100
/* AD4FC 800BCCFC 1E80033C */  lui        $v1, %hi(D_801E17A8)
/* AD500 800BCD00 A8176324 */  addiu      $v1, $v1, %lo(D_801E17A8)
/* AD504 800BCD04 2810628C */  lw         $v0, 0x1028($v1)
/* AD508 800BCD08 00000000 */  nop
/* AD50C 800BCD0C 80120200 */  sll        $v0, $v0, 0xa
/* AD510 800BCD10 D4271026 */  addiu      $s0, $s0, 0x27d4
/* AD514 800BCD14 21105000 */  addu       $v0, $v0, $s0
/* AD518 800BCD18 19F3020C */  jal        FUN_800bcc64
/* AD51C 800BCD1C 2C1862AC */   sw        $v0, 0x182c($v1)
/* AD520 800BCD20 19F3020C */  jal        FUN_800bcc64
/* AD524 800BCD24 00000000 */   nop
/* AD528 800BCD28 19F3020C */  jal        FUN_800bcc64
/* AD52C 800BCD2C 00000000 */   nop
/* AD530 800BCD30 D6F2020C */  jal        FUN_800bcb58
/* AD534 800BCD34 00000000 */   nop
/* AD538 800BCD38 03002012 */  beqz       $s1, .L800BCD48
/* AD53C 800BCD3C 0180023C */   lui       $v0, %hi(D_800175E4)
/* AD540 800BCD40 54F30208 */  j          .L800BCD50
/* AD544 800BCD44 E4754724 */   addiu     $a3, $v0, %lo(D_800175E4)
.L800BCD48:
/* AD548 800BCD48 0180023C */  lui        $v0, %hi(D_800175E8)
/* AD54C 800BCD4C E8754724 */  addiu      $a3, $v0, %lo(D_800175E8)
.L800BCD50:
/* AD550 800BCD50 1000A427 */  addiu      $a0, $sp, 0x10
/* AD554 800BCD54 0180053C */  lui        $a1, %hi(D_800175C4)
/* AD558 800BCD58 C475A524 */  addiu      $a1, $a1, %lo(D_800175C4)
/* AD55C 800BCD5C 8E81000C */  jal        sprintf
/* AD560 800BCD60 21306002 */   addu      $a2, $s3, $zero
/* AD564 800BCD64 7E81000C */  jal        strlen
/* AD568 800BCD68 21204002 */   addu      $a0, $s2, $zero
/* AD56C 800BCD6C 19004228 */  slti       $v0, $v0, 0x19
/* AD570 800BCD70 04004010 */  beqz       $v0, .L800BCD84
/* AD574 800BCD74 3D00A427 */   addiu     $a0, $sp, 0x3d
/* AD578 800BCD78 0180053C */  lui        $a1, %hi(D_800175EC)
/* AD57C 800BCD7C 70F30208 */  j          .L800BCDC0
/* AD580 800BCD80 EC75A524 */   addiu     $a1, $a1, %lo(D_800175EC)
.L800BCD84:
/* AD584 800BCD84 7E81000C */  jal        strlen
/* AD588 800BCD88 21204002 */   addu      $a0, $s2, $zero
/* AD58C 800BCD8C 28001024 */  addiu      $s0, $zero, 0x28
/* AD590 800BCD90 23800202 */  subu       $s0, $s0, $v0
/* AD594 800BCD94 C2171000 */  srl        $v0, $s0, 0x1f
/* AD598 800BCD98 21800202 */  addu       $s0, $s0, $v0
/* AD59C 800BCD9C 43801000 */  sra        $s0, $s0, 1
/* AD5A0 800BCDA0 3D00A427 */  addiu      $a0, $sp, 0x3d
/* AD5A4 800BCDA4 0180053C */  lui        $a1, %hi(D_800175F8)
/* AD5A8 800BCDA8 8E81000C */  jal        sprintf
/* AD5AC 800BCDAC F875A524 */   addiu     $a1, $a1, %lo(D_800175F8)
/* AD5B0 800BCDB0 21801D02 */  addu       $s0, $s0, $sp
/* AD5B4 800BCDB4 3D000426 */  addiu      $a0, $s0, 0x3d
/* AD5B8 800BCDB8 0180053C */  lui        $a1, %hi(D_80017604)
/* AD5BC 800BCDBC 0476A524 */  addiu      $a1, $a1, %lo(D_80017604)
.L800BCDC0:
/* AD5C0 800BCDC0 8E81000C */  jal        sprintf
/* AD5C4 800BCDC4 21304002 */   addu      $a2, $s2, $zero
/* AD5C8 800BCDC8 6A00A427 */  addiu      $a0, $sp, 0x6a
/* AD5CC 800BCDCC 0180053C */  lui        $a1, %hi(D_80017608)
/* AD5D0 800BCDD0 8E81000C */  jal        sprintf
/* AD5D4 800BCDD4 0876A524 */   addiu     $a1, $a1, %lo(D_80017608)
/* AD5D8 800BCDD8 03008106 */  bgez       $s4, .L800BCDE8
/* AD5DC 800BCDDC 9700B127 */   addiu     $s1, $sp, 0x97
/* AD5E0 800BCDE0 1400A006 */  bltz       $s5, .L800BCE34
/* AD5E4 800BCDE4 00000000 */   nop
.L800BCDE8:
/* AD5E8 800BCDE8 21202002 */  addu       $a0, $s1, $zero
/* AD5EC 800BCDEC 0180053C */  lui        $a1, %hi(D_80017628)
/* AD5F0 800BCDF0 2876A524 */  addiu      $a1, $a1, %lo(D_80017628)
/* AD5F4 800BCDF4 8E81000C */  jal        sprintf
/* AD5F8 800BCDF8 21308002 */   addu      $a2, $s4, $zero
/* AD5FC 800BCDFC C400B027 */  addiu      $s0, $sp, 0xc4
/* AD600 800BCE00 21200002 */  addu       $a0, $s0, $zero
/* AD604 800BCE04 0180053C */  lui        $a1, %hi(D_8001763C)
/* AD608 800BCE08 3C76A524 */  addiu      $a1, $a1, %lo(D_8001763C)
/* AD60C 800BCE0C 8E81000C */  jal        sprintf
/* AD610 800BCE10 2130A002 */   addu      $a2, $s5, $zero
/* AD614 800BCE14 1E80043C */  lui        $a0, %hi(D_801E1A94)
/* AD618 800BCE18 941A8424 */  addiu      $a0, $a0, %lo(D_801E1A94)
/* AD61C 800BCE1C B0F3020C */  jal        strcat
/* AD620 800BCE20 21282002 */   addu      $a1, $s1, $zero
/* AD624 800BCE24 1E80043C */  lui        $a0, %hi(D_801E1ABC)
/* AD628 800BCE28 BC1A8424 */  addiu      $a0, $a0, %lo(D_801E1ABC)
/* AD62C 800BCE2C B0F3020C */  jal        strcat
/* AD630 800BCE30 21280002 */   addu      $a1, $s0, $zero
.L800BCE34:
/* AD634 800BCE34 1E80043C */  lui        $a0, %hi(D_801E19F4)
/* AD638 800BCE38 F4198424 */  addiu      $a0, $a0, %lo(D_801E19F4)
/* AD63C 800BCE3C B0F3020C */  jal        strcat
/* AD640 800BCE40 1000A527 */   addiu     $a1, $sp, 0x10
/* AD644 800BCE44 1E80043C */  lui        $a0, %hi(D_801E1A1C)
/* AD648 800BCE48 1C1A8424 */  addiu      $a0, $a0, %lo(D_801E1A1C)
/* AD64C 800BCE4C B0F3020C */  jal        strcat
/* AD650 800BCE50 3D00A527 */   addiu     $a1, $sp, 0x3d
/* AD654 800BCE54 1E80043C */  lui        $a0, %hi(D_801E1A44)
/* AD658 800BCE58 441A8424 */  addiu      $a0, $a0, %lo(D_801E1A44)
/* AD65C 800BCE5C B0F3020C */  jal        strcat
/* AD660 800BCE60 6A00A527 */   addiu     $a1, $sp, 0x6a
/* AD664 800BCE64 7CAA000C */  jal        vsync_8002a9f0
/* AD668 800BCE68 00000000 */   nop
/* AD66C 800BCE6C 1E80043C */  lui        $a0, %hi(D_801E17A8)
/* AD670 800BCE70 A8178424 */  addiu      $a0, $a0, %lo(D_801E17A8)
/* AD674 800BCE74 1E80023C */  lui        $v0, %hi(D_801E17A0)
/* AD678 800BCE78 A017438C */  lw         $v1, %lo(D_801E17A0)($v0)
/* AD67C 800BCE7C 00000000 */  nop
/* AD680 800BCE80 80100300 */  sll        $v0, $v1, 2
/* AD684 800BCE84 21104300 */  addu       $v0, $v0, $v1
/* AD688 800BCE88 C0100200 */  sll        $v0, $v0, 3
/* AD68C 800BCE8C 21104400 */  addu       $v0, $v0, $a0
/* AD690 800BCE90 19F3020C */  jal        FUN_800bcc64
/* AD694 800BCE94 E40040A0 */   sb        $zero, 0xe4($v0)
/* AD698 800BCE98 19F3020C */  jal        FUN_800bcc64
/* AD69C 800BCE9C 00000000 */   nop
/* AD6A0 800BCEA0 19F3020C */  jal        FUN_800bcc64
/* AD6A4 800BCEA4 00000000 */   nop
.L800BCEA8:
/* AD6A8 800BCEA8 CD6B000C */  jal        VSync
/* AD6AC 800BCEAC 21200000 */   addu      $a0, $zero, $zero
/* AD6B0 800BCEB0 7CAA000C */  jal        vsync_8002a9f0
/* AD6B4 800BCEB4 00000000 */   nop
/* AD6B8 800BCEB8 AAF30208 */  j          .L800BCEA8
/* AD6BC 800BCEBC 00000000 */   nop
