.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c6fbc
/* B77BC 800C6FBC 80300400 */  sll        $a2, $a0, 2
/* B77C0 800C6FC0 1F80023C */  lui        $v0, %hi(D_801F7418)
/* B77C4 800C6FC4 18744724 */  addiu      $a3, $v0, %lo(D_801F7418)
/* B77C8 800C6FC8 01000224 */  addiu      $v0, $zero, 1
/* B77CC 800C6FCC 0420C200 */  sllv       $a0, $v0, $a2
/* B77D0 800C6FD0 1800E38C */  lw         $v1, 0x18($a3)
/* B77D4 800C6FD4 27100400 */  nor        $v0, $zero, $a0
/* B77D8 800C6FD8 24186200 */  and        $v1, $v1, $v0
/* B77DC 800C6FDC 0100A230 */  andi       $v0, $a1, 1
/* B77E0 800C6FE0 03004010 */  beqz       $v0, .L800C6FF0
/* B77E4 800C6FE4 1800E3AC */   sw        $v1, 0x18($a3)
/* B77E8 800C6FE8 001C0308 */  j          .L800C7000
/* B77EC 800C6FEC 25106400 */   or        $v0, $v1, $a0
.L800C6FF0:
/* B77F0 800C6FF0 0C000224 */  addiu      $v0, $zero, 0xc
/* B77F4 800C6FF4 0410C200 */  sllv       $v0, $v0, $a2
/* B77F8 800C6FF8 27100200 */  nor        $v0, $zero, $v0
/* B77FC 800C6FFC 24106200 */  and        $v0, $v1, $v0
.L800C7000:
/* B7800 800C7000 1800E2AC */  sw         $v0, 0x18($a3)
/* B7804 800C7004 0600A230 */  andi       $v0, $a1, 6
/* B7808 800C7008 0B004010 */  beqz       $v0, .L800C7038
/* B780C 800C700C 1F80043C */   lui       $a0, %hi(D_801F7418)
/* B7810 800C7010 18748424 */  addiu      $a0, $a0, %lo(D_801F7418)
/* B7814 800C7014 02000224 */  addiu      $v0, $zero, 2
/* B7818 800C7018 1800838C */  lw         $v1, 0x18($a0)
/* B781C 800C701C 0410C200 */  sllv       $v0, $v0, $a2
/* B7820 800C7020 25186200 */  or         $v1, $v1, $v0
/* B7824 800C7024 0C000224 */  addiu      $v0, $zero, 0xc
/* B7828 800C7028 0410C200 */  sllv       $v0, $v0, $a2
/* B782C 800C702C 27100200 */  nor        $v0, $zero, $v0
/* B7830 800C7030 24186200 */  and        $v1, $v1, $v0
/* B7834 800C7034 180083AC */  sw         $v1, 0x18($a0)
.L800C7038:
/* B7838 800C7038 0800E003 */  jr         $ra
/* B783C 800C703C 00000000 */   nop
