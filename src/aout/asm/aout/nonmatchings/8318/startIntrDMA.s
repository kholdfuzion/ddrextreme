.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel startIntrDMA
/* C234 8001BA34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* C238 8001BA38 0D80043C */  lui        $a0, %hi(D_800D3E3C)
/* C23C 8001BA3C 3C3E8424 */  addiu      $a0, $a0, %lo(D_800D3E3C)
/* C240 8001BA40 1000BFAF */  sw         $ra, 0x10($sp)
/* C244 8001BA44 2B6F000C */  jal        INTR_DMA_OBJ_278
/* C248 8001BA48 08000524 */   addiu     $a1, $zero, 8
/* C24C 8001BA4C 03000424 */  addiu      $a0, $zero, 3
/* C250 8001BA50 0D80023C */  lui        $v0, %hi(D_800D3E38)
/* C254 8001BA54 383E428C */  lw         $v0, %lo(D_800D3E38)($v0)
/* C258 8001BA58 0280053C */  lui        $a1, %hi(INTR_DMA_OBJ_4C)
/* C25C 8001BA5C 80BAA524 */  addiu      $a1, $a1, %lo(INTR_DMA_OBJ_4C)
/* C260 8001BA60 656C000C */  jal        InterruptCallback
/* C264 8001BA64 000040AC */   sw        $zero, ($v0)
/* C268 8001BA68 0280023C */  lui        $v0, %hi(INTR_DMA_OBJ_1CC)
/* C26C 8001BA6C 00BC4224 */  addiu      $v0, $v0, %lo(INTR_DMA_OBJ_1CC)
/* C270 8001BA70 1000BF8F */  lw         $ra, 0x10($sp)
/* C274 8001BA74 1800BD27 */  addiu      $sp, $sp, 0x18
/* C278 8001BA78 0800E003 */  jr         $ra
/* C27C 8001BA7C 00000000 */   nop
