.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bd93c
/* AE13C 800BD93C 0400A010 */  beqz       $a1, .L800BD950
/* AE140 800BD940 00000000 */   nop
/* AE144 800BD944 07008290 */  lbu        $v0, 7($a0)
/* AE148 800BD948 57F60208 */  j          .L800BD95C
/* AE14C 800BD94C 02004234 */   ori       $v0, $v0, 2
.L800BD950:
/* AE150 800BD950 07008290 */  lbu        $v0, 7($a0)
/* AE154 800BD954 00000000 */  nop
/* AE158 800BD958 FD004230 */  andi       $v0, $v0, 0xfd
.L800BD95C:
/* AE15C 800BD95C 0800E003 */  jr         $ra
/* AE160 800BD960 070082A0 */   sb        $v0, 7($a0)
/* AE164 800BD964 00000000 */  nop
/* AE168 800BD968 00000000 */  nop
