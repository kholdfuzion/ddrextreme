.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuGetAllKeysStatus
/* A9648 800B8E48 18000A24 */  addiu      $t2, $zero, 0x18
/* A964C 800B8E4C 21300000 */  addu       $a2, $zero, $zero
/* A9650 800B8E50 01000724 */  addiu      $a3, $zero, 1
/* A9654 800B8E54 03000924 */  addiu      $t1, $zero, 3
/* A9658 800B8E58 02000824 */  addiu      $t0, $zero, 2
/* A965C 800B8E5C 21288000 */  addu       $a1, $a0, $zero
.L800B8E60:
/* A9660 800B8E60 00210600 */  sll        $a0, $a2, 4
/* A9664 800B8E64 0F80023C */  lui        $v0, %hi(D_800EC7F0)
/* A9668 800B8E68 F0C7428C */  lw         $v0, %lo(D_800EC7F0)($v0)
/* A966C 800B8E6C 0F80033C */  lui        $v1, %hi(D_800EC77C)
/* A9670 800B8E70 7CC7638C */  lw         $v1, %lo(D_800EC77C)($v1)
/* A9674 800B8E74 21208200 */  addu       $a0, $a0, $v0
/* A9678 800B8E78 0410C700 */  sllv       $v0, $a3, $a2
/* A967C 800B8E7C 24186200 */  and        $v1, $v1, $v0
/* A9680 800B8E80 0C008294 */  lhu        $v0, 0xc($a0)
/* A9684 800B8E84 07006010 */  beqz       $v1, .L800B8EA4
/* A9688 800B8E88 00000000 */   nop
/* A968C 800B8E8C 03004010 */  beqz       $v0, .L800B8E9C
/* A9690 800B8E90 00000000 */   nop
/* A9694 800B8E94 AEE30208 */  j          SR_GAKS_OBJ_144
/* A9698 800B8E98 0000A7A0 */   sb        $a3, ($a1)
.L800B8E9C:
/* A969C 800B8E9C AEE30208 */  j          SR_GAKS_OBJ_144
/* A96A0 800B8EA0 0000A9A0 */   sb        $t1, ($a1)
.L800B8EA4:
/* A96A4 800B8EA4 03004010 */  beqz       $v0, .L800B8EB4
/* A96A8 800B8EA8 00000000 */   nop
/* A96AC 800B8EAC AEE30208 */  j          SR_GAKS_OBJ_144
/* A96B0 800B8EB0 0000A8A0 */   sb        $t0, ($a1)
.L800B8EB4:
/* A96B4 800B8EB4 0000A0A0 */  sb         $zero, ($a1)
