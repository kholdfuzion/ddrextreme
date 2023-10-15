.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bcfe8
/* AD7E8 800BCFE8 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* AD7EC 800BCFEC 4400BFAF */  sw         $ra, 0x44($sp)
/* AD7F0 800BCFF0 4000B0AF */  sw         $s0, 0x40($sp)
/* AD7F4 800BCFF4 21200000 */  addu       $a0, $zero, $zero
/* AD7F8 800BCFF8 1E80023C */  lui        $v0, %hi(D_801E17A8)
/* AD7FC 800BCFFC A8174624 */  addiu      $a2, $v0, %lo(D_801E17A8)
/* AD800 800BD000 80010524 */  addiu      $a1, $zero, 0x180
/* AD804 800BD004 80100400 */  sll        $v0, $a0, 2
.L800BD008:
/* AD808 800BD008 21104600 */  addu       $v0, $v0, $a2
/* AD80C 800BD00C 00190400 */  sll        $v1, $a0, 4
/* AD810 800BD010 00036324 */  addiu      $v1, $v1, 0x300
/* AD814 800BD014 1A0C43A4 */  sh         $v1, 0xc1a($v0)
/* AD818 800BD018 180C45A4 */  sh         $a1, 0xc18($v0)
/* AD81C 800BD01C 01008424 */  addiu      $a0, $a0, 1
/* AD820 800BD020 05008228 */  slti       $v0, $a0, 5
/* AD824 800BD024 F8FF4014 */  bnez       $v0, .L800BD008
/* AD828 800BD028 80100400 */   sll       $v0, $a0, 2
/* AD82C 800BD02C 00031024 */  addiu      $s0, $zero, 0x300
/* AD830 800BD030 1000B0A7 */  sh         $s0, 0x10($sp)
/* AD834 800BD034 80010224 */  addiu      $v0, $zero, 0x180
/* AD838 800BD038 1200A2A7 */  sh         $v0, 0x12($sp)
/* AD83C 800BD03C 50000224 */  addiu      $v0, $zero, 0x50
/* AD840 800BD040 1400A2A7 */  sh         $v0, 0x14($sp)
/* AD844 800BD044 01000224 */  addiu      $v0, $zero, 1
/* AD848 800BD048 1600A2A7 */  sh         $v0, 0x16($sp)
/* AD84C 800BD04C 1000A427 */  addiu      $a0, $sp, 0x10
/* AD850 800BD050 0F80053C */  lui        $a1, %hi(D_800ED0BC)
/* AD854 800BD054 8361000C */  jal        LoadImage
/* AD858 800BD058 BCD0A524 */   addiu     $a1, $a1, %lo(D_800ED0BC)
/* AD85C 800BD05C 7CAA000C */  jal        vsync_8002a9f0
/* AD860 800BD060 00000000 */   nop
/* AD864 800BD064 0F80043C */  lui        $a0, %hi(D_800ED1C0)
/* AD868 800BD068 C0D18424 */  addiu      $a0, $a0, %lo(D_800ED1C0)
/* AD86C 800BD06C 197C000C */  jal        GsGetTimInfo
/* AD870 800BD070 2000A527 */   addiu     $a1, $sp, 0x20
/* AD874 800BD074 1800B0A7 */  sh         $s0, 0x18($sp)
/* AD878 800BD078 00010224 */  addiu      $v0, $zero, 0x100
/* AD87C 800BD07C 1A00A2A7 */  sh         $v0, 0x1a($sp)
/* AD880 800BD080 20000224 */  addiu      $v0, $zero, 0x20
/* AD884 800BD084 1C00A2A7 */  sh         $v0, 0x1c($sp)
/* AD888 800BD088 80000224 */  addiu      $v0, $zero, 0x80
/* AD88C 800BD08C 1E00A2A7 */  sh         $v0, 0x1e($sp)
/* AD890 800BD090 2C00A58F */  lw         $a1, 0x2c($sp)
/* AD894 800BD094 8361000C */  jal        LoadImage
/* AD898 800BD098 1800A427 */   addiu     $a0, $sp, 0x18
/* AD89C 800BD09C 7CAA000C */  jal        vsync_8002a9f0
/* AD8A0 800BD0A0 00000000 */   nop
/* AD8A4 800BD0A4 4400BF8F */  lw         $ra, 0x44($sp)
/* AD8A8 800BD0A8 4000B08F */  lw         $s0, 0x40($sp)
/* AD8AC 800BD0AC 0800E003 */  jr         $ra
/* AD8B0 800BD0B0 4800BD27 */   addiu     $sp, $sp, 0x48
