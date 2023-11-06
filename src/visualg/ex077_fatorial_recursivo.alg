algoritmo "Fatorial Recursivo"
var
   valor : inteiro

funcao fator(v : inteiro) : inteiro
inicio
   se ((v = 0) ou (v = 1)) então
      retorne 1
   senão
      retorne v * fator(v-1)
   fimse
fimfuncao

inicio
   escreva(" Fatorial de n: ")
   leia(valor)
   escreval
   escreval(valor, "! =", fator(valor))
fimalgoritmo