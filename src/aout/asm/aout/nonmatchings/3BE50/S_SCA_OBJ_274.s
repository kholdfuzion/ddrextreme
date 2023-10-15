.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel S_SCA_OBJ_274
/* AA148 800B9948 AA0162A4 */  sh         $v0, 0x1aa($v1)
.L800B994C:
/* AA14C 800B994C 03004015 */  bnez       $t2, .L800B995C
/* AA150 800B9950 00022231 */   andi      $v0, $t1, 0x200
/* AA154 800B9954 12004010 */  beqz       $v0, .L800B99A0
/* AA158 800B9958 00000000 */   nop
.L800B995C:
/* AA15C 800B995C 1800828C */  lw         $v0, 0x18($a0)
/* AA160 800B9960 00000000 */  nop
/* AA164 800B9964 07004014 */  bnez       $v0, .L800B9984
/* AA168 800B9968 00000000 */   nop
/* AA16C 800B996C 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA170 800B9970 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA174 800B9974 00000000 */  nop
/* AA178 800B9978 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA17C 800B997C 67E60208 */  j          S_SCA_OBJ_2C8
/* AA180 800B9980 FEFF4230 */   andi      $v0, $v0, 0xfffe
.L800B9984:
/* AA184 800B9984 0F80033C */  lui        $v1, %hi(D_800EC7F0)
/* AA188 800B9988 F0C7638C */  lw         $v1, %lo(D_800EC7F0)($v1)
/* AA18C 800B998C 00000000 */  nop
/* AA190 800B9990 AA016294 */  lhu        $v0, 0x1aa($v1)
/* AA194 800B9994 00000000 */  nop
/* AA198 800B9998 01004234 */  ori        $v0, $v0, 1
