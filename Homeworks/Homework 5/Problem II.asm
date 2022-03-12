.data
MyArray: .word  0x00111111
         .word  0x00222222
         .word  0x00333333
         .word  0x00444444
         .word  0x00555555
         .word  0x00666666
         .word  0x00777777
         .word  0x00888888
         .word  0x00999999
         .word  0x00aaaaaa
         .word  0x00bbbbbb
         .word  0x00cccccc

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
  subu  $t0,$t0,$t3
  add   $s1, $s1, $t1
  lw    $t4, 4($s1)
  lw    $t5, -4($s1)
  add   $t4, $t4, $t5
  sw    $t4, 0($s1)
  jal   subtract10
  and   $t6,$t6,$t6
  or    $t6,$t4,$t4
  bge   $t0,1,loopstart
  li    $v0, 10
  syscall
.end main

subtract10:
  li $t5, 10
  sub $t4,$t4,$t5
  jr $ra
.end subtract10