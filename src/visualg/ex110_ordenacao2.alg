algoritmo "Ordena��o 2.0"
var
   vet : vetor[1..10] de inteiro
   i, j, k, aux, num, troca: inteiro


procedimento dados (pNum, pTroca : inteiro)
inicio
   escreval(" Verifica��es:", pNum)
   escreval(" Trocas:", pTroca)
   escreval()
   //timer 300
   para i de 1 at� 10 fa�a
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
   para h de 1 at� valor fa�a
      escreva("=")
   fimpara
   escreval(">", valor)
fimprocedimento


inicio
   repita
      para i de 1 at� 10 fa�a
         vet[i] := randi(10) + 1
      fimpara

      num <- 0
      troca <- 0

      para i de 1 at� 10 fa�a
         para j de 1 at� 10 fa�a
         
            se (vet[i] > vet[j]) ent�o
               aux <- vet[i]
               vet[i] <- vet[j]
               vet[j] <- aux
               troca <- troca + 1

               para k de 1 at� 10 fa�a
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
   at� (troca <= 100)
fimalgoritmo