.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c9814
/* BA014 800C9814 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* BA018 800C9818 F0B7428C */  lw         $v0, %lo(D_801FB7F0)($v0)
/* BA01C 800C981C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BA020 800C9820 1000B0AF */  sw         $s0, 0x10($sp)
/* BA024 800C9824 21808000 */  addu       $s0, $a0, $zero
/* BA028 800C9828 22004010 */  beqz       $v0, .L800C98B4
/* BA02C 800C982C 1400BFAF */   sw        $ra, 0x14($sp)
/* BA030 800C9830 1F80043C */  lui        $a0, 0x801f
/* BA034 800C9834 40180200 */  sll        $v1, $v0, 1
/* BA038 800C9838 21186200 */  addu       $v1, $v1, $v0
/* BA03C 800C983C 00110300 */  sll        $v0, $v1, 4
/* BA040 800C9840 23104300 */  subu       $v0, $v0, $v1
/* BA044 800C9844 80100200 */  sll        $v0, $v0, 2
/* BA048 800C9848 C071838C */  lw         $v1, 0x71c0($a0)
/* BA04C 800C984C 4CFF4224 */  addiu      $v0, $v0, -0xb4
/* BA050 800C9850 21186200 */  addu       $v1, $v1, $v0
/* BA054 800C9854 7C00648C */  lw         $a0, 0x7c($v1)
/* BA058 800C9858 00000000 */  nop
/* BA05C 800C985C 000004AE */  sw         $a0, ($s0)
/* BA060 800C9860 7C00628C */  lw         $v0, 0x7c($v1)
/* BA064 800C9864 8000658C */  lw         $a1, 0x80($v1)
/* BA068 800C9868 23104400 */  subu       $v0, $v0, $a0
/* BA06C 800C986C 7C0062AC */  sw         $v0, 0x7c($v1)
/* BA070 800C9870 040005AE */  sw         $a1, 4($s0)
/* BA074 800C9874 8000628C */  lw         $v0, 0x80($v1)
/* BA078 800C9878 8400648C */  lw         $a0, 0x84($v1)
/* BA07C 800C987C 23104500 */  subu       $v0, $v0, $a1
/* BA080 800C9880 800062AC */  sw         $v0, 0x80($v1)
/* BA084 800C9884 080004AE */  sw         $a0, 8($s0)
/* BA088 800C9888 8400628C */  lw         $v0, 0x84($v1)
/* BA08C 800C988C 00000000 */  nop
/* BA090 800C9890 23104400 */  subu       $v0, $v0, $a0
/* BA094 800C9894 840062AC */  sw         $v0, 0x84($v1)
/* BA098 800C9898 10006324 */  addiu      $v1, $v1, 0x10
/* BA09C 800C989C B206030C */  jal        FUN_800c1ac8
/* BA0A0 800C98A0 0C0003AE */   sw        $v1, 0xc($s0)
/* BA0A4 800C98A4 21180000 */  addu       $v1, $zero, $zero
/* BA0A8 800C98A8 0100422C */  sltiu      $v0, $v0, 1
/* BA0AC 800C98AC 35260308 */  j          .L800C98D4
/* BA0B0 800C98B0 100002A2 */   sb        $v0, 0x10($s0)
.L800C98B4:
/* BA0B4 800C98B4 FFFF0324 */  addiu      $v1, $zero, -1
/* BA0B8 800C98B8 0180023C */  lui        $v0, %hi(D_80017944)
/* BA0BC 800C98BC 44794224 */  addiu      $v0, $v0, %lo(D_80017944)
/* BA0C0 800C98C0 000000AE */  sw         $zero, ($s0)
/* BA0C4 800C98C4 040000AE */  sw         $zero, 4($s0)
/* BA0C8 800C98C8 080000AE */  sw         $zero, 8($s0)
/* BA0CC 800C98CC 0C0002AE */  sw         $v0, 0xc($s0)
/* BA0D0 800C98D0 100000A2 */  sb         $zero, 0x10($s0)
.L800C98D4:
/* BA0D4 800C98D4 1400BF8F */  lw         $ra, 0x14($sp)
/* BA0D8 800C98D8 1000B08F */  lw         $s0, 0x10($sp)
/* BA0DC 800C98DC 21106000 */  addu       $v0, $v1, $zero
/* BA0E0 800C98E0 0800E003 */  jr         $ra
/* BA0E4 800C98E4 1800BD27 */   addiu     $sp, $sp, 0x18
