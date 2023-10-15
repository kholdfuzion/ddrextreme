.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be1c8
/* AE9C8 800BE1C8 0F80033C */  lui        $v1, %hi(D_800EE1A8)
/* AE9CC 800BE1CC 0400822C */  sltiu      $v0, $a0, 4
/* AE9D0 800BE1D0 02004010 */  beqz       $v0, .L800BE1DC
/* AE9D4 800BE1D4 A8E160AC */   sw        $zero, %lo(D_800EE1A8)($v1)
/* AE9D8 800BE1D8 A8E164AC */  sw         $a0, -0x1e58($v1)
.L800BE1DC:
/* AE9DC 800BE1DC 1F80023C */  lui        $v0, %hi(D_801F6FF4)
/* AE9E0 800BE1E0 F46F40AC */  sw         $zero, %lo(D_801F6FF4)($v0)
/* AE9E4 800BE1E4 1F80023C */  lui        $v0, %hi(D_801F6FF0)
/* AE9E8 800BE1E8 0800E003 */  jr         $ra
/* AE9EC 800BE1EC F06F40AC */   sw        $zero, %lo(D_801F6FF0)($v0)
