algoritmo "Lista I"
var
   i, primeiroValor, segundoValor, cont : inteiro

procedimento separar(valor : inteiro)
inicio
   escreval()
   para i := 1 at� abs(valor) fa�a
      escreva("=")
   fimpara
   escreval()
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q1()
inicio
   i <- 1
   repita
      escreva(i:3)
      i <- i + 1
   at� (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) fa�a
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 1 at� 10 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q2()
inicio
   i <- 10
   enquanto (i >= 1) fa�a
      escreva(i:3)
      i <- i - 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 10 at� 1 passo -1 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q3()
inicio
   i <- 5
   repita
      escreva(i:3)
      i <- i + 1
   at� (i > 15)
   escreval()/////////////////////////////
   i <- 5
   enquanto (i <= 15) fa�a
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 5 at� 15 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q4()
inicio
   i <- 15
   repita
      escreva(i:3)
      i <- i - 1
   at� (i < 5)
   escreval()/////////////////////////////
   i <- 15
   enquanto (i >= 5) fa�a
      escreva(i:3)
      i <- i - 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 15 at� 5 passo -1 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q5()
inicio
   i <- 1
   repita
      se n�o(i mod 2 = 1) ent�o
         escreva(i:3)
      fimse
      i <- i + 1
   at� (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) fa�a
      se (i mod 2 <> 1) ent�o
         escreva(i:3)
      fimse
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 at� 10 fa�a
      se (i mod 2 = 0) ent�o
         escreva(i:3)
      fimse
   fimpara
   separar(35)////////////////////////////////////////////////
   i <- 2
   repita
      escreva(i:3)
      i <- i + 2
   at� (i > 10)
   escreval()/////////////////////////////
   i <- 2
   enquanto (i <= 10) fa�a
      escreva(i:3)
      i <- i + 2
   fimenquanto
   escreval()/////////////////////////////
   para i de 2 at� 10 passo 2 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q6()
inicio
   i <- 1
   repita
      se n�o(i mod 2 = 0) entao
         escreva(i:3)
      fimse
      i <- i + 1
   at� (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) fa�a
      se (i mod 2 <> 0) ent�o
         escreva(i:3)
      fimse
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 at� 10 fa�a
      se n�o(i mod 2 = 0) ent�o
         escreva(i:3)
      fimse
   fimpara
   separar(35)////////////////////////////////////////////////
   i <- 1
   repita
      escreva(i:3)
      i <- i + 2
   at� (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) fa�a
      escreva(i:3)
      i <- i + 2
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 ate 10 passo 2 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q7()
inicio
   repita
      escreval(" Obs: valor = {n � I | n > 0} ")
      escreva(" Valor: ")
      leia(primeiroValor)
   at� (primeiroValor <> 0)
   escreval("-------------")
   i <- 1
   repita
      escreva(i:3)
      i <- i + 1
   at� (i > abs(primeiroValor))
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= abs(primeiroValor)) fa�a
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 1 at� abs(primeiroValor) fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q8()
inicio
   repita
      escreval(" Obs: valor = {n � Z | n < 10} ")
      escreva(" Valor: ")
      leia(primeiroValor)
   at� (primeiroValor < 10)
   escreval("-------------")
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + 1
   at� (i > 10)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <= 10) fa�a
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor at� 10 fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q9()
inicio
   repita
      escreval(" Obs: 1� valor = {n � Z | n < m} ")
      escreva(" 1� valor: ")
      leia(primeiroValor)
      escreval(" Obs: 2� valor = {m � Z | m > n} ")
      escreva(" 2� valor: ")
      leia(segundoValor)
   at� (primeiroValor < segundoValor)
   escreval("-------------")
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + 1
   at� (i > segundoValor)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <= segundoValor) fa�a
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor at� segundoValor fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q10()
var
   fator : inteiro
inicio
   repita
      escreva(" Valor inicial: ")
      leia(primeiroValor)
      escreva(" Valor final: ")
      leia(segundoValor)
   at� (primeiroValor <> segundoValor)
   escreval("-------------")
   se (primeiroValor < segundoValor) ent�o
      i <- primeiroValor
      repita
         escreva(i:3)
         i <- i + 1
      at� (i > segundoValor)
      escreval()/////////////////////////////
      i <- primeiroValor
      enquanto (i <= segundoValor) fa�a
         escreva(i:3)
         i <- i + 1
      fimenquanto
      escreval()/////////////////////////////
      para i de primeiroValor at� segundoValor passo 1 fa�a
         escreva(i:3)
      fimpara
   sen�o
      i <- primeiroValor
      repita
         escreva(i:3)
         i <- i - 1
      at� (i < segundoValor)
      escreval()/////////////////////////////
      i <- primeiroValor
      enquanto (i >= segundoValor) fa�a
         escreva(i:3)
         i <- i - 1
      fimenquanto
      escreval()/////////////////////////////
      para i de primeiroValor at� segundoValor passo -1 fa�a
         escreva(i:3)
      fimpara
   fimse
   separar(35)////////////////////////////////////////////////
   fator <- 1
   repita
      escreva(" Valor inicial: ")
      leia(primeiroValor)
      escreva(" Valor final: ")
      leia(segundoValor)
   at� (primeiroValor <> segundoValor)
   escreval("-------------")
   se (primeiroValor > segundoValor) ent�o
      fator <- -1
   fimse
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + (1*fator)
   at� (i = segundoValor+fator)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <> (segundoValor+fator)) fa�a
      escreva(i:3)
      i <- i + (1*fator)
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor at� segundoValor passo (1*fator) fa�a
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
inicio
   cont <- 1
   repita
      separar(35)
      q1()
      separar(35)
      q2()
      separar(35)
      q3()
      separar(35)
      q4()
      separar(35)
      q5()
      separar(35)
      q6()
      separar(35)
      q7()
      separar(35)
      q8()
      separar(35)
      q9()
      separar(35)
      q10()
      separar(35)
      cont <- cont + 1
      timer 500
      limpatela
      timer 0
   at� (cont > 5)
fimalgoritmo