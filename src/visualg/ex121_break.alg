algoritmo "semnome"
var
   i, num : inteiro
   resp : caractere

inicio

   enquanto (Verdadeiro) faça
      escreva(" num = ")
      leia(num)
      para i de 1 até num faça
         escreval("":i+1, i:0)
      fimpara
      escreval()
      escreval(" Para? [s/n]")
      escreva(" >>> ")
      leia(resp)
      resp <- minusc(resp)
      limpatela
      se (resp = "s") ou (resp = "si") ou (resp = "sim") então
         interrompa
      fimse
   fimenquanto

fimalgoritmo