d_aviao:
 addi $8, $0, 0xFFD700
 lui $10, 0x1001
 addi $10, $10, 23804
 addi $16, $10, 0 #guarda o primeiro ponto 
 addi $15, $10, 0
 addi $20, $0, 88
 addi $21, $0, 0
 sw $8, 0($10)
 addi $10, $10, 508
 sw $8, 0($10)
 addi $10, $10, 4
 sw $8, 0($10)
 addi $10, $10, 4
 sw $8, 0($10)
 addi $10, $10, 492
 jal lh2
 jal lh2
 jal lh2
 jal lh2
 jal lh2
 jal lh2
 jal lh2
 addi $10, $10, -12
 jal lv2
 jal lv2
 addi $10, $10, 504
 jal lh2
 jal lh2
 jal lh2
 addi $10, $10, 504
 j d_barco
d_barco:
  addi $8, $0, 0x000000
  lui $10, 0x1001
  addi $10, $10, 7916
  addi $15, $10, 0
  addi $20, $0, 80
  addi $21, $0, 0
   sw $8, 0($10)
   addi $10, $10, 512
   sw $8, 0($10)
   addi $10, $10, 512
   sw $8, 0($10)
   addi $10, $10, -4
   sw $8, 0($10)
   addi $10, $10, -512
   sw $8, 0($10)
   addi $10, $10, -512
   sw $8, 0 ($10)
   addi $10, $10, 1516
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   addi $10, $10, 472
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   addi $8, $0, 0xFF0000
   addi $10, $10, 464
   addi $20, $0, 80
   addi $21, $0, 0
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   addi $10, $10, 460
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   jal lh2
   addi $10, $10, 464
   j i

lh2: #linha horizontal sem cópia carbono
    addi $10, $10, 4
    sw $8, ($10)
    jr $31
lv2: #sem copia carbono
    addi $10, $10, 512
    sw $8, ($10)
    jr $31
i:
    addi $8, $0, 0x000000
    lui $10, 0x1001 #primeiro pixel
    addi $20, $0, 8192 #calculo da posição somando 4 ou 512
    addi $21, $0, 0
tpreta2:
    beq $20, $21, vitoria
    sw $8, 0($10)
    addi $10, $10, 4
    addi $21, $21, 1
    addi $8, $0, 0x004485 #corAzul
    j tpreta2
vitoria:
    #inicio coroa
    addi $8, $0, 0xFFD700 #corAmarelo
    lui $10, 0x1001
    addi $10, $10, 7900
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, 512
    sw $8, 0($10)
    jal lh2
    addi $10, $10, -2048
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -508
    jal lv2
    addi $10, $10, -1024
    sw $8, 0($10)
    jal lv2
    addi $10, $10, 4
    jal lv2
    addi $10, $10, -1024
    sw $8, 0($10)
    jal lv2
    addi $10, $10, -1020
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -2044
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -2556
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -2044
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2  
    addi $10, $10, -1532
    sw $8, 0($10) 
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -1020
    sw $8, 0($10)
    jal lv2
    jal lv2
    addi $10, $10, -1020
    sw $8, 0($10)
    jal lv2
    jal lv2
    addi $10, $10, -1532
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -2044
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    #fim coroa
    #inicio do Y de you
    addi $8, $0, 0x000000 #corPreta
    addi $10, $10, 2480
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -2556
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    #fim do y de you
    #inicio do O
    addi $10, $10, 8
    jal lh2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    addi $10, $10, -4608
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -3604
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    #fim do O de you
    #inicio do U de you
    addi $10, $10, 8
    jal lh2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    jal lh2
    addi $10, $10, -4608
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    #fim do U de you
    #inicio do W de win
    addi $8, $0, 0xFFD700 #corAmarela
    addi $10, $10, 2472
    sw $8, 0($10)
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, 4
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    addi $10, $10, -508
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    jal lh2
    addi $10, $10, -4608
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    #fim do W de win
    #inicio do I de win
    addi $10, $10, -4084
    jal lv2
    addi $10, $10, 512
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    addi $10, $10, -4596
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    #fim do i de win
    #inicio de N de win
    addi $10, $10, -4092
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, 516
    sw $8, 0($10)
    addi $10, $10, -4608
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    jal lv2
    #fim do N de win
    j fim
fim:
    addi $2, $0, 10
    syscall