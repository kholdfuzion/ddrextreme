.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SPRINTF_OBJ_57C
/* 113B4 80020BB4 1002A38F */  lw         $v1, 0x210($sp)
/* 113B8 80020BB8 08000224 */  addiu      $v0, $zero, 8
/* 113BC 80020BBC 1802A2AF */  sw         $v0, 0x218($sp)
/* 113C0 80020BC0 50006334 */  ori        $v1, $v1, 0x50
/* 113C4 80020BC4 1002A3AF */  sw         $v1, 0x210($sp)
