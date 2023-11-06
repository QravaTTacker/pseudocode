algoritmo "Ordenação de Caracteres"
var
   arr : vetor[0..26] de caractere
   copy : Caractere
   i : inteiro

procedimento dadosBase()
inicio
   // 97 ao 122
   para i de 0 até 26 faça
      arr[i] <- maiusc(carac(randi(26) + 97)))
      escreval(" |":i+2, arr[i])
   fimpara
fimprocedimento

função ordenar() : inteiro
var
   troca : logico
   vezesTroca : inteiro
inicio
   vezesTroca <- 0
   repita
      troca <- Falso
      para i de 0 até 25 faça
         se (asc(arr[i]) > asc(arr[1+i])) então
            copy <- arr[i]
            arr[i] <- arr[i+1]
            arr[i+1] <- copy
            troca <- Verdadeiro
            vezesTroca <- vezesTroca + 1
         fimse
      fimpara
   até (troca = Falso)
   retorne vezesTroca
fimfunção

procedimento resultadoFinal(valor : caractere)
inicio
   para i de 0 até 26 faça
      escreval(" |":28-i, arr[i])
   fimpara
   escreval("----------------------")
   escreval(" Número de trocas: " + valor)
fimprocedimento

inicio
   repita
      timer 0
      dadosBase()
      copy <- numpcarac(ordenar())
      resultadoFinal(copy)
      timer 200
      escreval()
      limpatela
      timer 0
   até (caracpnum(copy) <= 150)
fimalgoritmo