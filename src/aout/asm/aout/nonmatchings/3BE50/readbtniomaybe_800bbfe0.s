.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel readbtniomaybe_800bbfe0
/* AC7E0 800BBFE0 F0FFBD27 */  addiu      $sp, $sp, -0x10
/* AC7E4 800BBFE4 401F023C */  lui        $v0, 0x1f40
/* AC7E8 800BBFE8 06004294 */  lhu        $v0, 6($v0)
/* AC7EC 800BBFEC 401F033C */  lui        $v1, 0x1f40
/* AC7F0 800BBFF0 27100200 */  nor        $v0, $zero, $v0
/* AC7F4 800BBFF4 0000A2A7 */  sh         $v0, ($sp)
/* AC7F8 800BBFF8 401F023C */  lui        $v0, 0x1f40
/* AC7FC 800BBFFC 08004594 */  lhu        $a1, 8($v0)
/* AC800 800BC000 401F023C */  lui        $v0, 0x1f40
/* AC804 800BC004 0C006694 */  lhu        $a2, 0xc($v1)
/* AC808 800BC008 401F033C */  lui        $v1, 0x1f40
/* AC80C 800BC00C 0E004294 */  lhu        $v0, 0xe($v0)
/* AC810 800BC010 04006394 */  lhu        $v1, 4($v1)
/* AC814 800BC014 27280500 */  nor        $a1, $zero, $a1
/* AC818 800BC018 27300600 */  nor        $a2, $zero, $a2
/* AC81C 800BC01C 27100200 */  nor        $v0, $zero, $v0
/* AC820 800BC020 27180300 */  nor        $v1, $zero, $v1
/* AC824 800BC024 0200A5A7 */  sh         $a1, 2($sp)
/* AC828 800BC028 FFFFA530 */  andi       $a1, $a1, 0xffff
/* AC82C 800BC02C 022A0500 */  srl        $a1, $a1, 8
/* AC830 800BC030 0400A6A7 */  sh         $a2, 4($sp)
/* AC834 800BC034 000BC630 */  andi       $a2, $a2, 0xb00
/* AC838 800BC038 2528A600 */  or         $a1, $a1, $a2
/* AC83C 800BC03C 0600A2A7 */  sh         $v0, 6($sp)
/* AC840 800BC040 0800A3A7 */  sh         $v1, 8($sp)
/* AC844 800BC044 000085A4 */  sh         $a1, ($a0)
/* AC848 800BC048 0200A397 */  lhu        $v1, 2($sp)
/* AC84C 800BC04C 0600A297 */  lhu        $v0, 6($sp)
/* AC850 800BC050 FF006330 */  andi       $v1, $v1, 0xff
/* AC854 800BC054 000B4230 */  andi       $v0, $v0, 0xb00
/* AC858 800BC058 25186200 */  or         $v1, $v1, $v0
/* AC85C 800BC05C 020083A4 */  sh         $v1, 2($a0)
/* AC860 800BC060 0000A297 */  lhu        $v0, ($sp)
/* AC864 800BC064 0400A597 */  lhu        $a1, 4($sp)
/* AC868 800BC068 0800A397 */  lhu        $v1, 8($sp)
/* AC86C 800BC06C 00134230 */  andi       $v0, $v0, 0x1300
/* AC870 800BC070 0004A530 */  andi       $a1, $a1, 0x400
/* AC874 800BC074 25104500 */  or         $v0, $v0, $a1
/* AC878 800BC078 0F006330 */  andi       $v1, $v1, 0xf
/* AC87C 800BC07C 25104300 */  or         $v0, $v0, $v1
/* AC880 800BC080 040082A4 */  sh         $v0, 4($a0)
/* AC884 800BC084 0800E003 */  jr         $ra
/* AC888 800BC088 1000BD27 */   addiu     $sp, $sp, 0x10
