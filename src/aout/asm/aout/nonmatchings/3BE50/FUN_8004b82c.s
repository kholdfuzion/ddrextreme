.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8004b82c
/* 3C02C 8004B82C 80FFBD27 */  addiu      $sp, $sp, -0x80
/* 3C030 8004B830 A2FF0224 */  addiu      $v0, $zero, -0x5e
/* 3C034 8004B834 1380033C */  lui        $v1, %hi(D_801280E0)
/* 3C038 8004B838 E0806324 */  addiu      $v1, $v1, %lo(D_801280E0)
/* 3C03C 8004B83C 7C00BFAF */  sw         $ra, 0x7c($sp)
/* 3C040 8004B840 7800BEAF */  sw         $fp, 0x78($sp)
/* 3C044 8004B844 7400B7AF */  sw         $s7, 0x74($sp)
/* 3C048 8004B848 7000B6AF */  sw         $s6, 0x70($sp)
/* 3C04C 8004B84C 6C00B5AF */  sw         $s5, 0x6c($sp)
/* 3C050 8004B850 6800B4AF */  sw         $s4, 0x68($sp)
/* 3C054 8004B854 6400B3AF */  sw         $s3, 0x64($sp)
/* 3C058 8004B858 6000B2AF */  sw         $s2, 0x60($sp)
/* 3C05C 8004B85C 5C00B1AF */  sw         $s1, 0x5c($sp)
/* 3C060 8004B860 5800B0AF */  sw         $s0, 0x58($sp)
/* 3C064 8004B864 4000A2AF */  sw         $v0, 0x40($sp)
/* 3C068 8004B868 8000A4AF */  sw         $a0, 0x80($sp)
/* 3C06C 8004B86C 84006490 */  lbu        $a0, 0x84($v1)
/* 3C070 8004B870 21B0A000 */  addu       $s6, $a1, $zero
/* 3C074 8004B874 8800A6AF */  sw         $a2, 0x88($sp)
/* 3C078 8004B878 1380063C */  lui        $a2, %hi(D_801282E0)
/* 3C07C 8004B87C E082C624 */  addiu      $a2, $a2, %lo(D_801282E0)
/* 3C080 8004B880 0F80073C */  lui        $a3, 0x800f
/* 3C084 8004B884 C0100400 */  sll        $v0, $a0, 3
/* 3C088 8004B888 23104400 */  subu       $v0, $v0, $a0
/* 3C08C 8004B88C 80100200 */  sll        $v0, $v0, 2
/* 3C090 8004B890 01006490 */  lbu        $a0, 1($v1)
/* 3C094 8004B894 8800A38F */  lw         $v1, 0x88($sp)
/* 3C098 8004B898 21104600 */  addu       $v0, $v0, $a2
/* 3C09C 8004B89C 2000A2AF */  sw         $v0, 0x20($sp)
/* 3C0A0 8004B8A0 C0280400 */  sll        $a1, $a0, 3
/* 3C0A4 8004B8A4 2328A400 */  subu       $a1, $a1, $a0
/* 3C0A8 8004B8A8 80280500 */  sll        $a1, $a1, 2
/* 3C0AC 8004B8AC 2800E424 */  addiu      $a0, $a3, 0x28
/* 3C0B0 8004B8B0 80100300 */  sll        $v0, $v1, 2
/* 3C0B4 8004B8B4 21104300 */  addu       $v0, $v0, $v1
/* 3C0B8 8004B8B8 C0190200 */  sll        $v1, $v0, 7
/* 3C0BC 8004B8BC 21104300 */  addu       $v0, $v0, $v1
/* 3C0C0 8004B8C0 8800A38F */  lw         $v1, 0x88($sp)
/* 3C0C4 8004B8C4 40110200 */  sll        $v0, $v0, 5
/* 3C0C8 8004B8C8 23104300 */  subu       $v0, $v0, $v1
/* 3C0CC 8004B8CC 80100200 */  sll        $v0, $v0, 2
/* 3C0D0 8004B8D0 21104400 */  addu       $v0, $v0, $a0
/* 3C0D4 8004B8D4 9000438C */  lw         $v1, 0x90($v0)
/* 3C0D8 8004B8D8 2128A600 */  addu       $a1, $a1, $a2
/* 3C0DC 8004B8DC 021B0300 */  srl        $v1, $v1, 0xc
/* 3C0E0 8004B8E0 03006330 */  andi       $v1, $v1, 3
/* 3C0E4 8004B8E4 08006010 */  beqz       $v1, .L8004B908
/* 3C0E8 8004B8E8 2400A5AF */   sw        $a1, 0x24($sp)
/* 3C0EC 8004B8EC 2800E384 */  lh         $v1, 0x28($a3)
/* 3C0F0 8004B8F0 03000224 */  addiu      $v0, $zero, 3
/* 3C0F4 8004B8F4 04006210 */  beq        $v1, $v0, .L8004B908
/* 3C0F8 8004B8F8 26000224 */   addiu     $v0, $zero, 0x26
/* 3C0FC 8004B8FC 02006210 */  beq        $v1, $v0, .L8004B908
/* 3C100 8004B900 31000424 */   addiu     $a0, $zero, 0x31
/* 3C104 8004B904 4000A4AF */  sw         $a0, 0x40($sp)
.L8004B908:
/* 3C108 8004B908 7470000C */  jal        getcoinslot1_8001c1d0
/* 3C10C 8004B90C 00000000 */   nop
/* 3C110 8004B910 05004010 */  beqz       $v0, .L8004B928
/* 3C114 8004B914 40000524 */   addiu     $a1, $zero, 0x40
/* 3C118 8004B918 F2000224 */  addiu      $v0, $zero, 0xf2
/* 3C11C 8004B91C 3800A5AF */  sw         $a1, 0x38($sp)
/* 3C120 8004B920 532E0108 */  j          .L8004B94C
/* 3C124 8004B924 3C00A2AF */   sw        $v0, 0x3c($sp)
.L8004B928:
/* 3C128 8004B928 2000A38F */  lw         $v1, 0x20($sp)
/* 3C12C 8004B92C 00000000 */  nop
/* 3C130 8004B930 16006294 */  lhu        $v0, 0x16($v1)
/* 3C134 8004B934 18006484 */  lh         $a0, 0x18($v1)
/* 3C138 8004B938 50004224 */  addiu      $v0, $v0, 0x50
/* 3C13C 8004B93C 00140200 */  sll        $v0, $v0, 0x10
/* 3C140 8004B940 03140200 */  sra        $v0, $v0, 0x10
/* 3C144 8004B944 3C00A4AF */  sw         $a0, 0x3c($sp)
/* 3C148 8004B948 3800A2AF */  sw         $v0, 0x38($sp)
.L8004B94C:
/* 3C14C 8004B94C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3C150 8004B950 8800A38F */  lw         $v1, 0x88($sp)
/* 3C154 8004B954 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 3C158 8004B958 80200300 */  sll        $a0, $v1, 2
/* 3C15C 8004B95C 21108300 */  addu       $v0, $a0, $v1
/* 3C160 8004B960 C0190200 */  sll        $v1, $v0, 7
/* 3C164 8004B964 21104300 */  addu       $v0, $v0, $v1
/* 3C168 8004B968 8800A38F */  lw         $v1, 0x88($sp)
/* 3C16C 8004B96C 40110200 */  sll        $v0, $v0, 5
/* 3C170 8004B970 23104300 */  subu       $v0, $v0, $v1
/* 3C174 8004B974 80100200 */  sll        $v0, $v0, 2
/* 3C178 8004B978 21104500 */  addu       $v0, $v0, $a1
/* 3C17C 8004B97C 8A004590 */  lbu        $a1, 0x8a($v0)
/* 3C180 8004B980 02000324 */  addiu      $v1, $zero, 2
/* 3C184 8004B984 0400A310 */  beq        $a1, $v1, .L8004B998
/* 3C188 8004B988 4C00A4AF */   sw        $a0, 0x4c($sp)
/* 3C18C 8004B98C 0A000224 */  addiu      $v0, $zero, 0xa
/* 3C190 8004B990 0C00A214 */  bne        $a1, $v0, .L8004B9C4
/* 3C194 8004B994 04000224 */   addiu     $v0, $zero, 4
.L8004B998:
/* 3C198 8004B998 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 3C19C 8004B99C 28008384 */  lh         $v1, %lo(D_800F0028)($a0)
/* 3C1A0 8004B9A0 03000224 */  addiu      $v0, $zero, 3
/* 3C1A4 8004B9A4 06006210 */  beq        $v1, $v0, .L8004B9C0
/* 3C1A8 8004B9A8 26000224 */   addiu     $v0, $zero, 0x26
/* 3C1AC 8004B9AC 04006210 */  beq        $v1, $v0, .L8004B9C0
/* 3C1B0 8004B9B0 08000524 */   addiu     $a1, $zero, 8
/* 3C1B4 8004B9B4 15000224 */  addiu      $v0, $zero, 0x15
/* 3C1B8 8004B9B8 03006214 */  bne        $v1, $v0, .L8004B9C8
/* 3C1BC 8004B9BC 2800A5AF */   sw        $a1, 0x28($sp)
.L8004B9C0:
/* 3C1C0 8004B9C0 04000224 */  addiu      $v0, $zero, 4
.L8004B9C4:
/* 3C1C4 8004B9C4 2800A2AF */  sw         $v0, 0x28($sp)
.L8004B9C8:
/* 3C1C8 8004B9C8 8800A38F */  lw         $v1, 0x88($sp)
/* 3C1CC 8004B9CC 21380000 */  addu       $a3, $zero, $zero
/* 3C1D0 8004B9D0 40180300 */  sll        $v1, $v1, 1
/* 3C1D4 8004B9D4 4800A3AF */  sw         $v1, 0x48($sp)
/* 3C1D8 8004B9D8 80180700 */  sll        $v1, $a3, 2
.L8004B9DC:
/* 3C1DC 8004B9DC 21186700 */  addu       $v1, $v1, $a3
/* 3C1E0 8004B9E0 4800A48F */  lw         $a0, 0x48($sp)
/* 3C1E4 8004B9E4 8800A58F */  lw         $a1, 0x88($sp)
/* 3C1E8 8004B9E8 80180300 */  sll        $v1, $v1, 2
/* 3C1EC 8004B9EC 21108500 */  addu       $v0, $a0, $a1
/* 3C1F0 8004B9F0 C0100200 */  sll        $v0, $v0, 3
/* 3C1F4 8004B9F4 21104500 */  addu       $v0, $v0, $a1
/* 3C1F8 8004B9F8 C0100200 */  sll        $v0, $v0, 3
/* 3C1FC 8004B9FC 1780053C */  lui        $a1, %hi(D_8016F830)
/* 3C200 8004BA00 30F8A424 */  addiu      $a0, $a1, %lo(D_8016F830)
/* 3C204 8004BA04 21186400 */  addu       $v1, $v1, $a0
/* 3C208 8004BA08 21204300 */  addu       $a0, $v0, $v1
/* 3C20C 8004BA0C 0100E224 */  addiu      $v0, $a3, 1
/* 3C210 8004BA10 0400868C */  lw         $a2, 4($a0)
/* 3C214 8004BA14 1780033C */  lui        $v1, %hi(D_8016F9C8)
/* 3C218 8004BA18 5000A2AF */  sw         $v0, 0x50($sp)
/* 3C21C 8004BA1C A101C010 */  beqz       $a2, .L8004C0A4
/* 3C220 8004BA20 C8F964AC */   sw        $a0, %lo(D_8016F9C8)($v1)
/* 3C224 8004BA24 0000838C */  lw         $v1, ($a0)
/* 3C228 8004BA28 00000000 */  nop
/* 3C22C 8004BA2C FF006230 */  andi       $v0, $v1, 0xff
/* 3C230 8004BA30 9C014010 */  beqz       $v0, .L8004C0A4
/* 3C234 8004BA34 0100023C */   lui       $v0, 1
/* 3C238 8004BA38 24106200 */  and        $v0, $v1, $v0
/* 3C23C 8004BA3C 02004010 */  beqz       $v0, .L8004BA48
/* 3C240 8004BA40 0C000524 */   addiu     $a1, $zero, 0xc
/* 3C244 8004BA44 09000524 */  addiu      $a1, $zero, 9
.L8004BA48:
/* 3C248 8004BA48 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 3C24C 8004BA4C 1C00438C */  lw         $v1, %lo(D_800F001C)($v0)
/* 3C250 8004BA50 00000000 */  nop
/* 3C254 8004BA54 23186600 */  subu       $v1, $v1, $a2
/* 3C258 8004BA58 40100300 */  sll        $v0, $v1, 1
/* 3C25C 8004BA5C 21104300 */  addu       $v0, $v0, $v1
/* 3C260 8004BA60 80100200 */  sll        $v0, $v0, 2
/* 3C264 8004BA64 23104300 */  subu       $v0, $v0, $v1
/* 3C268 8004BA68 40100200 */  sll        $v0, $v0, 1
/* 3C26C 8004BA6C 1B004500 */  divu       $zero, $v0, $a1
/* 3C270 8004BA70 12300000 */  mflo       $a2
/* 3C274 8004BA74 0200A014 */  bnez       $a1, .L8004BA80
/* 3C278 8004BA78 00000000 */   nop
/* 3C27C 8004BA7C CD010000 */  break      0, 7
.L8004BA80:
/* 3C280 8004BA80 16000224 */   addiu     $v0, $zero, 0x16
/* 3C284 8004BA84 23284600 */  subu       $a1, $v0, $a2
/* 3C288 8004BA88 0300A104 */  bgez       $a1, .L8004BA98
/* 3C28C 8004BA8C 1800A500 */   mult      $a1, $a1
/* 3C290 8004BA90 29300108 */  j          .L8004C0A4
/* 3C294 8004BA94 040080AC */   sw        $zero, 4($a0)
.L8004BA98:
/* 3C298 8004BA98 11008390 */  lbu        $v1, 0x11($a0)
/* 3C29C 8004BA9C 00000000 */  nop
/* 3C2A0 8004BAA0 FFFF6324 */  addiu      $v1, $v1, -1
/* 3C2A4 8004BAA4 12100000 */  mflo       $v0
/* 3C2A8 8004BAA8 43280200 */  sra        $a1, $v0, 1
/* 3C2AC 8004BAAC 0800622C */  sltiu      $v0, $v1, 8
/* 3C2B0 8004BAB0 2C004010 */  beqz       $v0, .L8004BB64
/* 3C2B4 8004BAB4 0180023C */   lui       $v0, %hi(D_80013D44)
/* 3C2B8 8004BAB8 443D4224 */  addiu      $v0, $v0, %lo(D_80013D44)
/* 3C2BC 8004BABC 80180300 */  sll        $v1, $v1, 2
/* 3C2C0 8004BAC0 21186200 */  addu       $v1, $v1, $v0
/* 3C2C4 8004BAC4 0000648C */  lw         $a0, ($v1)
/* 3C2C8 8004BAC8 00000000 */  nop
/* 3C2CC 8004BACC 08008000 */  jr         $a0
/* 3C2D0 8004BAD0 00000000 */   nop
/* 3C2D4 8004BAD4 21A0A000 */  addu       $s4, $a1, $zero
/* 3C2D8 8004BAD8 21B88002 */  addu       $s7, $s4, $zero
/* 3C2DC 8004BADC 83101400 */  sra        $v0, $s4, 2
/* 3C2E0 8004BAE0 DC2E0108 */  j          .L8004BB70
/* 3C2E4 8004BAE4 2C00A2AF */   sw        $v0, 0x2c($sp)
/* 3C2E8 8004BAE8 83B80500 */  sra        $s7, $a1, 2
/* 3C2EC 8004BAEC 21A0A000 */  addu       $s4, $a1, $zero
/* 3C2F0 8004BAF0 40101400 */  sll        $v0, $s4, 1
/* 3C2F4 8004BAF4 21105400 */  addu       $v0, $v0, $s4
/* 3C2F8 8004BAF8 83100200 */  sra        $v0, $v0, 2
/* 3C2FC 8004BAFC DC2E0108 */  j          .L8004BB70
/* 3C300 8004BB00 2C00A2AF */   sw        $v0, 0x2c($sp)
/* 3C304 8004BB04 83B80500 */  sra        $s7, $a1, 2
/* 3C308 8004BB08 21A0A000 */  addu       $s4, $a1, $zero
/* 3C30C 8004BB0C DC2E0108 */  j          .L8004BB70
/* 3C310 8004BB10 2C00B7AF */   sw        $s7, 0x2c($sp)
/* 3C314 8004BB14 21B8A000 */  addu       $s7, $a1, $zero
/* 3C318 8004BB18 83A01700 */  sra        $s4, $s7, 2
/* 3C31C 8004BB1C DC2E0108 */  j          .L8004BB70
/* 3C320 8004BB20 2C00B4AF */   sw        $s4, 0x2c($sp)
/* 3C324 8004BB24 83B80500 */  sra        $s7, $a1, 2
/* 3C328 8004BB28 21A0A000 */  addu       $s4, $a1, $zero
/* 3C32C 8004BB2C DC2E0108 */  j          .L8004BB70
/* 3C330 8004BB30 2C00B4AF */   sw        $s4, 0x2c($sp)
/* 3C334 8004BB34 21B8A000 */  addu       $s7, $a1, $zero
/* 3C338 8004BB38 83A01700 */  sra        $s4, $s7, 2
/* 3C33C 8004BB3C DC2E0108 */  j          .L8004BB70
/* 3C340 8004BB40 2C00B7AF */   sw        $s7, 0x2c($sp)
/* 3C344 8004BB44 83A00500 */  sra        $s4, $a1, 2
/* 3C348 8004BB48 21B88002 */  addu       $s7, $s4, $zero
/* 3C34C 8004BB4C DC2E0108 */  j          .L8004BB70
/* 3C350 8004BB50 2C00A5AF */   sw        $a1, 0x2c($sp)
/* 3C354 8004BB54 21A0A000 */  addu       $s4, $a1, $zero
/* 3C358 8004BB58 21B88002 */  addu       $s7, $s4, $zero
/* 3C35C 8004BB5C DC2E0108 */  j          .L8004BB70
/* 3C360 8004BB60 2C00B4AF */   sw        $s4, 0x2c($sp)
.L8004BB64:
/* 3C364 8004BB64 2C00A0AF */  sw         $zero, 0x2c($sp)
/* 3C368 8004BB68 21A00000 */  addu       $s4, $zero, $zero
/* 3C36C 8004BB6C 21B80000 */  addu       $s7, $zero, $zero
.L8004BB70:
/* 3C370 8004BB70 1780033C */  lui        $v1, %hi(D_8016F9C8)
/* 3C374 8004BB74 C8F9628C */  lw         $v0, %lo(D_8016F9C8)($v1)
/* 3C378 8004BB78 00000000 */  nop
/* 3C37C 8004BB7C 0000438C */  lw         $v1, ($v0)
/* 3C380 8004BB80 0100043C */  lui        $a0, 1
/* 3C384 8004BB84 24186400 */  and        $v1, $v1, $a0
/* 3C388 8004BB88 03006010 */  beqz       $v1, .L8004BB98
/* 3C38C 8004BB8C 80100600 */   sll       $v0, $a2, 2
/* 3C390 8004BB90 E82E0108 */  j          .L8004BBA0
/* 3C394 8004BB94 43100200 */   sra       $v0, $v0, 1
.L8004BB98:
/* 3C398 8004BB98 21104600 */  addu       $v0, $v0, $a2
/* 3C39C 8004BB9C 83100200 */  sra        $v0, $v0, 2
.L8004BBA0:
/* 3C3A0 8004BBA0 3400A2AF */  sw         $v0, 0x34($sp)
/* 3C3A4 8004BBA4 21880000 */  addu       $s1, $zero, $zero
/* 3C3A8 8004BBA8 2800A48F */  lw         $a0, 0x28($sp)
/* 3C3AC 8004BBAC 0100E724 */  addiu      $a3, $a3, 1
/* 3C3B0 8004BBB0 3C018010 */  beqz       $a0, .L8004C0A4
/* 3C3B4 8004BBB4 5000A7AF */   sw        $a3, 0x50($sp)
/* 3C3B8 8004BBB8 4800A58F */  lw         $a1, 0x48($sp)
/* 3C3BC 8004BBBC 00000000 */  nop
/* 3C3C0 8004BBC0 FFFFA524 */  addiu      $a1, $a1, -1
/* 3C3C4 8004BBC4 4400A5AF */  sw         $a1, 0x44($sp)
/* 3C3C8 8004BBC8 1780023C */  lui        $v0, %hi(D_8016F9C8)
.L8004BBCC:
/* 3C3CC 8004BBCC C8F9448C */  lw         $a0, %lo(D_8016F9C8)($v0)
/* 3C3D0 8004BBD0 01002526 */  addiu      $a1, $s1, 1
/* 3C3D4 8004BBD4 21109100 */  addu       $v0, $a0, $s1
/* 3C3D8 8004BBD8 08004390 */  lbu        $v1, 8($v0)
/* 3C3DC 8004BBDC 01000224 */  addiu      $v0, $zero, 1
/* 3C3E0 8004BBE0 2A016214 */  bne        $v1, $v0, .L8004C08C
/* 3C3E4 8004BBE4 5400A5AF */   sw        $a1, 0x54($sp)
/* 3C3E8 8004BBE8 10008290 */  lbu        $v0, 0x10($a0)
/* 3C3EC 8004BBEC 00000000 */  nop
/* 3C3F0 8004BBF0 07102202 */  srav       $v0, $v0, $s1
/* 3C3F4 8004BBF4 01004230 */  andi       $v0, $v0, 1
/* 3C3F8 8004BBF8 24014010 */  beqz       $v0, .L8004C08C
/* 3C3FC 8004BBFC 0F80053C */   lui       $a1, %hi(D_800F0028)
/* 3C400 8004BC00 4C00A38F */  lw         $v1, 0x4c($sp)
/* 3C404 8004BC04 8800A48F */  lw         $a0, 0x88($sp)
/* 3C408 8004BC08 2800A524 */  addiu      $a1, $a1, %lo(D_800F0028)
/* 3C40C 8004BC0C 21106400 */  addu       $v0, $v1, $a0
/* 3C410 8004BC10 C0190200 */  sll        $v1, $v0, 7
/* 3C414 8004BC14 21104300 */  addu       $v0, $v0, $v1
/* 3C418 8004BC18 40110200 */  sll        $v0, $v0, 5
/* 3C41C 8004BC1C 23104400 */  subu       $v0, $v0, $a0
/* 3C420 8004BC20 80100200 */  sll        $v0, $v0, 2
/* 3C424 8004BC24 21804500 */  addu       $s0, $v0, $a1
/* 3C428 8004BC28 88000392 */  lbu        $v1, 0x88($s0)
/* 3C42C 8004BC2C 05000224 */  addiu      $v0, $zero, 5
/* 3C430 8004BC30 4A006214 */  bne        $v1, $v0, .L8004BD5C
/* 3C434 8004BC34 00100324 */   addiu     $v1, $zero, 0x1000
/* 3C438 8004BC38 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3C43C 8004BC3C 28004484 */  lh         $a0, %lo(D_800F0028)($v0)
/* 3C440 8004BC40 04000224 */  addiu      $v0, $zero, 4
/* 3C444 8004BC44 08008210 */  beq        $a0, $v0, .L8004BC68
/* 3C448 8004BC48 E8FD0834 */   ori       $t0, $zero, 0xfde8
/* 3C44C 8004BC4C 40391100 */  sll        $a3, $s1, 5
/* 3C450 8004BC50 3400A58F */  lw         $a1, 0x34($sp)
/* 3C454 8004BC54 0100DE26 */  addiu      $fp, $s6, 1
/* 3C458 8004BC58 02000224 */  addiu      $v0, $zero, 2
/* 3C45C 8004BC5C 43300500 */  sra        $a2, $a1, 1
/* 3C460 8004BC60 32008214 */  bne        $a0, $v0, .L8004BD2C
/* 3C464 8004BC64 2000B524 */   addiu     $s5, $a1, 0x20
.L8004BC68:
/* 3C468 8004BC68 21280000 */  addu       $a1, $zero, $zero
/* 3C46C 8004BC6C 0F800A3C */  lui        $t2, 0x800f
/* 3C470 8004BC70 40391100 */  sll        $a3, $s1, 5
/* 3C474 8004BC74 0100DE26 */  addiu      $fp, $s6, 1
/* 3C478 8004BC78 3400A28F */  lw         $v0, 0x34($sp)
/* 3C47C 8004BC7C 01002326 */  addiu      $v1, $s1, 1
/* 3C480 8004BC80 5400A3AF */  sw         $v1, 0x54($sp)
/* 3C484 8004BC84 43300200 */  sra        $a2, $v0, 1
/* 3C488 8004BC88 20005524 */  addiu      $s5, $v0, 0x20
/* 3C48C 8004BC8C 0F80023C */  lui        $v0, %hi(D_800F02D4)
/* 3C490 8004BC90 D4024924 */  addiu      $t1, $v0, %lo(D_800F02D4)
/* 3C494 8004BC94 80100500 */  sll        $v0, $a1, 2
.L8004BC98:
/* 3C498 8004BC98 21104500 */  addu       $v0, $v0, $a1
/* 3C49C 8004BC9C C0190200 */  sll        $v1, $v0, 7
/* 3C4A0 8004BCA0 21104300 */  addu       $v0, $v0, $v1
/* 3C4A4 8004BCA4 40110200 */  sll        $v0, $v0, 5
/* 3C4A8 8004BCA8 23104500 */  subu       $v0, $v0, $a1
/* 3C4AC 8004BCAC 80100200 */  sll        $v0, $v0, 2
/* 3C4B0 8004BCB0 21204900 */  addu       $a0, $v0, $t1
/* 3C4B4 8004BCB4 04008384 */  lh         $v1, 4($a0)
/* 3C4B8 8004BCB8 00000000 */  nop
/* 3C4BC 8004BCBC 07006104 */  bgez       $v1, .L8004BCDC
/* 3C4C0 8004BCC0 0100A524 */   addiu     $a1, $a1, 1
/* 3C4C4 8004BCC4 28008424 */  addiu      $a0, $a0, 0x28
.L8004BCC8:
/* 3C4C8 8004BCC8 04008284 */  lh         $v0, 4($a0)
/* 3C4CC 8004BCCC 00000000 */  nop
/* 3C4D0 8004BCD0 FDFF4004 */  bltz       $v0, .L8004BCC8
/* 3C4D4 8004BCD4 28008424 */   addiu     $a0, $a0, 0x28
/* 3C4D8 8004BCD8 D8FF8424 */  addiu      $a0, $a0, -0x28
.L8004BCDC:
/* 3C4DC 8004BCDC 0000838C */  lw         $v1, ($a0)
/* 3C4E0 8004BCE0 00000000 */  nop
/* 3C4E4 8004BCE4 2A106800 */  slt        $v0, $v1, $t0
/* 3C4E8 8004BCE8 02004010 */  beqz       $v0, .L8004BCF4
/* 3C4EC 8004BCEC 0200A228 */   slti      $v0, $a1, 2
/* 3C4F0 8004BCF0 21406000 */  addu       $t0, $v1, $zero
.L8004BCF4:
/* 3C4F4 8004BCF4 E8FF4014 */  bnez       $v0, .L8004BC98
/* 3C4F8 8004BCF8 80100500 */   sll       $v0, $a1, 2
/* 3C4FC 8004BCFC D4014325 */  addiu      $v1, $t2, 0x1d4
/* 3C500 8004BD00 0400628C */  lw         $v0, 4($v1)
/* 3C504 8004BD04 00000000 */  nop
/* 3C508 8004BD08 00144224 */  addiu      $v0, $v0, 0x1400
/* 3C50C 8004BD0C 23184800 */  subu       $v1, $v0, $t0
/* 3C510 8004BD10 03006104 */  bgez       $v1, .L8004BD20
/* 3C514 8004BD14 01106228 */   slti      $v0, $v1, 0x1001
/* 3C518 8004BD18 21180000 */  addu       $v1, $zero, $zero
/* 3C51C 8004BD1C 01106228 */  slti       $v0, $v1, 0x1001
.L8004BD20:
/* 3C520 8004BD20 03004014 */  bnez       $v0, .L8004BD30
/* 3C524 8004BD24 00110300 */   sll       $v0, $v1, 4
/* 3C528 8004BD28 00100324 */  addiu      $v1, $zero, 0x1000
.L8004BD2C:
/* 3C52C 8004BD2C 00110300 */  sll        $v0, $v1, 4
.L8004BD30:
/* 3C530 8004BD30 21104300 */  addu       $v0, $v0, $v1
/* 3C534 8004BD34 80100200 */  sll        $v0, $v0, 2
/* 3C538 8004BD38 21104300 */  addu       $v0, $v0, $v1
/* 3C53C 8004BD3C 4400A38F */  lw         $v1, 0x44($sp)
/* 3C540 8004BD40 03130200 */  sra        $v0, $v0, 0xc
/* 3C544 8004BD44 18006200 */  mult       $v1, $v0
/* 3C548 8004BD48 C0FFE324 */  addiu      $v1, $a3, -0x40
/* 3C54C 8004BD4C 12100000 */  mflo       $v0
/* 3C550 8004BD50 21104300 */  addu       $v0, $v0, $v1
/* 3C554 8004BD54 A62F0108 */  j          .L8004BE98
/* 3C558 8004BD58 23984600 */   subu      $s3, $v0, $a2
.L8004BD5C:
/* 3C55C 8004BD5C 7470000C */  jal        getcoinslot1_8001c1d0
/* 3C560 8004BD60 00000000 */   nop
/* 3C564 8004BD64 3400A48F */  lw         $a0, 0x34($sp)
/* 3C568 8004BD68 00000000 */  nop
/* 3C56C 8004BD6C 43900400 */  sra        $s2, $a0, 1
/* 3C570 8004BD70 1B004010 */  beqz       $v0, .L8004BDE0
/* 3C574 8004BD74 21304002 */   addu      $a2, $s2, $zero
/* 3C578 8004BD78 0F80053C */  lui        $a1, %hi(D_800F0028)
/* 3C57C 8004BD7C 2800A384 */  lh         $v1, %lo(D_800F0028)($a1)
/* 3C580 8004BD80 26000224 */  addiu      $v0, $zero, 0x26
/* 3C584 8004BD84 16006210 */  beq        $v1, $v0, .L8004BDE0
/* 3C588 8004BD88 0180023C */   lui       $v0, %hi(D_80013D14)
/* 3C58C 8004BD8C 143D4524 */  addiu      $a1, $v0, %lo(D_80013D14)
/* 3C590 8004BD90 8A000392 */  lbu        $v1, 0x8a($s0)
/* 3C594 8004BD94 0A000224 */  addiu      $v0, $zero, 0xa
/* 3C598 8004BD98 02006210 */  beq        $v1, $v0, .L8004BDA4
/* 3C59C 8004BD9C 40201100 */   sll       $a0, $s1, 1
/* 3C5A0 8004BDA0 10008424 */  addiu      $a0, $a0, 0x10
.L8004BDA4:
/* 3C5A4 8004BDA4 3400A28F */  lw         $v0, 0x34($sp)
/* 3C5A8 8004BDA8 00000000 */  nop
/* 3C5AC 8004BDAC 20005524 */  addiu      $s5, $v0, 0x20
/* 3C5B0 8004BDB0 21108500 */  addu       $v0, $a0, $a1
/* 3C5B4 8004BDB4 00004484 */  lh         $a0, ($v0)
/* 3C5B8 8004BDB8 4800A58F */  lw         $a1, 0x48($sp)
/* 3C5BC 8004BDBC 8800A28F */  lw         $v0, 0x88($sp)
/* 3C5C0 8004BDC0 0100DE26 */  addiu      $fp, $s6, 1
/* 3C5C4 8004BDC4 2118A200 */  addu       $v1, $a1, $v0
/* 3C5C8 8004BDC8 80180300 */  sll        $v1, $v1, 2
/* 3C5CC 8004BDCC 23186200 */  subu       $v1, $v1, $v0
/* 3C5D0 8004BDD0 C0180300 */  sll        $v1, $v1, 3
/* 3C5D4 8004BDD4 21208300 */  addu       $a0, $a0, $v1
/* 3C5D8 8004BDD8 A62F0108 */  j          .L8004BE98
/* 3C5DC 8004BDDC 23988600 */   subu      $s3, $a0, $a2
.L8004BDE0:
/* 3C5E0 8004BDE0 0F80043C */  lui        $a0, %hi(D_800F0028)
/* 3C5E4 8004BDE4 28008724 */  addiu      $a3, $a0, %lo(D_800F0028)
/* 3C5E8 8004BDE8 8A00E290 */  lbu        $v0, 0x8a($a3)
/* 3C5EC 8004BDEC 02000824 */  addiu      $t0, $zero, 2
/* 3C5F0 8004BDF0 0B004810 */  beq        $v0, $t0, .L8004BE20
/* 3C5F4 8004BDF4 40191100 */   sll       $v1, $s1, 5
/* 3C5F8 8004BDF8 0A000524 */  addiu      $a1, $zero, 0xa
/* 3C5FC 8004BDFC 08004510 */  beq        $v0, $a1, .L8004BE20
/* 3C600 8004BE00 0100023C */   lui       $v0, 1
/* 3C604 8004BE04 2110E200 */  addu       $v0, $a3, $v0
/* 3C608 8004BE08 06434290 */  lbu        $v0, 0x4306($v0)
/* 3C60C 8004BE0C 00000000 */  nop
/* 3C610 8004BE10 03004810 */  beq        $v0, $t0, .L8004BE20
/* 3C614 8004BE14 00000000 */   nop
/* 3C618 8004BE18 0A004514 */  bne        $v0, $a1, .L8004BE44
/* 3C61C 8004BE1C 00000000 */   nop
.L8004BE20:
/* 3C620 8004BE20 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3C624 8004BE24 28004584 */  lh         $a1, %lo(D_800F0028)($v0)
/* 3C628 8004BE28 03000224 */  addiu      $v0, $zero, 3
/* 3C62C 8004BE2C 0500A210 */  beq        $a1, $v0, .L8004BE44
/* 3C630 8004BE30 26000224 */   addiu     $v0, $zero, 0x26
/* 3C634 8004BE34 0300A210 */  beq        $a1, $v0, .L8004BE44
/* 3C638 8004BE38 15000224 */   addiu     $v0, $zero, 0x15
/* 3C63C 8004BE3C 1000A214 */  bne        $a1, $v0, .L8004BE80
/* 3C640 8004BE40 80004226 */   addiu     $v0, $s2, 0x80
.L8004BE44:
/* 3C644 8004BE44 C0FF6324 */  addiu      $v1, $v1, -0x40
/* 3C648 8004BE48 0100DE26 */  addiu      $fp, $s6, 1
/* 3C64C 8004BE4C 4400A48F */  lw         $a0, 0x44($sp)
/* 3C650 8004BE50 3400A58F */  lw         $a1, 0x34($sp)
/* 3C654 8004BE54 40100400 */  sll        $v0, $a0, 1
/* 3C658 8004BE58 21104400 */  addu       $v0, $v0, $a0
/* 3C65C 8004BE5C 80100200 */  sll        $v0, $v0, 2
/* 3C660 8004BE60 23104400 */  subu       $v0, $v0, $a0
/* 3C664 8004BE64 C0100200 */  sll        $v0, $v0, 3
/* 3C668 8004BE68 21104300 */  addu       $v0, $v0, $v1
/* 3C66C 8004BE6C 23985200 */  subu       $s3, $v0, $s2
/* 3C670 8004BE70 2000B524 */  addiu      $s5, $a1, 0x20
/* 3C674 8004BE74 01002226 */  addiu      $v0, $s1, 1
/* 3C678 8004BE78 A62F0108 */  j          .L8004BE98
/* 3C67C 8004BE7C 5400A2AF */   sw        $v0, 0x54($sp)
.L8004BE80:
/* 3C680 8004BE80 23986200 */  subu       $s3, $v1, $v0
/* 3C684 8004BE84 0100DE26 */  addiu      $fp, $s6, 1
/* 3C688 8004BE88 3400A38F */  lw         $v1, 0x34($sp)
/* 3C68C 8004BE8C 01002426 */  addiu      $a0, $s1, 1
/* 3C690 8004BE90 5400A4AF */  sw         $a0, 0x54($sp)
/* 3C694 8004BE94 20007524 */  addiu      $s5, $v1, 0x20
.L8004BE98:
/* 3C698 8004BE98 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 3C69C 8004BE9C 4000A58F */  lw         $a1, 0x40($sp)
/* 3C6A0 8004BEA0 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 3C6A4 8004BEA4 2328A600 */  subu       $a1, $a1, $a2
/* 3C6A8 8004BEA8 3000A5AF */  sw         $a1, 0x30($sp)
/* 3C6AC 8004BEAC 88004390 */  lbu        $v1, 0x88($v0)
/* 3C6B0 8004BEB0 05000224 */  addiu      $v0, $zero, 5
/* 3C6B4 8004BEB4 0F006214 */  bne        $v1, $v0, .L8004BEF4
/* 3C6B8 8004BEB8 1780043C */   lui       $a0, 0x8017
/* 3C6BC 8004BEBC 1780033C */  lui        $v1, %hi(D_8016F9C8)
/* 3C6C0 8004BEC0 C8F9628C */  lw         $v0, %lo(D_8016F9C8)($v1)
/* 3C6C4 8004BEC4 00000000 */  nop
/* 3C6C8 8004BEC8 00004490 */  lbu        $a0, ($v0)
/* 3C6CC 8004BECC 04000324 */  addiu      $v1, $zero, 4
/* 3C6D0 8004BED0 08008314 */  bne        $a0, $v1, .L8004BEF4
/* 3C6D4 8004BED4 1780043C */   lui       $a0, 0x8017
/* 3C6D8 8004BED8 40111100 */  sll        $v0, $s1, 5
/* 3C6DC 8004BEDC 4000C324 */  addiu      $v1, $a2, 0x40
/* 3C6E0 8004BEE0 23984300 */  subu       $s3, $v0, $v1
/* 3C6E4 8004BEE4 32000424 */  addiu      $a0, $zero, 0x32
/* 3C6E8 8004BEE8 23208600 */  subu       $a0, $a0, $a2
/* 3C6EC 8004BEEC 3000A4AF */  sw         $a0, 0x30($sp)
/* 3C6F0 8004BEF0 1780043C */  lui        $a0, %hi(D_8016F9C8)
.L8004BEF4:
/* 3C6F4 8004BEF4 C8F9828C */  lw         $v0, %lo(D_8016F9C8)($a0)
/* 3C6F8 8004BEF8 00000000 */  nop
/* 3C6FC 8004BEFC 0000438C */  lw         $v1, ($v0)
/* 3C700 8004BF00 0100043C */  lui        $a0, 1
/* 3C704 8004BF04 24186400 */  and        $v1, $v1, $a0
/* 3C708 8004BF08 1B006010 */  beqz       $v1, .L8004BF78
/* 3C70C 8004BF0C 01000324 */   addiu     $v1, $zero, 1
/* 3C710 8004BF10 2400A28F */  lw         $v0, 0x24($sp)
/* 3C714 8004BF14 8000A48F */  lw         $a0, 0x80($sp)
/* 3C718 8004BF18 04004684 */  lh         $a2, 4($v0)
/* 3C71C 8004BF1C 1F000224 */  addiu      $v0, $zero, 0x1f
/* 3C720 8004BF20 1000A2AF */  sw         $v0, 0x10($sp)
/* 3C724 8004BF24 1400A2AF */  sw         $v0, 0x14($sp)
/* 3C728 8004BF28 2400A28F */  lw         $v0, 0x24($sp)
/* 3C72C 8004BF2C 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 3C730 8004BF30 06004784 */  lh         $a3, 6($v0)
/* 3C734 8004BF34 0C004284 */  lh         $v0, 0xc($v0)
/* 3C738 8004BF38 2128C002 */  addu       $a1, $s6, $zero
/* 3C73C 8004BF3C 1769010C */  jal        FUN_8005a45c
/* 3C740 8004BF40 1800A2AF */   sw        $v0, 0x18($sp)
/* 3C744 8004BF44 2400A38F */  lw         $v1, 0x24($sp)
/* 3C748 8004BF48 8000A48F */  lw         $a0, 0x80($sp)
/* 3C74C 8004BF4C 16006684 */  lh         $a2, 0x16($v1)
/* 3C750 8004BF50 18006784 */  lh         $a3, 0x18($v1)
/* 3C754 8004BF54 396D010C */  jal        FUN_8005b4e4
/* 3C758 8004BF58 2128C002 */   addu      $a1, $s6, $zero
/* 3C75C 8004BF5C 2128C002 */  addu       $a1, $s6, $zero
/* 3C760 8004BF60 2130E002 */  addu       $a2, $s7, $zero
/* 3C764 8004BF64 8000A48F */  lw         $a0, 0x80($sp)
/* 3C768 8004BF68 2C00A28F */  lw         $v0, 0x2c($sp)
/* 3C76C 8004BF6C 21388002 */  addu       $a3, $s4, $zero
/* 3C770 8004BF70 19300108 */  j          .L8004C064
/* 3C774 8004BF74 1000A2AF */   sw        $v0, 0x10($sp)
.L8004BF78:
/* 3C778 8004BF78 2000A38F */  lw         $v1, 0x20($sp)
/* 3C77C 8004BF7C 00000000 */  nop
/* 3C780 8004BF80 04007084 */  lh         $s0, 4($v1)
/* 3C784 8004BF84 7470000C */  jal        getcoinslot1_8001c1d0
/* 3C788 8004BF88 00000000 */   nop
/* 3C78C 8004BF8C 0B004010 */  beqz       $v0, .L8004BFBC
/* 3C790 8004BF90 AA2A023C */   lui       $v0, 0x2aaa
/* 3C794 8004BF94 ABAA4234 */  ori        $v0, $v0, 0xaaab
/* 3C798 8004BF98 18002202 */  mult       $s1, $v0
/* 3C79C 8004BF9C 03002332 */  andi       $v1, $s1, 3
/* 3C7A0 8004BFA0 C3271100 */  sra        $a0, $s1, 0x1f
/* 3C7A4 8004BFA4 10100000 */  mfhi       $v0
/* 3C7A8 8004BFA8 23104400 */  subu       $v0, $v0, $a0
/* 3C7AC 8004BFAC 23186200 */  subu       $v1, $v1, $v0
/* 3C7B0 8004BFB0 40190300 */  sll        $v1, $v1, 5
/* 3C7B4 8004BFB4 F72F0108 */  j          .L8004BFDC
/* 3C7B8 8004BFB8 21900302 */   addu      $s2, $s0, $v1
.L8004BFBC:
/* 3C7BC 8004BFBC 02002106 */  bgez       $s1, .L8004BFC8
/* 3C7C0 8004BFC0 21102002 */   addu      $v0, $s1, $zero
/* 3C7C4 8004BFC4 03002226 */  addiu      $v0, $s1, 3
.L8004BFC8:
/* 3C7C8 8004BFC8 83100200 */  sra        $v0, $v0, 2
/* 3C7CC 8004BFCC 80100200 */  sll        $v0, $v0, 2
/* 3C7D0 8004BFD0 23102202 */  subu       $v0, $s1, $v0
/* 3C7D4 8004BFD4 40110200 */  sll        $v0, $v0, 5
/* 3C7D8 8004BFD8 21900202 */  addu       $s2, $s0, $v0
.L8004BFDC:
/* 3C7DC 8004BFDC 2000A28F */  lw         $v0, 0x20($sp)
/* 3C7E0 8004BFE0 00000000 */  nop
/* 3C7E4 8004BFE4 06005084 */  lh         $s0, 6($v0)
/* 3C7E8 8004BFE8 7470000C */  jal        getcoinslot1_8001c1d0
/* 3C7EC 8004BFEC 00000000 */   nop
/* 3C7F0 8004BFF0 04004010 */  beqz       $v0, .L8004C004
/* 3C7F4 8004BFF4 83101100 */   sra       $v0, $s1, 2
/* 3C7F8 8004BFF8 40110200 */  sll        $v0, $v0, 5
/* 3C7FC 8004BFFC 02300108 */  j          .L8004C008
/* 3C800 8004C000 21380202 */   addu      $a3, $s0, $v0
.L8004C004:
/* 3C804 8004C004 21380002 */  addu       $a3, $s0, $zero
.L8004C008:
/* 3C808 8004C008 2128C002 */  addu       $a1, $s6, $zero
/* 3C80C 8004C00C 21304002 */  addu       $a2, $s2, $zero
/* 3C810 8004C010 2000A28F */  lw         $v0, 0x20($sp)
/* 3C814 8004C014 8000A48F */  lw         $a0, 0x80($sp)
/* 3C818 8004C018 0C004384 */  lh         $v1, 0xc($v0)
/* 3C81C 8004C01C 20000224 */  addiu      $v0, $zero, 0x20
/* 3C820 8004C020 1000A2AF */  sw         $v0, 0x10($sp)
/* 3C824 8004C024 1400A2AF */  sw         $v0, 0x14($sp)
/* 3C828 8004C028 01000224 */  addiu      $v0, $zero, 1
/* 3C82C 8004C02C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 3C830 8004C030 1769010C */  jal        FUN_8005a45c
/* 3C834 8004C034 1800A3AF */   sw        $v1, 0x18($sp)
/* 3C838 8004C038 8000A48F */  lw         $a0, 0x80($sp)
/* 3C83C 8004C03C 3800A68F */  lw         $a2, 0x38($sp)
/* 3C840 8004C040 3C00A78F */  lw         $a3, 0x3c($sp)
/* 3C844 8004C044 396D010C */  jal        FUN_8005b4e4
/* 3C848 8004C048 2128C002 */   addu      $a1, $s6, $zero
/* 3C84C 8004C04C 2128C002 */  addu       $a1, $s6, $zero
/* 3C850 8004C050 2130E002 */  addu       $a2, $s7, $zero
/* 3C854 8004C054 8000A48F */  lw         $a0, 0x80($sp)
/* 3C858 8004C058 2C00A38F */  lw         $v1, 0x2c($sp)
/* 3C85C 8004C05C 21388002 */  addu       $a3, $s4, $zero
/* 3C860 8004C060 1000A3AF */  sw         $v1, 0x10($sp)
.L8004C064:
/* 3C864 8004C064 EB6C010C */  jal        FUN_8005b3ac
/* 3C868 8004C068 00000000 */   nop
/* 3C86C 8004C06C 2128C002 */  addu       $a1, $s6, $zero
/* 3C870 8004C070 8000A48F */  lw         $a0, 0x80($sp)
/* 3C874 8004C074 3000A78F */  lw         $a3, 0x30($sp)
/* 3C878 8004C078 21306002 */  addu       $a2, $s3, $zero
/* 3C87C 8004C07C 1000B5AF */  sw         $s5, 0x10($sp)
/* 3C880 8004C080 976D010C */  jal        FUN_8005b65c
/* 3C884 8004C084 1400B5AF */   sw        $s5, 0x14($sp)
/* 3C888 8004C088 21B0C003 */  addu       $s6, $fp, $zero
.L8004C08C:
/* 3C88C 8004C08C 5400B18F */  lw         $s1, 0x54($sp)
/* 3C890 8004C090 2800A48F */  lw         $a0, 0x28($sp)
/* 3C894 8004C094 00000000 */  nop
/* 3C898 8004C098 2A102402 */  slt        $v0, $s1, $a0
/* 3C89C 8004C09C CBFE4014 */  bnez       $v0, .L8004BBCC
/* 3C8A0 8004C0A0 1780023C */   lui       $v0, 0x8017
.L8004C0A4:
/* 3C8A4 8004C0A4 5000A78F */  lw         $a3, 0x50($sp)
/* 3C8A8 8004C0A8 00000000 */  nop
/* 3C8AC 8004C0AC 0A00E228 */  slti       $v0, $a3, 0xa
/* 3C8B0 8004C0B0 4AFE4014 */  bnez       $v0, .L8004B9DC
/* 3C8B4 8004C0B4 80180700 */   sll       $v1, $a3, 2
/* 3C8B8 8004C0B8 2110C002 */  addu       $v0, $s6, $zero
/* 3C8BC 8004C0BC 7C00BF8F */  lw         $ra, 0x7c($sp)
/* 3C8C0 8004C0C0 7800BE8F */  lw         $fp, 0x78($sp)
/* 3C8C4 8004C0C4 7400B78F */  lw         $s7, 0x74($sp)
/* 3C8C8 8004C0C8 7000B68F */  lw         $s6, 0x70($sp)
/* 3C8CC 8004C0CC 6C00B58F */  lw         $s5, 0x6c($sp)
/* 3C8D0 8004C0D0 6800B48F */  lw         $s4, 0x68($sp)
/* 3C8D4 8004C0D4 6400B38F */  lw         $s3, 0x64($sp)
/* 3C8D8 8004C0D8 6000B28F */  lw         $s2, 0x60($sp)
/* 3C8DC 8004C0DC 5C00B18F */  lw         $s1, 0x5c($sp)
/* 3C8E0 8004C0E0 5800B08F */  lw         $s0, 0x58($sp)
/* 3C8E4 8004C0E4 0800E003 */  jr         $ra
/* 3C8E8 8004C0E8 8000BD27 */   addiu     $sp, $sp, 0x80
