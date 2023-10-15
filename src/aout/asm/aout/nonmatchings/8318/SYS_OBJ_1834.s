.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1834
/* A018 80019818 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* A01C 8001981C 1000B0AF */  sw         $s0, 0x10($sp)
/* A020 80019820 2180A000 */  addu       $s0, $a1, $zero
/* A024 80019824 0D80053C */  lui        $a1, %hi(D_800D2CBC)
/* A028 80019828 BC2CA58C */  lw         $a1, %lo(D_800D2CBC)($a1)
/* A02C 8001982C 1800BFAF */  sw         $ra, 0x18($sp)
/* A030 80019830 1400B1AF */  sw         $s1, 0x14($sp)
/* A034 80019834 0000A28C */  lw         $v0, ($a1)
/* A038 80019838 0008033C */  lui        $v1, 0x800
/* A03C 8001983C 25104300 */  or         $v0, $v0, $v1
/* A040 80019840 0000A2AC */  sw         $v0, ($a1)
/* A044 80019844 0D80023C */  lui        $v0, %hi(D_800D2CB8)
/* A048 80019848 B82C428C */  lw         $v0, %lo(D_800D2CB8)($v0)
/* A04C 8001984C 00000000 */  nop
/* A050 80019850 000040AC */  sw         $zero, ($v0)
/* A054 80019854 80101000 */  sll        $v0, $s0, 2
/* A058 80019858 FCFF4224 */  addiu      $v0, $v0, -4
/* A05C 8001985C 0D80033C */  lui        $v1, %hi(D_800D2CB0)
/* A060 80019860 B02C638C */  lw         $v1, %lo(D_800D2CB0)($v1)
/* A064 80019864 21208200 */  addu       $a0, $a0, $v0
/* A068 80019868 000064AC */  sw         $a0, ($v1)
/* A06C 8001986C 0D80023C */  lui        $v0, %hi(D_800D2CB4)
/* A070 80019870 B42C428C */  lw         $v0, %lo(D_800D2CB4)($v0)
/* A074 80019874 0011033C */  lui        $v1, 0x1100
/* A078 80019878 000050AC */  sw         $s0, ($v0)
/* A07C 8001987C 0D80023C */  lui        $v0, %hi(D_800D2CB8)
/* A080 80019880 B82C428C */  lw         $v0, %lo(D_800D2CB8)($v0)
/* A084 80019884 02006334 */  ori        $v1, $v1, 2
/* A088 80019888 196A000C */  jal        SYS_OBJ_2880
/* A08C 8001988C 000043AC */   sw        $v1, ($v0)
/* A090 80019890 0D80023C */  lui        $v0, %hi(D_800D2CB8)
/* A094 80019894 B82C428C */  lw         $v0, %lo(D_800D2CB8)($v0)
/* A098 80019898 00000000 */  nop
/* A09C 8001989C 0000428C */  lw         $v0, ($v0)
/* A0A0 800198A0 0001033C */  lui        $v1, 0x100
/* A0A4 800198A4 24104300 */  and        $v0, $v0, $v1
/* A0A8 800198A8 0E004010 */  beqz       $v0, .L800198E4
/* A0AC 800198AC 21100002 */   addu      $v0, $s0, $zero
/* A0B0 800198B0 0001113C */  lui        $s1, 0x100
.L800198B4:
/* A0B4 800198B4 266A000C */  jal        SYS_OBJ_28B4
/* A0B8 800198B8 00000000 */   nop
/* A0BC 800198BC 09004014 */  bnez       $v0, .L800198E4
/* A0C0 800198C0 FFFF0224 */   addiu     $v0, $zero, -1
/* A0C4 800198C4 0D80023C */  lui        $v0, %hi(D_800D2CB8)
/* A0C8 800198C8 B82C428C */  lw         $v0, %lo(D_800D2CB8)($v0)
/* A0CC 800198CC 00000000 */  nop
/* A0D0 800198D0 0000428C */  lw         $v0, ($v0)
/* A0D4 800198D4 00000000 */  nop
/* A0D8 800198D8 24105100 */  and        $v0, $v0, $s1
/* A0DC 800198DC F5FF4014 */  bnez       $v0, .L800198B4
/* A0E0 800198E0 21100002 */   addu      $v0, $s0, $zero
.L800198E4:
/* A0E4 800198E4 1800BF8F */  lw         $ra, 0x18($sp)
/* A0E8 800198E8 1400B18F */  lw         $s1, 0x14($sp)
/* A0EC 800198EC 1000B08F */  lw         $s0, 0x10($sp)
/* A0F0 800198F0 0800E003 */  jr         $ra
/* A0F4 800198F4 2000BD27 */   addiu     $sp, $sp, 0x20
