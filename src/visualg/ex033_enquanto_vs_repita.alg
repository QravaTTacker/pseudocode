algoritmo "Enquanto vs Repita"
var
   i, j, soma, i2, j2, soma2 : inteiro
   resp, resp2 : caractere
inicio

   soma <- 0
   j <- 1
   repita
      escreva("Informe o", j, "º valor: ")
      leia(i)
      soma <- soma + i
      j <- j + 1
      escreva("Deseja para? [S/N] ")
      leia(resp)
      escreval
   até(resp = "s")

   //Ele executa enquanto a condição seja falsa!
   //...ou seja, quando a variável assume o valor na condição ele para!

   escreval("A soma foi de:", soma)

   escreval
   escreval("____________________________________")
   escreval

   resp2 <- "s"
   j2 <- 1
   enquanto (resp2 = "s") faça
      escreva("Informe o", j2, "º valor: ")
      leia(i2)
      soma2 <- soma2 + i2
      j2 <- j2 + 1
      escreva("Deseja continuar? [S/N] ")
      leia(resp2)
      escreval
   fimenquanto
   
   escreval("A soma foi de:", soma2)

   //Ele executa enquanto a condição seja verdadeira!
   //...ou seja, quando a variável assume outro valor na condição ele para!

   //-----------------------------------------------------------------------

   //Há uma inversão no valor lógico entre esses dois controles de repetição!
   //Enquanto condição (verdadeira) faça (instruções)
   //Repita (instruções) até condição (falsa)


fimalgoritmo