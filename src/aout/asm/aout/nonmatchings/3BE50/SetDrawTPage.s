.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetDrawTPage
/* 5C074 8006B874 01000224 */  addiu      $v0, $zero, 1
/* 5C078 8006B878 030082A0 */  sb         $v0, 3($a0)
/* 5C07C 8006B87C 0200C010 */  beqz       $a2, .L8006B888
/* 5C080 8006B880 00E1033C */   lui       $v1, 0xe100
/* 5C084 8006B884 00026334 */  ori        $v1, $v1, 0x200
.L8006B888:
/* 5C088 8006B888 0200A010 */  beqz       $a1, .L8006B894
/* 5C08C 8006B88C FF09E230 */   andi      $v0, $a3, 0x9ff
/* 5C090 8006B890 00044234 */  ori        $v0, $v0, 0x400
.L8006B894:
/* 5C094 8006B894 25106200 */  or         $v0, $v1, $v0
/* 5C098 8006B898 0800E003 */  jr         $ra
/* 5C09C 8006B89C 040082AC */   sw        $v0, 4($a0)
/* 5C0A0 8006B8A0 00000000 */  nop
