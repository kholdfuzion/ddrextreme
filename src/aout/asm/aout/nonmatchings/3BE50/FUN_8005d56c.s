.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005d56c
/* 4DD6C 8005D56C C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4DD70 8005D570 5000A88F */  lw         $t0, 0x50($sp)
/* 4DD74 8005D574 5800AC93 */  lbu        $t4, 0x58($sp)
/* 4DD78 8005D578 5400AF8F */  lw         $t7, 0x54($sp)
/* 4DD7C 8005D57C 03000105 */  bgez       $t0, .L8005D58C
/* 4DD80 8005D580 3800BFAF */   sw        $ra, 0x38($sp)
/* 4DD84 8005D584 23400800 */  negu       $t0, $t0
/* 4DD88 8005D588 2D000C24 */  addiu      $t4, $zero, 0x2d
.L8005D58C:
/* 4DD8C 8005D58C 01000A24 */  addiu      $t2, $zero, 1
/* 4DD90 8005D590 FFFFEE25 */  addiu      $t6, $t7, -1
/* 4DD94 8005D594 2118C001 */  addu       $v1, $t6, $zero
/* 4DD98 8005D598 0600C019 */  blez       $t6, .L8005D5B4
/* 4DD9C 8005D59C 2000AD27 */   addiu     $t5, $sp, 0x20
.L8005D5A0:
/* 4DDA0 8005D5A0 80100A00 */  sll        $v0, $t2, 2
/* 4DDA4 8005D5A4 21104A00 */  addu       $v0, $v0, $t2
/* 4DDA8 8005D5A8 FFFF6324 */  addiu      $v1, $v1, -1
/* 4DDAC 8005D5AC FCFF601C */  bgtz       $v1, .L8005D5A0
/* 4DDB0 8005D5B0 40500200 */   sll       $t2, $v0, 1
.L8005D5B4:
/* 4DDB4 8005D5B4 1500E019 */  blez       $t7, .L8005D60C
/* 4DDB8 8005D5B8 2118E001 */   addu      $v1, $t7, $zero
/* 4DDBC 8005D5BC 21C0A001 */  addu       $t8, $t5, $zero
/* 4DDC0 8005D5C0 21480000 */  addu       $t1, $zero, $zero
.L8005D5C4:
/* 4DDC4 8005D5C4 2A100A01 */  slt        $v0, $t0, $t2
/* 4DDC8 8005D5C8 FFFF6B24 */  addiu      $t3, $v1, -1
/* 4DDCC 8005D5CC 06004014 */  bnez       $v0, .L8005D5E8
/* 4DDD0 8005D5D0 2318E301 */   subu      $v1, $t7, $v1
/* 4DDD4 8005D5D4 30000C24 */  addiu      $t4, $zero, 0x30
.L8005D5D8:
/* 4DDD8 8005D5D8 23400A01 */  subu       $t0, $t0, $t2
/* 4DDDC 8005D5DC 2A100A01 */  slt        $v0, $t0, $t2
/* 4DDE0 8005D5E0 FDFF4010 */  beqz       $v0, .L8005D5D8
/* 4DDE4 8005D5E4 01002925 */   addiu     $t1, $t1, 1
.L8005D5E8:
/* 4DDE8 8005D5E8 80100800 */  sll        $v0, $t0, 2
/* 4DDEC 8005D5EC 21104800 */  addu       $v0, $v0, $t0
/* 4DDF0 8005D5F0 40400200 */  sll        $t0, $v0, 1
/* 4DDF4 8005D5F4 21180303 */  addu       $v1, $t8, $v1
/* 4DDF8 8005D5F8 21108901 */  addu       $v0, $t4, $t1
/* 4DDFC 8005D5FC 000062A0 */  sb         $v0, ($v1)
/* 4DE00 8005D600 21186001 */  addu       $v1, $t3, $zero
/* 4DE04 8005D604 EFFF601C */  bgtz       $v1, .L8005D5C4
/* 4DE08 8005D608 21480000 */   addu      $t1, $zero, $zero
.L8005D60C:
/* 4DE0C 8005D60C 30000324 */  addiu      $v1, $zero, 0x30
/* 4DE10 8005D610 02008311 */  beq        $t4, $v1, .L8005D61C
/* 4DE14 8005D614 2110AE01 */   addu      $v0, $t5, $t6
/* 4DE18 8005D618 000043A0 */  sb         $v1, ($v0)
.L8005D61C:
/* 4DE1C 8005D61C 2110AF01 */  addu       $v0, $t5, $t7
/* 4DE20 8005D620 000040A0 */  sb         $zero, ($v0)
/* 4DE24 8005D624 5C00A28F */  lw         $v0, 0x5c($sp)
/* 4DE28 8005D628 6000A38F */  lw         $v1, 0x60($sp)
/* 4DE2C 8005D62C 1000ADAF */  sw         $t5, 0x10($sp)
/* 4DE30 8005D630 1400A2AF */  sw         $v0, 0x14($sp)
/* 4DE34 8005D634 616E010C */  jal        FUN_8005b984
/* 4DE38 8005D638 1800A3AF */   sw        $v1, 0x18($sp)
/* 4DE3C 8005D63C 3800BF8F */  lw         $ra, 0x38($sp)
/* 4DE40 8005D640 00000000 */  nop
/* 4DE44 8005D644 0800E003 */  jr         $ra
/* 4DE48 8005D648 4000BD27 */   addiu     $sp, $sp, 0x40
