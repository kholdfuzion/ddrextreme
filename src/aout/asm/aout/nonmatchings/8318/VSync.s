.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel VSync
/* B734 8001AF34 0D80023C */  lui        $v0, %hi(D_800D2CF0)
/* B738 8001AF38 F02C428C */  lw         $v0, %lo(D_800D2CF0)($v0)
/* B73C 8001AF3C 0D80053C */  lui        $a1, %hi(D_800D2CF4)
/* B740 8001AF40 F42CA58C */  lw         $a1, %lo(D_800D2CF4)($a1)
/* B744 8001AF44 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* B748 8001AF48 2000BFAF */  sw         $ra, 0x20($sp)
/* B74C 8001AF4C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* B750 8001AF50 1800B0AF */  sw         $s0, 0x18($sp)
/* B754 8001AF54 0000508C */  lw         $s0, ($v0)
.L8001AF58:
/* B758 8001AF58 0000A28C */  lw         $v0, ($a1)
/* B75C 8001AF5C 00000000 */  nop
/* B760 8001AF60 1000A2AF */  sw         $v0, 0x10($sp)
/* B764 8001AF64 1000A38F */  lw         $v1, 0x10($sp)
/* B768 8001AF68 0000A28C */  lw         $v0, ($a1)
/* B76C 8001AF6C 00000000 */  nop
/* B770 8001AF70 F9FF6214 */  bne        $v1, $v0, .L8001AF58
/* B774 8001AF74 00000000 */   nop
/* B778 8001AF78 1000A28F */  lw         $v0, 0x10($sp)
/* B77C 8001AF7C 0D80033C */  lui        $v1, %hi(D_800D2CF8)
/* B780 8001AF80 F82C638C */  lw         $v1, %lo(D_800D2CF8)($v1)
/* B784 8001AF84 00000000 */  nop
/* B788 8001AF88 23104300 */  subu       $v0, $v0, $v1
/* B78C 8001AF8C 05008104 */  bgez       $a0, .L8001AFA4
/* B790 8001AF90 FFFF5130 */   andi      $s1, $v0, 0xffff
/* B794 8001AF94 0D80023C */  lui        $v0, %hi(D_800D3E28)
/* B798 8001AF98 283E428C */  lw         $v0, %lo(D_800D3E28)($v0)
/* B79C 8001AF9C 266C0008 */  j          VSYNC_OBJ_164
/* B7A0 8001AFA0 00000000 */   nop
.L8001AFA4:
/* B7A4 8001AFA4 01000224 */  addiu      $v0, $zero, 1
/* B7A8 8001AFA8 3A008210 */  beq        $a0, $v0, .L8001B094
/* B7AC 8001AFAC 00000000 */   nop
/* B7B0 8001AFB0 07008018 */  blez       $a0, .L8001AFD0
/* B7B4 8001AFB4 00000000 */   nop
/* B7B8 8001AFB8 0D80023C */  lui        $v0, %hi(D_800D2CFC)
/* B7BC 8001AFBC FC2C428C */  lw         $v0, %lo(D_800D2CFC)($v0)
/* B7C0 8001AFC0 00000000 */  nop
/* B7C4 8001AFC4 FFFF4224 */  addiu      $v0, $v0, -1
/* B7C8 8001AFC8 F66B0008 */  j          VSYNC_OBJ_A4
/* B7CC 8001AFCC 21104400 */   addu      $v0, $v0, $a0
.L8001AFD0:
/* B7D0 8001AFD0 0D80023C */  lui        $v0, %hi(D_800D2CFC)
/* B7D4 8001AFD4 FC2C428C */  lw         $v0, %lo(D_800D2CFC)($v0)


glabel VSYNC_OBJ_A4
/* B7D8 8001AFD8 02008018 */  blez       $a0, .L8001AFE4
/* B7DC 8001AFDC 21280000 */   addu      $a1, $zero, $zero
/* B7E0 8001AFE0 FFFF8524 */  addiu      $a1, $a0, -1
.L8001AFE4:
/* B7E4 8001AFE4 2B6C000C */  jal        VSYNC_OBJ_178
/* B7E8 8001AFE8 21204000 */   addu      $a0, $v0, $zero
/* B7EC 8001AFEC 0D80023C */  lui        $v0, %hi(D_800D2CF0)
/* B7F0 8001AFF0 F02C428C */  lw         $v0, %lo(D_800D2CF0)($v0)
/* B7F4 8001AFF4 00000000 */  nop
/* B7F8 8001AFF8 0000508C */  lw         $s0, ($v0)
/* B7FC 8001AFFC 0D80043C */  lui        $a0, %hi(D_800D3E28)
/* B800 8001B000 283E848C */  lw         $a0, %lo(D_800D3E28)($a0)
/* B804 8001B004 01000524 */  addiu      $a1, $zero, 1
/* B808 8001B008 2B6C000C */  jal        VSYNC_OBJ_178
/* B80C 8001B00C 01008424 */   addiu     $a0, $a0, 1
/* B810 8001B010 4000023C */  lui        $v0, 0x40
/* B814 8001B014 24100202 */  and        $v0, $s0, $v0
/* B818 8001B018 0F004010 */  beqz       $v0, .L8001B058
/* B81C 8001B01C 00000000 */   nop
/* B820 8001B020 0D80033C */  lui        $v1, %hi(D_800D2CF0)
/* B824 8001B024 F02C638C */  lw         $v1, %lo(D_800D2CF0)($v1)
/* B828 8001B028 00000000 */  nop
/* B82C 8001B02C 0000628C */  lw         $v0, ($v1)
/* B830 8001B030 00000000 */  nop
/* B834 8001B034 26100202 */  xor        $v0, $s0, $v0
/* B838 8001B038 07004004 */  bltz       $v0, .L8001B058
/* B83C 8001B03C 0080043C */   lui       $a0, 0x8000
.L8001B040:
/* B840 8001B040 0000628C */  lw         $v0, ($v1)
/* B844 8001B044 00000000 */  nop
/* B848 8001B048 26100202 */  xor        $v0, $s0, $v0
/* B84C 8001B04C 24104400 */  and        $v0, $v0, $a0
/* B850 8001B050 FBFF4010 */  beqz       $v0, .L8001B040
/* B854 8001B054 00000000 */   nop
.L8001B058:
/* B858 8001B058 0D80023C */  lui        $v0, %hi(D_800D3E28)
/* B85C 8001B05C 283E428C */  lw         $v0, %lo(D_800D3E28)($v0)
/* B860 8001B060 0D80043C */  lui        $a0, %hi(D_800D2CF4)
/* B864 8001B064 F42C848C */  lw         $a0, %lo(D_800D2CF4)($a0)
/* B868 8001B068 0D80013C */  lui        $at, %hi(D_800D2CFC)
/* B86C 8001B06C FC2C22AC */  sw         $v0, %lo(D_800D2CFC)($at)
.L8001B070:
/* B870 8001B070 0000828C */  lw         $v0, ($a0)
/* B874 8001B074 0D80013C */  lui        $at, %hi(D_800D2CF8)
/* B878 8001B078 F82C22AC */  sw         $v0, %lo(D_800D2CF8)($at)
/* B87C 8001B07C 0D80033C */  lui        $v1, %hi(D_800D2CF8)
/* B880 8001B080 F82C638C */  lw         $v1, %lo(D_800D2CF8)($v1)
/* B884 8001B084 0000828C */  lw         $v0, ($a0)
/* B888 8001B088 00000000 */  nop
/* B88C 8001B08C F8FF6214 */  bne        $v1, $v0, .L8001B070
/* B890 8001B090 00000000 */   nop
.L8001B094:
/* B894 8001B094 21102002 */  addu       $v0, $s1, $zero
