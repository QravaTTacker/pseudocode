algoritmo "Ordena��o de Caracteres"
var
   arr : vetor[0..26] de caractere
   copy : Caractere
   i : inteiro

procedimento dadosBase()
inicio
   // 97 ao 122
   para i de 0 at� 26 fa�a
      arr[i] <- maiusc(carac(randi(26) + 97)))
      escreval(" |":i+2, arr[i])
   fimpara
fimprocedimento

fun��o ordenar() : inteiro
var
   troca : logico
   vezesTroca : inteiro
inicio
   vezesTroca <- 0
   repita
      troca <- Falso
      para i de 0 at� 25 fa�a
         se (asc(arr[i]) > asc(arr[1+i])) ent�o
            copy <- arr[i]
            arr[i] <- arr[i+1]
            arr[i+1] <- copy
            troca <- Verdadeiro
            vezesTroca <- vezesTroca + 1
         fimse
      fimpara
   at� (troca = Falso)
   retorne vezesTroca
fimfun��o

procedimento resultadoFinal(valor : caractere)
inicio
   para i de 0 at� 26 fa�a
      escreval(" |":28-i, arr[i])
   fimpara
   escreval("----------------------")
   escreval(" N�mero de trocas: " + valor)
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
   at� (caracpnum(copy) <= 150)
fimalgoritmo