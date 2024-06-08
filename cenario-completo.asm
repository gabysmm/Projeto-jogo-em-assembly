.text
#===================================== CENÁRIO ====================================================================================
main:
    #grama
    addi $8, $0, 0x1d9b5b # Cor verde
    lui $10, 0x1001 #primeiro pixel
    addi $20, $0, 8192 #calculo da posição somando 4 ou 512
tverde:
    beq $20, $21, a1 
    sw $8, 0($10)
    sw $8, 33000($10)
    addi $10, $10, 4
    addi $21, $21, 1
    j tverde
#rio
a1:
    addi $8, $0, 0x004485 # Cor Azul
    lui $10, 0x1001 #primeiro pixel
    addi $10, $10, -416 #calculo pra descobrir o calculo do primeiro pontinho pra formar a casa 
    addi $20, $0, 80 #colocar a quant de vezes que vamos repetir o loop
    addi $21, $0, 0 #contador
qazul:
    beq $20, $21, a2
    addi $21, $21, 1
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    addi $10, $10, -20476
    j qazul
#rio parte pequena
a2:
    addi $8, $0, 0x004485 # Cor Azul
    addi $10, $10, 20232
    addi $20, $0, 44
    addi $21, $0, 0
qazul2:
    beq $20, $21, a3
    addi $21, $21, 1
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    jal lv
    addi $10, $10, -12796
    j qazul2
lv: #vai criar nosso quadrado, nosso pontinho/linha vertical e add mais 4 e grava no endereço de memoria
    addi $10, $10, 512
    sw $8, ($10)
    sw $8, 33000($10)
    jr $31
#casa
a3: 
   addi $21, $0, 0 #reiniciar o contador
   addi $20, $0, 6  #colocar a quant de vezes que vamos repetir o loop
   lui $10, 0x1001 #lui pra pegar o primeiro ponto
   addi $10, $10, 1556 #calculo pra descobrir o calculo do primeiro pontinho pra formar a casa 
   addi $8, $0, 0xDDA0DD #cor rosa
   j casinha1
casinha1: 
   beq $20, $21, a4 #caso termine ir pro proximo auxiliar
   addi $21, $21, 1
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, -3068 #(quant jaules * 512 - 4)
   j casinha1
#meu telhadinho
a4: 
   addi $21, $0, 0
   addi $20, $0, 1
   lui $10, 0x1001
   addi $10, $10, 1040
   addi $8, $0, 0x800000
telhado:
   jal lh 
   jal lh
   jal lh 
   jal lh 
   jal lh
   jal lh
   addi $10, $10, 484
   jal lh
   jal lh
   jal lh 
   jal lh 
   jal lh
   jal lh
   jal lh
   jal lh
   j a5
lh: #linha horizontal, nosso quadradinho e ponto na memoria que vamos usar em jal
    addi $10, $10, 4
    sw $8, ($10)
    sw $8, 33000($10) #tava sem antes
    jr $31
#porta da casinha 1
a5: 
   addi $8, $0, 0x800000
   addi $10, $10, 1004
porta:
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, -2044
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, -2044
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, -2044
   jal lv 
   jal lv
   jal lv
   jal lv
   addi $10, $10, -204
   j a9
#casa2
 a9:
  addi $21, $0, 0 #reiniciar o contador
  addi $20, $0, 6  #colocar a quant de vezes que vamos repetir o loop
  lui $10, 0x1001 #lui pra pegar o primeiro ponto
  addi $10, $10, 25484 
  addi $8, $0, 0xDDA0DD #cor rosa
   j casinha2
casinha2: 
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 4
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 516
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 516
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 516
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 516
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 516
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   addi $10, $10, 484
   sw $8, 0($10)
   sw $8, 33000($10)
   addi $10, $10, -3072
   jal lv
   jal lv
   jal lv
   jal lv
   jal lv
   j a10
#telhado2
a10:
   addi $21, $0, 0
   addi $20, $0, 1
   lui $10, 0x1001
   addi $10, $10, 25484 
   addi $8, $0, 0x800000
   j telhado2
telhado2:
   addi $10, $10, -516
   sw $8, 0($10)
   sw $8, 33000($10)
   jal lh 
   jal lh
   jal lh
   jal lh
   jal lh 
   jal lh
   jal lh
   addi $10, $10, 480
   sw $8, 0($10)
   sw $8, 33000($10)
   jal lh 
   jal lh
   jal lh
   jal lh
   jal lh 
   jal lh
   jal lh
   jal lh
   jal lh
   j a11
a11:
   addi $21, $0, 0
   addi $20, $0, 1
   lui $10, 0x1001
   addi $8, $0, 0x800000
   addi $10, $10, 25000
porta2:
   addi $10, $10, 2020
   jal lh
   jal lh
   jal lh
   jal lh
   addi $10, $10, 496
   jal lh
   jal lh 
   jal lh
   jal lh
   addi $10, $10, 496
   jal lh
   jal lh 
   jal lh
   jal lh
   addi $10, $10, 496
   jal lh
   jal lh 
   jal lh
   jal lh
   j fim
fim:
    addi $2, $0, 10
    syscall
 
