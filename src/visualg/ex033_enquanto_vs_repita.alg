algoritmo "Enquanto vs Repita"
var
   i, j, soma, i2, j2, soma2 : inteiro
   resp, resp2 : caractere
inicio

   soma <- 0
   j <- 1
   repita
      escreva("Informe o", j, "� valor: ")
      leia(i)
      soma <- soma + i
      j <- j + 1
      escreva("Deseja para? [S/N] ")
      leia(resp)
      escreval
   at�(resp = "s")

   //Ele executa enquanto a condi��o seja falsa!
   //...ou seja, quando a vari�vel assume o valor na condi��o ele para!

   escreval("A soma foi de:", soma)

   escreval
   escreval("____________________________________")
   escreval

   resp2 <- "s"
   j2 <- 1
   enquanto (resp2 = "s") fa�a
      escreva("Informe o", j2, "� valor: ")
      leia(i2)
      soma2 <- soma2 + i2
      j2 <- j2 + 1
      escreva("Deseja continuar? [S/N] ")
      leia(resp2)
      escreval
   fimenquanto
   
   escreval("A soma foi de:", soma2)

   //Ele executa enquanto a condi��o seja verdadeira!
   //...ou seja, quando a vari�vel assume outro valor na condi��o ele para!

   //-----------------------------------------------------------------------

   //H� uma invers�o no valor l�gico entre esses dois controles de repeti��o!
   //Enquanto condi��o (verdadeira) fa�a (instru��es)
   //Repita (instru��es) at� condi��o (falsa)


fimalgoritmo