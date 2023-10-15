.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bf954
/* B0154 800BF954 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* B0158 800BF958 1000BFAF */  sw         $ra, 0x10($sp)
/* B015C 800BF95C 641F033C */  lui        $v1, 0x1f64
/* B0160 800BF960 AC006334 */  ori        $v1, $v1, 0xac
/* B0164 800BF964 00300224 */  addiu      $v0, $zero, 0x3000
/* B0168 800BF968 000062A4 */  sh         $v0, ($v1)
/* B016C 800BF96C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0170 800BF970 30570324 */  addiu      $v1, $zero, 0x5730
/* B0174 800BF974 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0178 800BF978 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B017C 800BF97C 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
.L800BF980:
/* B0180 800BF980 F4FD020C */  jal        FUN_800bf7d0
/* B0184 800BF984 00000000 */   nop
/* B0188 800BF988 FDFF4010 */  beqz       $v0, .L800BF980
/* B018C 800BF98C 641F033C */   lui       $v1, 0x1f64
/* B0190 800BF990 AC006334 */  ori        $v1, $v1, 0xac
/* B0194 800BF994 00300224 */  addiu      $v0, $zero, 0x3000
/* B0198 800BF998 000062A4 */  sh         $v0, ($v1)
/* B019C 800BF99C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B01A0 800BF9A0 30570324 */  addiu      $v1, $zero, 0x5730
/* B01A4 800BF9A4 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B01A8 800BF9A8 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B01AC 800BF9AC 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B01B0 800BF9B0 641F033C */  lui        $v1, 0x1f64
/* B01B4 800BF9B4 AC006334 */  ori        $v1, $v1, 0xac
/* B01B8 800BF9B8 00300224 */  addiu      $v0, $zero, 0x3000
/* B01BC 800BF9BC 000062A4 */  sh         $v0, ($v1)
/* B01C0 800BF9C0 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B01C4 800BF9C4 30570324 */  addiu      $v1, $zero, 0x5730
/* B01C8 800BF9C8 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B01CC 800BF9CC 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B01D0 800BF9D0 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B01D4 800BF9D4 641F033C */  lui        $v1, 0x1f64
/* B01D8 800BF9D8 AC006334 */  ori        $v1, $v1, 0xac
/* B01DC 800BF9DC 00300224 */  addiu      $v0, $zero, 0x3000
/* B01E0 800BF9E0 000062A4 */  sh         $v0, ($v1)
/* B01E4 800BF9E4 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B01E8 800BF9E8 30570324 */  addiu      $v1, $zero, 0x5730
/* B01EC 800BF9EC 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B01F0 800BF9F0 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B01F4 800BF9F4 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B01F8 800BF9F8 641F033C */  lui        $v1, 0x1f64
/* B01FC 800BF9FC AC006334 */  ori        $v1, $v1, 0xac
/* B0200 800BFA00 00200224 */  addiu      $v0, $zero, 0x2000
/* B0204 800BFA04 000062A4 */  sh         $v0, ($v1)
/* B0208 800BFA08 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B020C 800BFA0C 30570324 */  addiu      $v1, $zero, 0x5730
/* B0210 800BFA10 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0214 800BFA14 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0218 800BFA18 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B021C 800BFA1C 641F023C */  lui        $v0, 0x1f64
/* B0220 800BFA20 AC004234 */  ori        $v0, $v0, 0xac
/* B0224 800BFA24 000040A4 */  sh         $zero, ($v0)
/* B0228 800BFA28 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B022C 800BFA2C 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0230 800BFA30 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0234 800BFA34 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0238 800BFA38 641F023C */  lui        $v0, 0x1f64
/* B023C 800BFA3C AC004234 */  ori        $v0, $v0, 0xac
/* B0240 800BFA40 000040A4 */  sh         $zero, ($v0)
/* B0244 800BFA44 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0248 800BFA48 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B024C 800BFA4C 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0250 800BFA50 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0254 800BFA54 641F023C */  lui        $v0, 0x1f64
/* B0258 800BFA58 AC004234 */  ori        $v0, $v0, 0xac
/* B025C 800BFA5C 000040A4 */  sh         $zero, ($v0)
/* B0260 800BFA60 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0264 800BFA64 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0268 800BFA68 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B026C 800BFA6C 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B0270 800BFA70 641F023C */  lui        $v0, 0x1f64
/* B0274 800BFA74 AC004234 */  ori        $v0, $v0, 0xac
/* B0278 800BFA78 000040A4 */  sh         $zero, ($v0)
/* B027C 800BFA7C 1F80023C */  lui        $v0, %hi(D_801F7082)
/* B0280 800BFA80 827043A4 */  sh         $v1, %lo(D_801F7082)($v0)
/* B0284 800BFA84 1F80023C */  lui        $v0, %hi(D_801F7080)
/* B0288 800BFA88 807043A4 */  sh         $v1, %lo(D_801F7080)($v0)
/* B028C 800BFA8C 1000BF8F */  lw         $ra, 0x10($sp)
/* B0290 800BFA90 00000000 */  nop
/* B0294 800BFA94 0800E003 */  jr         $ra
/* B0298 800BFA98 1800BD27 */   addiu     $sp, $sp, 0x18
