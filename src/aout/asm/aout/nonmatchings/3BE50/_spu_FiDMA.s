.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _spu_FiDMA
/* A78F4 800B70F4 0F80023C */  lui        $v0, %hi(D_800EC840)
/* A78F8 800B70F8 40C8428C */  lw         $v0, %lo(D_800EC840)($v0)
/* A78FC 800B70FC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7900 800B7100 03004014 */  bnez       $v0, .L800B7110
/* A7904 800B7104 1000BFAF */   sw        $ra, 0x10($sp)
/* A7908 800B7108 E3DD020C */  jal        _spu_Fw1ts
/* A790C 800B710C 00000000 */   nop
.L800B7110:
/* A7910 800B7110 0F80043C */  lui        $a0, %hi(D_800EC7F0)
/* A7914 800B7114 F0C7848C */  lw         $a0, %lo(D_800EC7F0)($a0)
/* A7918 800B7118 00000000 */  nop
/* A791C 800B711C AA018294 */  lhu        $v0, 0x1aa($a0)
/* A7920 800B7120 00000000 */  nop
/* A7924 800B7124 CFFF4230 */  andi       $v0, $v0, 0xffcf
/* A7928 800B7128 AA0182A4 */  sh         $v0, 0x1aa($a0)
/* A792C 800B712C AA018294 */  lhu        $v0, 0x1aa($a0)
/* A7930 800B7130 00000000 */  nop
/* A7934 800B7134 30004230 */  andi       $v0, $v0, 0x30
/* A7938 800B7138 0A004010 */  beqz       $v0, .L800B7164
/* A793C 800B713C 21180000 */   addu      $v1, $zero, $zero
/* A7940 800B7140 01006324 */  addiu      $v1, $v1, 1
.L800B7144:
/* A7944 800B7144 010F622C */  sltiu      $v0, $v1, 0xf01
/* A7948 800B7148 06004010 */  beqz       $v0, .L800B7164
/* A794C 800B714C 00000000 */   nop
/* A7950 800B7150 AA018294 */  lhu        $v0, 0x1aa($a0)
/* A7954 800B7154 00000000 */  nop
/* A7958 800B7158 30004230 */  andi       $v0, $v0, 0x30
/* A795C 800B715C F9FF4014 */  bnez       $v0, .L800B7144
/* A7960 800B7160 01006324 */   addiu     $v1, $v1, 1
.L800B7164:
/* A7964 800B7164 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A7968 800B7168 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A796C 800B716C 00000000 */  nop
/* A7970 800B7170 08004010 */  beqz       $v0, .L800B7194
/* A7974 800B7174 00F0043C */   lui       $a0, 0xf000
/* A7978 800B7178 0F80023C */  lui        $v0, %hi(D_800EC828)
/* A797C 800B717C 28C8428C */  lw         $v0, %lo(D_800EC828)($v0)
/* A7980 800B7180 00000000 */  nop
/* A7984 800B7184 09F84000 */  jalr       $v0
/* A7988 800B7188 00000000 */   nop
/* A798C 800B718C 68DC0208 */  j          SPU_OBJ_4EC
/* A7990 800B7190 00000000 */   nop
.L800B7194:
/* A7994 800B7194 09008434 */  ori        $a0, $a0, 9
/* A7998 800B7198 A9C3020C */  jal        DeliverEvent
/* A799C 800B719C 20000524 */   addiu     $a1, $zero, 0x20
