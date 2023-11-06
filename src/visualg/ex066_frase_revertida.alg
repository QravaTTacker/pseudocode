algoritmo "Frase Revertida"
var
   frase : caracter
   i : inteiro
inicio
   escreval(maiusc("======= Digitando ao contrário ======="))
   escreval
   escreva(" Escreva uma frase ou palavra: ")
   leia(frase)
   escreval
   escreva(" ", maiusc(frase), " --> ")
   para i <- compr(frase) até 1 passo -1 faça
      escreva(maiusc(copia(frase, i, 1)))
   fimpara
   escreval
   escreval
   escreval("======================================")
   escreval
fimalgoritmo