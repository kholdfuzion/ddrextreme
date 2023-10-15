.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuRead
/* A9484 800B8C84 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A9488 800B8C88 1000B0AF */  sw         $s0, 0x10($sp)
/* A948C 800B8C8C 2180A000 */  addu       $s0, $a1, $zero
/* A9490 800B8C90 0700023C */  lui        $v0, 7
/* A9494 800B8C94 F0EF4234 */  ori        $v0, $v0, 0xeff0
/* A9498 800B8C98 2B105000 */  sltu       $v0, $v0, $s0
/* A949C 800B8C9C 03004010 */  beqz       $v0, .L800B8CAC
/* A94A0 800B8CA0 1400BFAF */   sw        $ra, 0x14($sp)
/* A94A4 800B8CA4 0700103C */  lui        $s0, 7
/* A94A8 800B8CA8 F0EF1036 */  ori        $s0, $s0, 0xeff0
.L800B8CAC:
/* A94AC 800B8CAC 36DD020C */  jal        _spu_Fw
/* A94B0 800B8CB0 21280002 */   addu      $a1, $s0, $zero
/* A94B4 800B8CB4 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A94B8 800B8CB8 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A94BC 800B8CBC 00000000 */  nop
/* A94C0 800B8CC0 03004014 */  bnez       $v0, .L800B8CD0
/* A94C4 800B8CC4 21100002 */   addu      $v0, $s0, $zero
/* A94C8 800B8CC8 0F80013C */  lui        $at, %hi(D_800EC824)
/* A94CC 800B8CCC 24C820AC */  sw         $zero, %lo(D_800EC824)($at)
.L800B8CD0:
/* A94D0 800B8CD0 1400BF8F */  lw         $ra, 0x14($sp)
/* A94D4 800B8CD4 1000B08F */  lw         $s0, 0x10($sp)
/* A94D8 800B8CD8 0800E003 */  jr         $ra
/* A94DC 800B8CDC 1800BD27 */   addiu     $sp, $sp, 0x18
/* A94E0 800B8CE0 00000000 */  nop
