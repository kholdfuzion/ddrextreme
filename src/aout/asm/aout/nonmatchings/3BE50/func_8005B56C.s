.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8005B56C
/* 4BD6C 8005B56C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 4BD70 8005B570 A89D478C */  lw         $a3, %lo(D_80129DA8)($v0)
/* 4BD74 8005B574 80300400 */  sll        $a2, $a0, 2
/* 4BD78 8005B578 2130C400 */  addu       $a2, $a2, $a0
/* 4BD7C 8005B57C C0300600 */  sll        $a2, $a2, 3
/* 4BD80 8005B580 2130C400 */  addu       $a2, $a2, $a0
/* 4BD84 8005B584 C0300600 */  sll        $a2, $a2, 3
/* 4BD88 8005B588 2330C400 */  subu       $a2, $a2, $a0
/* 4BD8C 8005B58C 80300600 */  sll        $a2, $a2, 2
/* 4BD90 8005B590 2130C400 */  addu       $a2, $a2, $a0
/* 4BD94 8005B594 C0300600 */  sll        $a2, $a2, 3
/* 4BD98 8005B598 1780033C */  lui        $v1, %hi(D_80172958)
/* 4BD9C 8005B59C 58296324 */  addiu      $v1, $v1, %lo(D_80172958)
/* 4BDA0 8005B5A0 2130C300 */  addu       $a2, $a2, $v1
/* 4BDA4 8005B5A4 80200500 */  sll        $a0, $a1, 2
/* 4BDA8 8005B5A8 21208500 */  addu       $a0, $a0, $a1
/* 4BDAC 8005B5AC C0200400 */  sll        $a0, $a0, 3
/* 4BDB0 8005B5B0 01000324 */  addiu      $v1, $zero, 1
/* 4BDB4 8005B5B4 40100700 */  sll        $v0, $a3, 1
/* 4BDB8 8005B5B8 21104700 */  addu       $v0, $v0, $a3
/* 4BDBC 8005B5BC C0100200 */  sll        $v0, $v0, 3
/* 4BDC0 8005B5C0 23104700 */  subu       $v0, $v0, $a3
/* 4BDC4 8005B5C4 C0110200 */  sll        $v0, $v0, 7
/* 4BDC8 8005B5C8 21104700 */  addu       $v0, $v0, $a3
/* 4BDCC 8005B5CC 80100200 */  sll        $v0, $v0, 2
/* 4BDD0 8005B5D0 21104700 */  addu       $v0, $v0, $a3
/* 4BDD4 8005B5D4 C0100200 */  sll        $v0, $v0, 3
/* 4BDD8 8005B5D8 21104600 */  addu       $v0, $v0, $a2
/* 4BDDC 8005B5DC A0004224 */  addiu      $v0, $v0, 0xa0
/* 4BDE0 8005B5E0 21288200 */  addu       $a1, $a0, $v0
/* 4BDE4 8005B5E4 23186700 */  subu       $v1, $v1, $a3
/* 4BDE8 8005B5E8 40100300 */  sll        $v0, $v1, 1
/* 4BDEC 8005B5EC 21104300 */  addu       $v0, $v0, $v1
/* 4BDF0 8005B5F0 C0100200 */  sll        $v0, $v0, 3
/* 4BDF4 8005B5F4 23104300 */  subu       $v0, $v0, $v1
/* 4BDF8 8005B5F8 C0110200 */  sll        $v0, $v0, 7
/* 4BDFC 8005B5FC 21104300 */  addu       $v0, $v0, $v1
/* 4BE00 8005B600 80100200 */  sll        $v0, $v0, 2
/* 4BE04 8005B604 21104300 */  addu       $v0, $v0, $v1
/* 4BE08 8005B608 C0100200 */  sll        $v0, $v0, 3
/* 4BE0C 8005B60C 21104600 */  addu       $v0, $v0, $a2
/* 4BE10 8005B610 A0004224 */  addiu      $v0, $v0, 0xa0
/* 4BE14 8005B614 21208200 */  addu       $a0, $a0, $v0
/* 4BE18 8005B618 20008224 */  addiu      $v0, $a0, 0x20
.L8005B61C:
/* 4BE1C 8005B61C 0000838C */  lw         $v1, ($a0)
/* 4BE20 8005B620 0400868C */  lw         $a2, 4($a0)
/* 4BE24 8005B624 0800878C */  lw         $a3, 8($a0)
/* 4BE28 8005B628 0C00888C */  lw         $t0, 0xc($a0)
/* 4BE2C 8005B62C 0000A3AC */  sw         $v1, ($a1)
/* 4BE30 8005B630 0400A6AC */  sw         $a2, 4($a1)
/* 4BE34 8005B634 0800A7AC */  sw         $a3, 8($a1)
/* 4BE38 8005B638 0C00A8AC */  sw         $t0, 0xc($a1)
/* 4BE3C 8005B63C 10008424 */  addiu      $a0, $a0, 0x10
/* 4BE40 8005B640 F6FF8214 */  bne        $a0, $v0, .L8005B61C
/* 4BE44 8005B644 1000A524 */   addiu     $a1, $a1, 0x10
/* 4BE48 8005B648 0000828C */  lw         $v0, ($a0)
/* 4BE4C 8005B64C 0400838C */  lw         $v1, 4($a0)
/* 4BE50 8005B650 0000A2AC */  sw         $v0, ($a1)
/* 4BE54 8005B654 0800E003 */  jr         $ra
/* 4BE58 8005B658 0400A3AC */   sw        $v1, 4($a1)
