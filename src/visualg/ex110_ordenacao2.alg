algoritmo "Ordenação 2.0"
var
   vet : vetor[1..10] de inteiro
   i, j, k, aux, num, troca: inteiro


procedimento dados (pNum, pTroca : inteiro)
inicio
   escreval(" Verificações:", pNum)
   escreval(" Trocas:", pTroca)
   escreval()
   //timer 300
   para i de 1 até 10 faça
     // timer 0
      barra(vet[i])
   fimpara
fimprocedimento


procedimento clr(temp : inteiro)
inicio
   timer temp
   limpatela
   timer 0
fimprocedimento


procedimento barra(valor : inteiro)
var
   h : inteiro
inicio
   para h de 1 até valor faça
      escreva("=")
   fimpara
   escreval(">", valor)
fimprocedimento


inicio
   repita
      para i de 1 até 10 faça
         vet[i] := randi(10) + 1
      fimpara

      num <- 0
      troca <- 0

      para i de 1 até 10 faça
         para j de 1 até 10 faça
         
            se (vet[i] > vet[j]) então
               aux <- vet[i]
               vet[i] <- vet[j]
               vet[j] <- aux
               troca <- troca + 1

               para k de 1 até 10 faça
                  barra(vet[k])
               fimpara
               limpatela
               //clr(100)
            fimse
            num <- num + 1

         fimpara
      fimpara

      dados(num, troca)

      //clr(800)
   até (troca <= 100)
fimalgoritmo