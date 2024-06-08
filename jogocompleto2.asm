.text
#===================================== CENÁRIO ====================================================================================
de_novo:
	addi $1, $0, 0
	addi $3, $0, 0
	addi $5, $0, 0
	addi $6, $0, 0
	addi $7, $0, 0
	addi $8, $0, 0
	addi $9, $0, 0
	addi $10, $0, 0
	addi $11, $0, 0
	addi $12, $0, 0
	addi $13, $0, 0
	addi $14, $0, 0
	addi $15, $0, 0
	addi $16, $0, 0
	addi $17, $0, 0
	addi $18, $0, 0
	addi $19, $0, 0
	addi $20, $0, 0
	addi $21, $0, 0
	addi $22, $0, 0
	addi $23, $0, 0
	addi $24, $0, 0
	addi $25, $0, 0
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
   j d_aviao
#================================================== PERSONAGENS C/ MOVIMENTO ========================================================aci
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
   j mover_barco
lh2: #linha horizontal sem cópia carbono
    addi $10, $10, 4
    sw $8, ($10)
    jr $31
verificar_barco:
	addi $20, $0, 16
	beq $18, $20, b_c
	j b_n
b_n:
	addi $18, $18, 1
	addi $17, $0, 0
	j mover_barco
b_c:
	addi $17, $17, 1
	beq $17, $20, zerar
	j mover_barco_contrario
zerar:
	addi $18, $0, 0
	addi $17, $0, 0
	j mover_barco_contrario
mover_barco_contrario:
	jal apagar_barco
	addi $15, $15, -8
	j d_barco2
mover_barco:
	jal apagar_barco
	addi $15, $15, 8
	j d_barco2
apagar_barco:
  addi $25, $31, 0
  addi $8, $0, 0x000000
  addi $10, $15, 0
  addi $20, $0, 80
  addi $21, $0, 0
  lw $8, 33000($10) 
  sw $8, 0($10)
  addi $10, $10, 512
  lw $8, 33000($10) 
   sw $8, 0($10)
   addi $10, $10, 512
   lw $8, 33000($10) 
   sw $8, 0($10)
   addi $10, $10, -4
   lw $8, 33000($10) 
   sw $8, 0($10)
   addi $10, $10, -512
   lw $8, 33000($10) 
   sw $8, 0($10)
   addi $10, $10, -512
   lw $8, 33000($10) 
   sw $8, 0 ($10)
   addi $10, $10, 1516
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   addi $10, $10, 472
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   addi $8, $0, 0xFF0000
   addi $10, $10, 464
   addi $20, $0, 80
   addi $21, $0, 0
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   addi $10, $10, 460
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   jal apagar_lh
   addi $10, $10, 464
  jr $25
apagar_lh:
    addi $10, $10, 4
    lw $8, 33000($10) 
    sw $8, ($10)
    jr $31
 d_barco2:
  addi $8, $0, 0x000000
  addi $10, $15, 0
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
   addi $4, $0, 300
   addi $2, $0, 32
   syscall
   j v_g
mover_direita:
	sw $0, 4($1)
	jal apagar_aviao
	addi $16, $16, 4
	j d_aviao2
mover_cima:
	sw $0, 4($1)
	jal apagar_aviao
	addi $16, $16, -1024
	j d_aviao2
mover_esquerda:
        sw $0, 4($1)
        jal apagar_aviao
        addi $16, $16, -4
d_aviao2:
 addi $8, $0, 0xFFD700
 addi $10, $16, 0
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
 j verificar_barco
apagar_aviao:
addi $25, $31, 0
 addi $8, $0, 0xFFD700
 addi $10, $16, 0
 addi $20, $0, 88
 addi $21, $0, 0
 lw $8, 33000($10)
 sw $8, 0($10)
 addi $10, $10, 508
 lw $8, 33000($10)
 sw $8, 0($10)
 addi $10, $10, 4
 lw $8, 33000($10)
 sw $8, 0($10)
 addi $10, $10, 4
 lw $8, 33000($10)
 sw $8, 0($10)
 addi $10, $10, 492
 jal apagar_lh
 jal apagar_lh
 jal apagar_lh
 jal apagar_lh 
 jal apagar_lh
 jal apagar_lh
 jal apagar_lh
 addi $10, $10, -12
 jal apagar_lv
 jal apagar_lv
 addi $10, $10, 504
 jal apagar_lh
 jal apagar_lh
 jal apagar_lh
 addi $10, $10, 504
 jr $25
lv2: #sem copia carbono
    addi $10, $10, 512
    sw $8, ($10)
    jr $31
apagar_lv: 
    addi $10, $10, 512
    lw $8, 33000($10)
    sw $8, ($10)
    jr $31
verificar_teclado:
        #colisao barco primeiro ponto
        addi $3, $16, 0 #ponto de cima do avião 
        lw $10, 0($3)
        addi $9, $0, 0xFF0000 #cor do barco(parte vermelha)
        beq $9, $10, de_novo
        #fim colisao barco primeiro ponto
        #colisao barco ponto lateral
        addi $3, $16, 1552 #ponto lateral
        lw $10, 0($3)
        addi $9, $0, 0xFF0000 #cor do barco(parte vermelha)
        beq $9, $10, de_novo
        #fim da colisao ponto lateral
        #colisao grama lado direito
        addi $3, $16, 1552 #ponto lateral do avião 
        lw $10, 0($3)
        addi $9, $0, 0x1d9b5b #corVerde da grama
        beq $9, $10, de_novo
        #fim da colisao barco lado direito
        #colisao grama lado esquerdo
        addi $3, $16, 1520 #ponto de lateral do avião 
        lw $10, 0($3)
        addi $9, $0, 0x1d9b5b #corVerde da grama
        beq $9, $10, de_novo
        #fim colisao do lado esquerdo
	lui $1, 0xffff
	lw $24, 4($1)
	beq $24, $0, d_aviao2
	addi $25, $0, 'd'
	beq $24, $25, mover_direita
	addi $25, $0, 'w'
	beq $24, $25, mover_cima
	addi $25, $0, 'q'
	beq $24, $25, mover_esquerda
	j d_aviao2
v_g:
	lui $8, 0x1001
	addi $8, $8, 96
	addi $20, $0, 79
	addi $21, $0, 0
verificar_ganhar: #criação da tela azul
	beq $20, $21, verificar_teclado
	addi $21, $21, 1
	lw $10, 0($8)
	addi $9, $0, 0xFFD700
	beq $9, $10, i 
	addi $8, $8, 4
	j verificar_ganhar
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