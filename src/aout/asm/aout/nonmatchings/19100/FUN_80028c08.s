.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80028c08
/* 19408 80028C08 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1940C 80028C0C 1380023C */  lui        $v0, %hi(D_8012ABA0)
/* 19410 80028C10 1380033C */  lui        $v1, %hi(D_8012AB90)
/* 19414 80028C14 A0AB40AC */  sw         $zero, %lo(D_8012ABA0)($v0)
/* 19418 80028C18 90AB6224 */  addiu      $v0, $v1, %lo(D_8012AB90)
/* 1941C 80028C1C 1380043C */  lui        $a0, %hi(D_8012ABA8)
/* 19420 80028C20 1800BFAF */  sw         $ra, 0x18($sp)
/* 19424 80028C24 1400B1AF */  sw         $s1, 0x14($sp)
/* 19428 80028C28 1000B0AF */  sw         $s0, 0x10($sp)
/* 1942C 80028C2C 040040AC */  sw         $zero, 4($v0)
/* 19430 80028C30 A8AB8224 */  addiu      $v0, $a0, %lo(D_8012ABA8)
/* 19434 80028C34 90AB60AC */  sw         $zero, -0x5470($v1)
/* 19438 80028C38 1380033C */  lui        $v1, %hi(D_8012ABB0)
/* 1943C 80028C3C 040040AC */  sw         $zero, 4($v0)
/* 19440 80028C40 B0AB6224 */  addiu      $v0, $v1, %lo(D_8012ABB0)
/* 19444 80028C44 A8AB80AC */  sw         $zero, -0x5458($a0)
/* 19448 80028C48 1380043C */  lui        $a0, %hi(D_8012ABC0)
/* 1944C 80028C4C 040040AC */  sw         $zero, 4($v0)
/* 19450 80028C50 C0AB8224 */  addiu      $v0, $a0, %lo(D_8012ABC0)
/* 19454 80028C54 B0AB60AC */  sw         $zero, -0x5450($v1)
/* 19458 80028C58 040040AC */  sw         $zero, 4($v0)
/* 1945C 80028C5C 1380023C */  lui        $v0, %hi(D_8012ABB8)
/* 19460 80028C60 C0AB80AC */  sw         $zero, -0x5440($a0)
/* 19464 80028C64 0E80043C */  lui        $a0, %hi(D_800D8D10)
/* 19468 80028C68 B8AB40AC */  sw         $zero, %lo(D_8012ABB8)($v0)
/* 1946C 80028C6C 00010224 */  addiu      $v0, $zero, 0x100
/* 19470 80028C70 0E80033C */  lui        $v1, %hi(D_800D8D18)
/* 19474 80028C74 108D82AC */  sw         $v0, %lo(D_800D8D10)($a0)
/* 19478 80028C78 108D8424 */  addiu      $a0, $a0, -0x72f0
/* 1947C 80028C7C 00020524 */  addiu      $a1, $zero, 0x200
/* 19480 80028C80 188D62AC */  sw         $v0, %lo(D_800D8D18)($v1)
/* 19484 80028C84 188D6324 */  addiu      $v1, $v1, -0x72e8
/* 19488 80028C88 1380023C */  lui        $v0, %hi(D_8012ABD0)
/* 1948C 80028C8C 01001124 */  addiu      $s1, $zero, 1
/* 19490 80028C90 040085AC */  sw         $a1, 4($a0)
/* 19494 80028C94 040065AC */  sw         $a1, 4($v1)
/* 19498 80028C98 D0AB51AC */  sw         $s1, %lo(D_8012ABD0)($v0)
/* 1949C 80028C9C D0AB4224 */  addiu      $v0, $v0, -0x5430
/* 194A0 80028CA0 D4B9000C */  jal        FUN_8002e750
/* 194A4 80028CA4 040051AC */   sw        $s1, 4($v0)
/* 194A8 80028CA8 FFFF0324 */  addiu      $v1, $zero, -1
/* 194AC 80028CAC 13004310 */  beq        $v0, $v1, .L80028CFC
/* 194B0 80028CB0 00000000 */   nop
/* 194B4 80028CB4 B8B9000C */  jal        FUN_8002e6e0
/* 194B8 80028CB8 21200000 */   addu      $a0, $zero, $zero
/* 194BC 80028CBC 21200000 */  addu       $a0, $zero, $zero
/* 194C0 80028CC0 BFB9000C */  jal        FUN_8002e6fc
/* 194C4 80028CC4 21284000 */   addu      $a1, $v0, $zero
/* 194C8 80028CC8 B8B9000C */  jal        FUN_8002e6e0
/* 194CC 80028CCC 01000424 */   addiu     $a0, $zero, 1
/* 194D0 80028CD0 01000424 */  addiu      $a0, $zero, 1
/* 194D4 80028CD4 BFB9000C */  jal        FUN_8002e6fc
/* 194D8 80028CD8 21284000 */   addu      $a1, $v0, $zero
/* 194DC 80028CDC B8B9000C */  jal        FUN_8002e6e0
/* 194E0 80028CE0 21200000 */   addu      $a0, $zero, $zero
/* 194E4 80028CE4 01000424 */  addiu      $a0, $zero, 1
/* 194E8 80028CE8 1380103C */  lui        $s0, %hi(D_8012ABC8)
/* 194EC 80028CEC C8AB02AE */  sw         $v0, %lo(D_8012ABC8)($s0)
/* 194F0 80028CF0 B8B9000C */  jal        FUN_8002e6e0
/* 194F4 80028CF4 C8AB1026 */   addiu     $s0, $s0, -0x5438
/* 194F8 80028CF8 040002AE */  sw         $v0, 4($s0)
.L80028CFC:
/* 194FC 80028CFC 1800BF8F */  lw         $ra, 0x18($sp)
/* 19500 80028D00 0E80023C */  lui        $v0, %hi(D_800D8D0C)
/* 19504 80028D04 0C8D51AC */  sw         $s1, %lo(D_800D8D0C)($v0)
/* 19508 80028D08 1400B18F */  lw         $s1, 0x14($sp)
/* 1950C 80028D0C 1000B08F */  lw         $s0, 0x10($sp)
/* 19510 80028D10 0800E003 */  jr         $ra
/* 19514 80028D14 2000BD27 */   addiu     $sp, $sp, 0x20
