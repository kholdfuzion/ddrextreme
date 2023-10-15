.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1DE0
/* A5C4 80019DC4 06002586 */  lh         $a1, 6($s1)
/* A5C8 80019DC8 06002396 */  lhu        $v1, 6($s1)
/* A5CC 80019DCC 0B00A004 */  bltz       $a1, .L80019DFC
/* A5D0 80019DD0 040024A6 */   sh        $a0, 4($s1)
/* A5D4 80019DD4 21206000 */  addu       $a0, $v1, $zero
/* A5D8 80019DD8 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* A5DC 80019DDC 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* A5E0 80019DE0 0D80033C */  lui        $v1, %hi(D_800D2B9E)
/* A5E4 80019DE4 9E2B6394 */  lhu        $v1, %lo(D_800D2B9E)($v1)
/* A5E8 80019DE8 2A104500 */  slt        $v0, $v0, $a1
/* A5EC 80019DEC 05004010 */  beqz       $v0, .L80019E04
/* A5F0 80019DF0 00140400 */   sll       $v0, $a0, 0x10
/* A5F4 80019DF4 80670008 */  j          SYS_OBJ_1E1C
/* A5F8 80019DF8 21206000 */   addu      $a0, $v1, $zero
.L80019DFC:
/* A5FC 80019DFC 21200000 */  addu       $a0, $zero, $zero
