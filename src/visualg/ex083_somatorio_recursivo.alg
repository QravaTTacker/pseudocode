algoritmo "Somat�rio Recursivo"
var
   x : inteiro
funcao somatorio(y : inteiro) : inteiro
inicio
   se ((y = 1) ou (y = 0)) ent�o
      retorne y
   sen�o
      retorne y + somatorio(y-1)
   fimse
fimfuncao
inicio
   escreva(" Limite do somat�rio: ")
   leia(x)
   escreval
   se ((x > 250) ou (x < -200)) ent�o
      escreval(" Limite permitido: (-200 <= x <= 250)")
   sen�o
      se (x >= 0) ent�o
         escreval(" Soma de 0 at�", x, " :", somatorio(x))
      sen�o
         x <- x*(-1)
         escreval(" Soma de 0 at�", -x, " :", -somatorio(x))
      fimse
   fimse
fimalgoritmo