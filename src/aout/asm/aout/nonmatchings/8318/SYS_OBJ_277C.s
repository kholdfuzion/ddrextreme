.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_277C
/* AF60 8001A760 0D80033C */  lui        $v1, %hi(D_800D2CC0)
/* AF64 8001A764 C02C638C */  lw         $v1, %lo(D_800D2CC0)($v1)
/* AF68 8001A768 0D80023C */  lui        $v0, %hi(D_800D2CC4)
/* AF6C 8001A76C C42C428C */  lw         $v0, %lo(D_800D2CC4)($v0)
/* AF70 8001A770 00000000 */  nop
/* AF74 8001A774 07006210 */  beq        $v1, $v0, .L8001A794
/* AF78 8001A778 00000000 */   nop
/* AF7C 8001A77C D2690008 */  j          SYS_OBJ_2764
/* AF80 8001A780 00000000 */   nop
.L8001A784:
/* AF84 8001A784 266A000C */  jal        SYS_OBJ_28B4
/* AF88 8001A788 00000000 */   nop
/* AF8C 8001A78C 31004014 */  bnez       $v0, SYS_OBJ_2870
/* AF90 8001A790 FFFF0224 */   addiu     $v0, $zero, -1
.L8001A794:
/* AF94 8001A794 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* AF98 8001A798 AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* AF9C 8001A79C 00000000 */  nop
/* AFA0 8001A7A0 0000428C */  lw         $v0, ($v0)
/* AFA4 8001A7A4 0001033C */  lui        $v1, 0x100
/* AFA8 8001A7A8 24104300 */  and        $v0, $v0, $v1
/* AFAC 8001A7AC F5FF4014 */  bnez       $v0, .L8001A784
/* AFB0 8001A7B0 00000000 */   nop
/* AFB4 8001A7B4 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* AFB8 8001A7B8 A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* AFBC 8001A7BC 00000000 */  nop
/* AFC0 8001A7C0 0000428C */  lw         $v0, ($v0)
/* AFC4 8001A7C4 0004033C */  lui        $v1, 0x400
/* AFC8 8001A7C8 24104300 */  and        $v0, $v0, $v1
/* AFCC 8001A7CC EDFF4010 */  beqz       $v0, .L8001A784
/* AFD0 8001A7D0 21100000 */   addu      $v0, $zero, $zero
/* AFD4 8001A7D4 156A0008 */  j          SYS_OBJ_2870
/* AFD8 8001A7D8 00000000 */   nop
.L8001A7DC:
/* AFDC 8001A7DC 0D80023C */  lui        $v0, %hi(D_800D2CC0)
/* AFE0 8001A7E0 C02C428C */  lw         $v0, %lo(D_800D2CC0)($v0)
/* AFE4 8001A7E4 0D80033C */  lui        $v1, %hi(D_800D2CC4)
/* AFE8 8001A7E8 C42C638C */  lw         $v1, %lo(D_800D2CC4)($v1)
/* AFEC 8001A7EC 00000000 */  nop
/* AFF0 8001A7F0 23104300 */  subu       $v0, $v0, $v1
/* AFF4 8001A7F4 3F005030 */  andi       $s0, $v0, 0x3f
/* AFF8 8001A7F8 03000012 */  beqz       $s0, .L8001A808
/* AFFC 8001A7FC 00000000 */   nop
/* B000 8001A800 E368000C */  jal        SYS_OBJ_23A8
/* B004 8001A804 00000000 */   nop
.L8001A808:
/* B008 8001A808 0D80023C */  lui        $v0, %hi(D_800D2CAC)
/* B00C 8001A80C AC2C428C */  lw         $v0, %lo(D_800D2CAC)($v0)
/* B010 8001A810 00000000 */  nop
/* B014 8001A814 0000428C */  lw         $v0, ($v0)
/* B018 8001A818 0001033C */  lui        $v1, 0x100
/* B01C 8001A81C 24104300 */  and        $v0, $v0, $v1
/* B020 8001A820 09004014 */  bnez       $v0, .L8001A848
/* B024 8001A824 00000000 */   nop
/* B028 8001A828 0D80023C */  lui        $v0, %hi(D_800D2CA0)
/* B02C 8001A82C A02C428C */  lw         $v0, %lo(D_800D2CA0)($v0)
/* B030 8001A830 00000000 */  nop
/* B034 8001A834 0000428C */  lw         $v0, ($v0)
/* B038 8001A838 0004033C */  lui        $v1, 0x400
/* B03C 8001A83C 24104300 */  and        $v0, $v0, $v1
/* B040 8001A840 04004014 */  bnez       $v0, SYS_OBJ_2870
/* B044 8001A844 21100002 */   addu      $v0, $s0, $zero
.L8001A848:
/* B048 8001A848 02000016 */  bnez       $s0, SYS_OBJ_2870
/* B04C 8001A84C 21100002 */   addu      $v0, $s0, $zero
/* B050 8001A850 01000224 */  addiu      $v0, $zero, 1
