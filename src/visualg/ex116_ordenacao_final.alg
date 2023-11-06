algoritmo "Ordenação Consciente"
var
   valor : vetor[0..99] de inteiro
   i, j, copy, comp1, comp2 : inteiro
   resp : caractere
   troca : logico

procedimento random()
inicio
   para i de 0 até 99 faça
      valor[i] <- randi(99) {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
   fimpara
   escreval()
fimprocedimento

procedimento crescente()
var
   n : inteiro
inicio
   n <- 0
   para i de 0 até 99 faça
      valor[i] <- n
      n <- n + 1
   fimpara

fimprocedimento

inicio

   repita
      random()
      //crescente()
      escreval("===============================")
      para i de 0 até 99 faça
         escreva(valor[i]:3)
         se ((i+1) % 10 = 0) então
            escreval()
         fimse
      fimpara

      // Eficiente
      comp1 <- 0
      repita
         troca <- Falso
         para j de 0 até 98 faça
            se (valor[j] > valor[j+1]) então
               copy <- valor[j]
               valor[j] <- valor[j+1]
               valor[j+1] <- copy
               troca <- Verdadeiro
            fimse
            comp1 <- comp1 + 1
         fimpara
      até (troca = Falso)

      escreval("===============================")
      para i de 0 até 99 faça
         escreva(valor[i]:3)
         se ((i+1) % 10 = 0) então
            escreval()
         fimse
      fimpara
      escreval("--------------------")
      escreval(" Eficiente:", comp1)

      // Ineficiente
      comp2 <- 0
      i <- 0
      enquanto (i <= 98) faça
         para j de 0 até 98 faça
            se (valor[j] > valor[j+1]) então
               copy <- valor[j]
               valor[j] <- valor[j+1]
               valor[j+1] <- copy
            fimse
            comp2 <- comp2 + 1
         fimpara
         i <- i + 1
      fimenquanto

      escreval("===============================")
      para i de 0 até 99 faça
         escreva(valor[i]:3)
         se ((i+1) % 10 = 0) então
            escreval()
         fimse
      fimpara
      escreval("--------------------")
      escreval(" Ineficiente:", comp2)
      escreval("===============================")
      escreval(" Diferença :", comp2 - comp1)
      escreval("===============================")
      para i de 0 até 199 faça
         escreva(" ")
      fimpara
      limpatela
   até ((comp2 - comp1) >= 1000)

fimalgoritmo