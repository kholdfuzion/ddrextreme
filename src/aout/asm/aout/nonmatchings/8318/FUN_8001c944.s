.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8001c944
/* D144 8001C944 0F80033C */  lui        $v1, %hi(D_800F0028)
/* D148 8001C948 28006294 */  lhu        $v0, %lo(D_800F0028)($v1)
/* D14C 8001C94C 00000000 */  nop
/* D150 8001C950 E1FF4224 */  addiu      $v0, $v0, -0x1f
/* D154 8001C954 0B00422C */  sltiu      $v0, $v0, 0xb
/* D158 8001C958 03004014 */  bnez       $v0, .L8001C968
/* D15C 8001C95C 1280033C */   lui       $v1, %hi(D_8011A2AC)
/* D160 8001C960 0800E003 */  jr         $ra
/* D164 8001C964 21100000 */   addu      $v0, $zero, $zero
.L8001C968:
/* D168 8001C968 ACA2628C */  lw         $v0, %lo(D_8011A2AC)($v1)
/* D16C 8001C96C 0800E003 */  jr         $ra
/* D170 8001C970 00000000 */   nop
