algoritmo "Frase Revertida"
var
   frase : caracter
   i : inteiro
inicio
   escreval(maiusc("======= Digitando ao contr�rio ======="))
   escreval
   escreva(" Escreva uma frase ou palavra: ")
   leia(frase)
   escreval
   escreva(" ", maiusc(frase), " --> ")
   para i <- compr(frase) at� 1 passo -1 fa�a
      escreva(maiusc(copia(frase, i, 1)))
   fimpara
   escreval
   escreval
   escreval("======================================")
   escreval
fimalgoritmo