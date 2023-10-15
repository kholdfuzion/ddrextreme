.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800b6954
/* A7154 800B6954 21508000 */  addu       $t2, $a0, $zero
/* A7158 800B6958 FF00AB30 */  andi       $t3, $a1, 0xff
/* A715C 800B695C FF00C630 */  andi       $a2, $a2, 0xff
/* A7160 800B6960 0180033C */  lui        $v1, %hi(D_800172F0)
/* A7164 800B6964 1E80023C */  lui        $v0, %hi(D_801E07D8)
/* A7168 800B6968 F0726824 */  addiu      $t0, $v1, %lo(D_800172F0)
/* A716C 800B696C D807498C */  lw         $t1, %lo(D_801E07D8)($v0)
/* A7170 800B6970 21204801 */  addu       $a0, $t2, $t0
/* A7174 800B6974 02002295 */  lhu        $v0, 2($t1)
/* A7178 800B6978 00008390 */  lbu        $v1, ($a0)
/* A717C 800B697C 21104800 */  addu       $v0, $v0, $t0
/* A7180 800B6980 00004590 */  lbu        $a1, ($v0)
/* A7184 800B6984 00000000 */  nop
/* A7188 800B6988 2B186500 */  sltu       $v1, $v1, $a1
/* A718C 800B698C 03006010 */  beqz       $v1, .L800B699C
/* A7190 800B6990 FF00E730 */   andi      $a3, $a3, 0xff
/* A7194 800B6994 0800E003 */  jr         $ra
/* A7198 800B6998 FFFF0224 */   addiu     $v0, $zero, -1
.L800B699C:
/* A719C 800B699C 1E80043C */  lui        $a0, %hi(D_801E0768)
/* A71A0 800B69A0 01000324 */  addiu      $v1, $zero, 1
/* A71A4 800B69A4 680783A0 */  sb         $v1, %lo(D_801E0768)($a0)
/* A71A8 800B69A8 02002295 */  lhu        $v0, 2($t1)
/* A71AC 800B69AC 00000000 */  nop
/* A71B0 800B69B0 21104800 */  addu       $v0, $v0, $t0
/* A71B4 800B69B4 00004390 */  lbu        $v1, ($v0)
/* A71B8 800B69B8 68078824 */  addiu      $t0, $a0, 0x768
/* A71BC 800B69BC 100006AD */  sw         $a2, 0x10($t0)
/* A71C0 800B69C0 21308000 */  addu       $a2, $a0, $zero
/* A71C4 800B69C4 040000AD */  sw         $zero, 4($t0)
/* A71C8 800B69C8 08000AAD */  sw         $t2, 8($t0)
/* A71CC 800B69CC 140007AD */  sw         $a3, 0x14($t0)
/* A71D0 800B69D0 04004015 */  bnez       $t2, .L800B69E4
/* A71D4 800B69D4 010003A1 */   sb        $v1, 1($t0)
/* A71D8 800B69D8 0E0000A5 */  sh         $zero, 0xe($t0)
/* A71DC 800B69DC 7CDA0208 */  j          .L800B69F0
/* A71E0 800B69E0 0C0000A5 */   sh        $zero, 0xc($t0)
.L800B69E4:
/* A71E4 800B69E4 00120B00 */  sll        $v0, $t3, 8
/* A71E8 800B69E8 0E0002A5 */  sh         $v0, 0xe($t0)
/* A71EC 800B69EC 0C0002A5 */  sh         $v0, 0xc($t0)
.L800B69F0:
/* A71F0 800B69F0 21100000 */  addu       $v0, $zero, $zero
/* A71F4 800B69F4 0180043C */  lui        $a0, %hi(D_800172DC)
/* A71F8 800B69F8 DC728424 */  addiu      $a0, $a0, %lo(D_800172DC)
/* A71FC 800B69FC 40180A00 */  sll        $v1, $t2, 1
/* A7200 800B6A00 21186400 */  addu       $v1, $v1, $a0
/* A7204 800B6A04 00006590 */  lbu        $a1, ($v1)
/* A7208 800B6A08 6807C424 */  addiu      $a0, $a2, 0x768
/* A720C 800B6A0C 0800E003 */  jr         $ra
/* A7210 800B6A10 020085A0 */   sb        $a1, 2($a0)
