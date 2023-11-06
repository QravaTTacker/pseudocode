algoritmo "Função Com Parâmetros"
var
   P, S : real

função msg(x, y : real) : caracter
inicio
   se ((x + y)/2 >= 7) então
      retorne "Aprovado"
   senão
       retorne "Reprovado"
   fimse
fimfunção

inicio
   escreva("1ª Nota: ")
   leia(P)
   escreva("2ª Nota: ")
   leia(S)
   escreval(msg(P, S))
fimalgoritmo