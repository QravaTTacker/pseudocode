algoritmo "Operadores Lógicos e Relacionais"
var
   a, b, c : inteiro
inicio

   //Relacionais

   a <- 2
   b <- 3
   c <- 5

   escreval("-------------------------")

   escreval(a <> b)   //Verdadeiro
   escreval(a = b)   //Falso
   escreval(a >= 2)  //Verdadeiro
   escreval(c <= a + b - 2)   //Falso

   escreval("-------------------------")

   //Lógicos
   escreval((b = 3)e(a >= 2))        //V e V = Verdadeiro
   escreval((a > b)ou(c = a+b))    //F ou V = Verdadeiro
   escreval((a + 1 = 3)e(a <> 2))      //V e F = Falso
   escreval((c > 6)ou(c <> 5))         // F ou F = Falso

fimalgoritmo