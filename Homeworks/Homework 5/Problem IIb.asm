.data
MyArray: .word  0x00000001
         .word  0x00000002
         .word  0x00000003
         .word  0x00000004
         .word  0x00000005
         .word  0x00000006
         .word  0x00000007
         .word  0x00000008
         .word  0x00000009
         .word  0x0000000a
         .word  0x0000000b
         .word  0x0000000c

.text

.globl main

.ent   main

main: 
  la    $s1, MyArray
  li    $t0, 10
  li    $t1, 4
  li    $t2, -4
  li    $t3, 1
loopstart:  	
  ble   $t0,0,loopend
  subu  $t0,$t0,$t3
  add   $s1, $s1, $t1
  lw    $t4, 4($s1)
  lw    $t5, -4($s1)
  add   $t4, $t4, $t5
  sw    $t4, 0($s1)
  jal   subtract10
  li    $t6,0
  or    $t6,$t4,$t4
  b     loopstart
loopend:  
  li    $v0, 10
  syscall
.end main

subtract10:
  li $t5, 10
  sub $t4,$t4,$t5
  jr $ra
.end subtract10