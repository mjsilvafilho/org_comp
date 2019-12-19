;MARCIO GUILHERME V SILVA	N USP: 11355786
;MAURICIO JOSE DA S FILHO   N USP: 6767052
;RAFAEL GARCIA FORTUNATO	N USP: 11371332

;NUMBER SEQUENCES

;;; -> comentarios internos
; -> comentarios que vão ficar

jmp main

;mensagens utilizadas no decorrer do jogo:
Msn0 : string "DIGITE 'z' PARA JOGAR"
Msn1 : string "VOCE ACERTOU! :)"
Msn2 : string "V	O	C	E		P	E	R	D	E	U	!!!		:("
Msn3 : string "V	O	C	E			V	E	N	C	E	U	!!!		:)"

;inicializacao das variaveis (descoberta do que e 'var'):
nivel: var #0			;quantidade de levels
respUser: var #0		;resposta do usuario

;---- Inicio do Programa Principal -----
main:
	; Inicializa as variaveis Globais
	loadn r0, #0
	store nivel, r0
	loadn r4, #'z'
	load r5, respUser
	
	call ClearScreen
	call imprime_Msn0
	call digLetra
	cmp r5, r4
		call printa_tela0
	
	call digLetra
	cmp r5, r4
		call ClearScreen
		call printa_tela1
	call digLetra
	cmp r5, r4
		loadn r6, #'c'
		load r5, respUser
		cmp r5, r6
			jne final; Encerra o jogo se a tecla digitada for diferente de 0
		call ClearScreen
		call imprime_Msn1
		call Delay
		call printa_tela2
	
	call digLetra
	cmp r5, r4
		call ClearScreen
		call printa_tela3
	call digLetra
	cmp r5, r4
		loadn r6, #'d'
		load r5, respUser
		cmp r5, r6
			jne final; Encerra o jogo se a tecla digitada for diferente de 0
		call ClearScreen
		call imprime_Msn1
		call Delay
		call printa_tela4

	call digLetra
	cmp r5, r4
		call ClearScreen
		call printa_tela5
	call digLetra
	cmp r5, r4
		loadn r6, #'b'
		load r5, respUser
		cmp r5, r6
			jne final; Encerra o jogo se a tecla digitada for diferente de 0
		call ClearScreen
		call imprime_Msn1
		call Delay
		call printa_tela6
	
	call digLetra
	cmp r5, r4
		call ClearScreen
		call printa_tela7
	call digLetra
	cmp r5, r4
		loadn r6, #'a'
		load r5, respUser
		cmp r5, r6
			jne final; Encerra o jogo se a tecla digitada for diferente de 0
		call ClearScreen
		call imprime_Msn1
		call Delay
		call printa_tela8

	call digLetra
	cmp r5, r4
		call ClearScreen
		call imprime_Msn3
		call Delay
		call Delay
	jmp main
	halt
	
;---- Fim do Programa Principal -----

;********************************************************
;                   LIMPA TELA
;********************************************************
ClearScreen:
	push fr		        ;protege o registrador de flags
	push r0
	push r1
	
	loadn r0, #1200		;apaga as 1200 posicoes da tela
	loadn r1, #' '		;com "espaco"
	
	ClearScreen_Loop:
		dec r0
		outchar r1, r0
		jnz ClearScreen_Loop
			
	pop r1
	pop r0
	pop fr
	rts

;********************************************************
;          	CHAMADAS DA FUNCAO DE IMPRESSAO
;********************************************************
imprime_Msn0:	; Seleciona uma mensagem para imprimir - Digite uma palavra!
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	
	loadn r0, #0		; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #Msn0		; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #0		; Seleciona a COR da Mensagem
	
	call ClearScreen
	call ImprimeStr   ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	
	pop r2
	pop r1
	pop r0	
	pop fr
	rts
	
imprime_Msn1:	; Seleciona uma mensagem para imprimir - Digite uma palavra!!
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	
	loadn r0, #0		; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #Msn1		; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #0		; Seleciona a COR da Mensagem
	
	call ImprimeStr   ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	
	pop r2
	pop r1
	pop r0	
	pop fr
	rts
	
imprime_Msn2:	; Seleciona uma mensagem para imprimir - Digite uma palavra!!
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	
	loadn r0, #0		; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #Msn2		; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #0		; Seleciona a COR da Mensagem
	
	call ImprimeStr   ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	
	pop r2
	pop r1
	pop r0	
	pop fr
	rts
	
imprime_Msn3:	; Seleciona uma mensagem para imprimir - Digite uma palavra!!
	push fr		; Protege o registrador de flags
	push r0
	push r1
	push r2
	
	loadn r0, #0		; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #Msn3		; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #0		; Seleciona a COR da Mensagem
	
	call ImprimeStr   ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	
	pop r2
	pop r1
	pop r0	
	pop fr
	rts


;********************************************************
;                   FUNCAO DE DELAY
;********************************************************
Delay:
	push r0 
	push r2 
	loadn r2, #2000  ; a
    
    loopi:				; (dois loops de decremento conforme dicas de jogos)
		loadn r0, #2000	; b
    loopj: 
		dec r0 			 
		jnz loopj	
		dec r2
		jnz loopi
	
	pop r2
	pop r0
	
	rts

;********************************************************
;                   IMPRIME STRING
;********************************************************
ImprimeStr:
			
	push r0	; Posicao da tela que o primeiro caractere da mensagem sera' impresso
	push r1	; endereco onde comeca a mensagem
	push r2	; cor da mensagem
	push r3	; Criterio de parada
	push r4	; Recebe o codigo do caractere da Mensagem
	
	loadn r3, #'\0'	; Criterio de parada

ImprimestrLoop:	
	loadi r4, r1		; aponta para a memoria no endereco r1 e busca seu conteudo em r4
	cmp r4, r3			; compara o codigo do caractere buscado com o criterio de parada
	jeq ImprimestrSai	; goto Final da rotina
	add r4, r2, r4		; soma a cor (r2) no codigo do caractere em r4
	outchar r4, r0		; imprime o caractere cujo codigo está em r4 na posicao r0 da tela
	inc r0				; incrementa a posicao que o proximo caractere sera' escrito na tela
	inc r1				; incrementa o ponteiro para a mensagem na memoria
	jmp ImprimestrLoop	; goto Loop
	
ImprimestrSai:	
	pop r4	
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
;********************************************************
;                   DIGITE UMA LETRA
;********************************************************
digLetra:	; Espera que uma tecla seja digitada e salva na variavel global "Letra"
	push fr		; Protege o registrador de flags
	push r0
	push r1
	loadn r1, #255	; Se nao digitar nada vem 255
	
    digLetra_Loop:
		inchar r0			; Le o teclado, se nada for digitado = 255
		cmp r0, r1			;compara r0 com 255
		jeq digLetra_Loop	; Fica lendo ate' que digite uma tecla valida

	store respUser, r0			; Salva a tecla na variavel global "Letra"
	
	pop r1
	pop r0
	pop fr
	rts
	
;********************************************************
;                 IMPRIME TELA INTEIRA
;********************************************************
printa_tela0:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela0Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela0:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
			jeq loop_tela0_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
	jmp loop_tela0
		
	loop_tela0_sair:

	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
rts

;tela_instrucoes:
tela0Linha0  : string "     ******************************     "
tela0Linha1  : string "     *---------INSTRUCOES---------*     "
tela0Linha2  : string "     ******************************     "
tela0Linha3  : string "     * 1 - ESTE JOGO SE CONSISTE  *     "
tela0Linha4  : string "     * EM ENSINAR SEQUENCIAS NU-  *     "
tela0Linha5  : string "     * MERICAS, VOCE ACHA OS PA-  *     "
tela0Linha6  : string "     * DROES DAS SEQUENCIAS, ES-  *     "
tela0Linha7  : string "     * COLHE A OPCAO CORRETA E    *     "
tela0Linha8  : string "     * VAI RECEBER UMA EXPLICACAO *     "
tela0Linha9  : string "     * REFERENTE AO ASSUNTO ABOR- *     "
tela0Linha10 : string "     * DADO NAQUELA SEQUENCIA.    *     "
tela0Linha11 : string "     * 2 - VOCE TEM SOMENTE UMA   *     "
tela0Linha12 : string "     * TENTATIVA, ENTAO JOGUE COM *     "
tela0Linha13 : string "     * CUIDADO.                   *     "
tela0Linha14 : string "     * 3 - PARA PULAR AS TELAS    *     "
tela0Linha15 : string "     * APOS TE-LAS RESPONDIDO,    *     "
tela0Linha16 : string "     * PRESSIONE A LETRA z PARA   *     "
tela0Linha17 : string "     * CONTINUAR O JOGO.          *     "
tela0Linha18 : string "     * 4 - APRENDAM MUITO E DI-   *     "
tela0Linha19 : string "     * VIRTAM-SE!!!               *     "
tela0Linha20 : string "     ******************************     "
tela0Linha21 : string "     * MARCIO GUILHERME V SILVA   *     "
tela0Linha22 : string "     * N USP: 11355786            *     "
tela0Linha23 : string "     * MAURICIO JOSE DA S FILHO   *     "
tela0Linha24 : string "     * N USP: 6767052             *     "
tela0Linha25 : string "     * RAFAEL GARCIA FORTUNATO    *     "
tela0Linha26 : string "     * N USP: 11371332            *     "
tela0Linha27 : string "     ******************************     "
tela0Linha28 : string "     * 2019 NUMBER SEQUENCES V1.0 *     "
tela0Linha29 : string "     ******************************     "
	
printa_tela1:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela1Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela1:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela1_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela1
	
	loop_tela1_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_1:
tela1Linha0  : string "     ******************************     "
tela1Linha1  : string "     *                            *     "
tela1Linha2  : string "     *                            *     "
tela1Linha3  : string "     *                            *     "
tela1Linha4  : string "     *                            *     "
tela1Linha5  : string "     *    COMPLETE A SEQUENCIA:   *     "
tela1Linha6  : string "     *                            *     "
tela1Linha7  : string "     *      1, 3, 6, 10, ___      *     "
tela1Linha8  : string "     *                            *     "
tela1Linha9  : string "     *                            *     "
tela1Linha10 : string "     *    a) 11                   *     "
tela1Linha11 : string "     *                            *     "
tela1Linha12 : string "     *    b) 23                   *     "
tela1Linha13 : string "     *                            *     "
tela1Linha14 : string "     *    c) 15                   *     "
tela1Linha15 : string "     *                            *     "
tela1Linha16 : string "     *    d) 17                   *     "
tela1Linha17 : string "     *                            *     "
tela1Linha18 : string "     *                            *     "
tela1Linha19 : string "     *                            *     "
tela1Linha20 : string "     *                            *     "
tela1Linha21 : string "     *                            *     "
tela1Linha22 : string "     *                            *     "
tela1Linha23 : string "     *                            *     "
tela1Linha24 : string "     *                            *     "
tela1Linha25 : string "     *                            *     "
tela1Linha26 : string "     *                            *     "
tela1Linha27 : string "     *                            *     "
tela1Linha28 : string "     *                            *     "
tela1Linha29 : string "     ******************************     "

printa_tela2:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela2Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela2:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela2_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela2
	
	loop_tela2_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
;tela_level_1_explicacao:
tela2Linha0  : string "     ******************************     "
tela2Linha1  : string "     *                            *     "
tela2Linha2  : string "     *                            *     "
tela2Linha3  : string "     *                            *     "
tela2Linha4  : string "     *                            *     "
tela2Linha5  : string "     *                            *     "
tela2Linha6  : string "     *                            *     "
tela2Linha7  : string "     *                            *     "
tela2Linha8  : string "     *                            *     "
tela2Linha9  : string "     *    NUMEROS TRIANGULARES    *     "
tela2Linha10 : string "     *                            *     "
tela2Linha11 : string "     *Um numero triangular eh um  *     "
tela2Linha12 : string "     *numero que pode ser repre-  *     "
tela2Linha13 : string "     *sentado na forma de um      *     "
tela2Linha14 : string "     *triangulo equilatero        *     "
tela2Linha15 : string "     *                            *     "
tela2Linha16 : string "     *         *   --->    1      *     "
tela2Linha17 : string "     *                            *     "
tela2Linha18 : string "     *         *   --->    3      *     "
tela2Linha19 : string "     *        * *                 *     "
tela2Linha20 : string "     *                            *     "
tela2Linha21 : string "     *         *   --->    6      *     "
tela2Linha22 : string "     *        * *                 *     "
tela2Linha23 : string "     *       * * *                *     "
tela2Linha24 : string "     *                            *     "
tela2Linha25 : string "     *                            *     "
tela2Linha26 : string "     *                            *     "
tela2Linha27 : string "     *                            *     "
tela2Linha28 : string "     *                            *     "
tela2Linha29 : string "     ******************************     "
	
printa_tela3:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela3Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela3:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela3_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela3
	
	loop_tela3_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
;tela_level_2:
tela3Linha0  : string "     ******************************     "
tela3Linha1  : string "     *                            *     "
tela3Linha2  : string "     *                            *     "
tela3Linha3  : string "     *                            *     "
tela3Linha4  : string "     *                            *     "
tela3Linha5  : string "     *    COMPLETE A SEQUENCIA:   *     "
tela3Linha6  : string "     *                            *     "
tela3Linha7  : string "     *      1, 4, 9, 16, ___      *     "
tela3Linha8  : string "     *                            *     "
tela3Linha9  : string "     *                            *     "
tela3Linha10 : string "     *    a) 24                   *     "
tela3Linha11 : string "     *                            *     "
tela3Linha12 : string "     *    b) 32                   *     "
tela3Linha13 : string "     *                            *     "
tela3Linha14 : string "     *    c) 36                   *     "
tela3Linha15 : string "     *                            *     "
tela3Linha16 : string "     *    d) 25                   *     "
tela3Linha17 : string "     *                            *     "
tela3Linha18 : string "     *                            *     "
tela3Linha19 : string "     *                            *     "
tela3Linha20 : string "     *                            *     "
tela3Linha21 : string "     *                            *     "
tela3Linha22 : string "     *                            *     "
tela3Linha23 : string "     *                            *     "
tela3Linha24 : string "     *                            *     "
tela3Linha25 : string "     *                            *     "
tela3Linha26 : string "     *                            *     "
tela3Linha27 : string "     *                            *     "
tela3Linha28 : string "     *                            *     "
tela3Linha29 : string "     ******************************     "

	
printa_tela4:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela4Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela4:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela4_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela4
	
	loop_tela4_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_2_explicacao:
tela4Linha0  : string "     ******************************     "
tela4Linha1  : string "     *                            *     "
tela4Linha2  : string "     *                            *     "
tela4Linha3  : string "     *                            *     "
tela4Linha4  : string "     *                            *     "
tela4Linha5  : string "     *                            *     "
tela4Linha6  : string "     *                            *     "
tela4Linha7  : string "     *                            *     "
tela4Linha8  : string "     *      NUMERO QUADRADO       *     "
tela4Linha9  : string "     *                            *     "
tela4Linha10 : string "     *Um numero quadrado eh um    *     "
tela4Linha11 : string "     *numero que resulta de multi-*     "
tela4Linha12 : string "     *plicar um inteiro por ele   *     "
tela4Linha13 : string "     *mesmo.                      *     "
tela4Linha14 : string "     *O resultado representa uma  *     "
tela4Linha15 : string "     *area.                       *     "
tela4Linha16 : string "     *         *   --->    1      *     "
tela4Linha17 : string "     *                            *     "
tela4Linha18 : string "     *        * *  --->    4      *     "
tela4Linha19 : string "     *        * *                 *     "
tela4Linha20 : string "     *                            *     "
tela4Linha21 : string "     *       * * *  --->   9      *     "
tela4Linha22 : string "     *       * * *                *     "
tela4Linha23 : string "     *       * * *                *     "
tela4Linha24 : string "     *                            *     "
tela4Linha25 : string "     *                            *     "
tela4Linha26 : string "     *                            *     "
tela4Linha27 : string "     *                            *     "
tela4Linha28 : string "     *                            *     "
tela4Linha29 : string "     ******************************     "

printa_tela5:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela5Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela5:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela5_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela5
	
	loop_tela5_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_3:
tela5Linha0  : string "     ******************************     "
tela5Linha1  : string "     *                            *     "
tela5Linha2  : string "     *                            *     "
tela5Linha3  : string "     *                            *     "
tela5Linha4  : string "     *                            *     "
tela5Linha5  : string "     *    COMPLETE A SEQUENCIA:   *     "
tela5Linha6  : string "     *                            *     "
tela5Linha7  : string "     *      6, 28, 496, ___       *     "
tela5Linha8  : string "     *                            *     "
tela5Linha9  : string "     *                            *     "
tela5Linha10 : string "     *    a) 512                  *     "
tela5Linha11 : string "     *                            *     "
tela5Linha12 : string "     *    b) 8128                 *     "
tela5Linha13 : string "     *                            *     "
tela5Linha14 : string "     *    c) 1                    *     "
tela5Linha15 : string "     *                            *     "
tela5Linha16 : string "     *    d) 1024                 *     "
tela5Linha17 : string "     *                            *     "
tela5Linha18 : string "     *                            *     "
tela5Linha19 : string "     *                            *     "
tela5Linha20 : string "     *                            *     "
tela5Linha21 : string "     *                            *     "
tela5Linha22 : string "     *                            *     "
tela5Linha23 : string "     *                            *     "
tela5Linha24 : string "     *                            *     "
tela5Linha25 : string "     *                            *     "
tela5Linha26 : string "     *                            *     "
tela5Linha27 : string "     *                            *     "
tela5Linha28 : string "     *                            *     "
tela5Linha29 : string "     ******************************     "

	
printa_tela6:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela6Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela6:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela6_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela6
	
	loop_tela6_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_3_explicacao:
tela6Linha0  : string "     ******************************     "
tela6Linha1  : string "     *                            *     "
tela6Linha2  : string "     *                            *     "
tela6Linha3  : string "     *                            *     "
tela6Linha4  : string "     *                            *     "
tela6Linha5  : string "     *                            *     "
tela6Linha6  : string "     *                            *     "
tela6Linha7  : string "     *                            *     "
tela6Linha8  : string "     *      NUMERO PERFEITO       *     "
tela6Linha9  : string "     *                            *     "
tela6Linha10 : string "     *Um numero inteiro eh perfei-*     "
tela6Linha11 : string "     *to quando a soma de todos os*     "
tela6Linha12 : string "     *divisores proprios (excluin-*     "
tela6Linha13 : string "     *do ele mesmo) eh igual ao   *     "
tela6Linha14 : string "     *proprio numero.             *     "
tela6Linha15 : string "     *                            *     "
tela6Linha16 : string "     *                            *     "
tela6Linha17 : string "     *                            *     "
tela6Linha18 : string "     *                            *     "
tela6Linha19 : string "     *                            *     "
tela6Linha20 : string "     *                            *     "
tela6Linha21 : string "     *                            *     "
tela6Linha22 : string "     *                            *     "
tela6Linha23 : string "     *                            *     "
tela6Linha24 : string "     *                            *     "
tela6Linha25 : string "     *                            *     "
tela6Linha26 : string "     *                            *     "
tela6Linha27 : string "     *                            *     "
tela6Linha28 : string "     *                            *     "
tela6Linha29 : string "     ******************************     "

printa_tela7:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela7Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela7:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela7_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela7
	
	loop_tela7_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_4:
tela7Linha0  : string "     ******************************     "
tela7Linha1  : string "     *                            *     "
tela7Linha2  : string "     *                            *     "
tela7Linha3  : string "     *                            *     "
tela7Linha4  : string "     *                            *     "
tela7Linha5  : string "     *    COMPLETE A SEQUENCIA:   *     "
tela7Linha6  : string "     *                            *     "
tela7Linha7  : string "     *     29, 31, 37, 41, ___    *     "
tela7Linha8  : string "     *                            *     "
tela7Linha9  : string "     *                            *     "
tela7Linha10 : string "     *    a) 47                   *     "
tela7Linha11 : string "     *                            *     "
tela7Linha12 : string "     *    b) 49                   *     "
tela7Linha13 : string "     *                            *     "
tela7Linha14 : string "     *    c) 113                  *     "
tela7Linha15 : string "     *                            *     "
tela7Linha16 : string "     *    d) 17                   *     "
tela7Linha17 : string "     *                            *     "
tela7Linha18 : string "     *                            *     "
tela7Linha19 : string "     *                            *     "
tela7Linha20 : string "     *                            *     "
tela7Linha21 : string "     *                            *     "
tela7Linha22 : string "     *                            *     "
tela7Linha23 : string "     *                            *     "
tela7Linha24 : string "     *                            *     "
tela7Linha25 : string "     *                            *     "
tela7Linha26 : string "     *                            *     "
tela7Linha27 : string "     *                            *     "
tela7Linha28 : string "     *                            *     "
tela7Linha29 : string "     ******************************     "

printa_tela8:
	push r0
	push r1
	push r2
	push r3
	push r4
	

	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #tela8Linha0	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #2816			; Seleciona a COR da Mensagem
	loadn r3, #1160
	loadn r4, #40
	
	loop_tela8:
		call ImprimeStr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
		cmp r0, r3					; r1 = endereco onde comeca a mensagem
		jeq loop_tela8_sair
		add r0, r0, r4
		inc r1
		add r1, r1, r4
		jmp loop_tela8
	
	loop_tela8_sair:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;tela_level_4_explicacao:
tela8Linha0  : string "     ******************************     "
tela8Linha1  : string "     *                            *     "
tela8Linha2  : string "     *                            *     "
tela8Linha3  : string "     *                            *     "
tela8Linha4  : string "     *                            *     "
tela8Linha5  : string "     *                            *     "
tela8Linha6  : string "     *                            *     "
tela8Linha7  : string "     *                            *     "
tela8Linha8  : string "     *      NUMERO PRIMO          *     "
tela8Linha9  : string "     *                            *     "
tela8Linha10 : string "     *Sao numeros naturais com    *     "
tela8Linha11 : string "     *apenas dois divisores: 1 e o*     "
tela8Linha12 : string "     *proprio numero.             *     "
tela8Linha13 : string "     *                            *     "
tela8Linha14 : string "     *                            *     "
tela8Linha15 : string "     *                            *     "
tela8Linha16 : string "     *                            *     "
tela8Linha17 : string "     *                            *     "
tela8Linha18 : string "     *                            *     "
tela8Linha19 : string "     *                            *     "
tela8Linha20 : string "     *                            *     "
tela8Linha21 : string "     *                            *     "
tela8Linha22 : string "     *                            *     "
tela8Linha23 : string "     *                            *     "
tela8Linha24 : string "     *                            *     "
tela8Linha25 : string "     *                            *     "
tela8Linha26 : string "     *                            *     "
tela8Linha27 : string "     *                            *     "
tela8Linha28 : string "     *                            *     "
tela8Linha29 : string "     ******************************     "

;********************************************************
;           FUNCOS PARA FINALIZACAO DO JOGO
;********************************************************
finalizaJogo:
	call ClearScreen
	call imprime_Msn2
	call Delay
	rts
	
final:
	call finalizaJogo
	jmp main
	halt