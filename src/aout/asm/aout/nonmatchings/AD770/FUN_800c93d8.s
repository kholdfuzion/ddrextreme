.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800c93d8
/* B9BD8 800C93D8 FFFF0A24 */  addiu      $t2, $zero, -1
/* B9BDC 800C93DC 2080023C */  lui        $v0, %hi(D_801FB7F0)
/* B9BE0 800C93E0 F0B74824 */  addiu      $t0, $v0, %lo(D_801FB7F0)
/* B9BE4 800C93E4 2400098D */  lw         $t1, 0x24($t0)
/* B9BE8 800C93E8 0400038D */  lw         $v1, 4($t0)
/* B9BEC 800C93EC 01002225 */  addiu      $v0, $t1, 1
/* B9BF0 800C93F0 0C006014 */  bnez       $v1, .L800C9424
/* B9BF4 800C93F4 240002AD */   sw        $v0, 0x24($t0)
/* B9BF8 800C93F8 21500000 */  addu       $t2, $zero, $zero
/* B9BFC 800C93FC 02000224 */  addiu      $v0, $zero, 2
/* B9C00 800C9400 040002AD */  sw         $v0, 4($t0)
/* B9C04 800C9404 FEFF0224 */  addiu      $v0, $zero, -2
/* B9C08 800C9408 080000AD */  sw         $zero, 8($t0)
/* B9C0C 800C940C 0C0002AD */  sw         $v0, 0xc($t0)
/* B9C10 800C9410 200000AD */  sw         $zero, 0x20($t0)
/* B9C14 800C9414 9C0004AD */  sw         $a0, 0x9c($t0)
/* B9C18 800C9418 940005AD */  sw         $a1, 0x94($t0)
/* B9C1C 800C941C 980006AD */  sw         $a2, 0x98($t0)
/* B9C20 800C9420 900007AD */  sw         $a3, 0x90($t0)
.L800C9424:
/* B9C24 800C9424 240009AD */  sw         $t1, 0x24($t0)
/* B9C28 800C9428 0800E003 */  jr         $ra
/* B9C2C 800C942C 21104001 */   addu      $v0, $t2, $zero
