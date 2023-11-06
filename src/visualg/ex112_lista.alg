algoritmo "Lista I"
var
   i, primeiroValor, segundoValor, cont : inteiro

procedimento separar(valor : inteiro)
inicio
   escreval()
   para i := 1 até abs(valor) faça
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
   até (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) faça
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 1 até 10 faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q2()
inicio
   i <- 10
   enquanto (i >= 1) faça
      escreva(i:3)
      i <- i - 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 10 até 1 passo -1 faça
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
   até (i > 15)
   escreval()/////////////////////////////
   i <- 5
   enquanto (i <= 15) faça
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 5 até 15 faça
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
   até (i < 5)
   escreval()/////////////////////////////
   i <- 15
   enquanto (i >= 5) faça
      escreva(i:3)
      i <- i - 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 15 até 5 passo -1 faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q5()
inicio
   i <- 1
   repita
      se não(i mod 2 = 1) então
         escreva(i:3)
      fimse
      i <- i + 1
   até (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) faça
      se (i mod 2 <> 1) então
         escreva(i:3)
      fimse
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 até 10 faça
      se (i mod 2 = 0) então
         escreva(i:3)
      fimse
   fimpara
   separar(35)////////////////////////////////////////////////
   i <- 2
   repita
      escreva(i:3)
      i <- i + 2
   até (i > 10)
   escreval()/////////////////////////////
   i <- 2
   enquanto (i <= 10) faça
      escreva(i:3)
      i <- i + 2
   fimenquanto
   escreval()/////////////////////////////
   para i de 2 até 10 passo 2 faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q6()
inicio
   i <- 1
   repita
      se não(i mod 2 = 0) entao
         escreva(i:3)
      fimse
      i <- i + 1
   até (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) faça
      se (i mod 2 <> 0) então
         escreva(i:3)
      fimse
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 até 10 faça
      se não(i mod 2 = 0) então
         escreva(i:3)
      fimse
   fimpara
   separar(35)////////////////////////////////////////////////
   i <- 1
   repita
      escreva(i:3)
      i <- i + 2
   até (i > 10)
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= 10) faça
      escreva(i:3)
      i <- i + 2
   fimenquanto
   escreval()/////////////////////////////
   para i de 1 ate 10 passo 2 faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q7()
inicio
   repita
      escreval(" Obs: valor = {n £ I | n > 0} ")
      escreva(" Valor: ")
      leia(primeiroValor)
   até (primeiroValor <> 0)
   escreval("-------------")
   i <- 1
   repita
      escreva(i:3)
      i <- i + 1
   até (i > abs(primeiroValor))
   escreval()/////////////////////////////
   i <- 1
   enquanto (i <= abs(primeiroValor)) faça
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i := 1 até abs(primeiroValor) faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q8()
inicio
   repita
      escreval(" Obs: valor = {n £ Z | n < 10} ")
      escreva(" Valor: ")
      leia(primeiroValor)
   até (primeiroValor < 10)
   escreval("-------------")
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + 1
   até (i > 10)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <= 10) faça
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor até 10 faça
      escreva(i:3)
   fimpara
fimprocedimento
/////////////////////////////////////////////////////////////////////
procedimento q9()
inicio
   repita
      escreval(" Obs: 1º valor = {n £ Z | n < m} ")
      escreva(" 1º valor: ")
      leia(primeiroValor)
      escreval(" Obs: 2º valor = {m £ Z | m > n} ")
      escreva(" 2º valor: ")
      leia(segundoValor)
   até (primeiroValor < segundoValor)
   escreval("-------------")
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + 1
   até (i > segundoValor)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <= segundoValor) faça
      escreva(i:3)
      i <- i + 1
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor até segundoValor faça
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
   até (primeiroValor <> segundoValor)
   escreval("-------------")
   se (primeiroValor < segundoValor) então
      i <- primeiroValor
      repita
         escreva(i:3)
         i <- i + 1
      até (i > segundoValor)
      escreval()/////////////////////////////
      i <- primeiroValor
      enquanto (i <= segundoValor) faça
         escreva(i:3)
         i <- i + 1
      fimenquanto
      escreval()/////////////////////////////
      para i de primeiroValor até segundoValor passo 1 faça
         escreva(i:3)
      fimpara
   senão
      i <- primeiroValor
      repita
         escreva(i:3)
         i <- i - 1
      até (i < segundoValor)
      escreval()/////////////////////////////
      i <- primeiroValor
      enquanto (i >= segundoValor) faça
         escreva(i:3)
         i <- i - 1
      fimenquanto
      escreval()/////////////////////////////
      para i de primeiroValor até segundoValor passo -1 faça
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
   até (primeiroValor <> segundoValor)
   escreval("-------------")
   se (primeiroValor > segundoValor) então
      fator <- -1
   fimse
   i <- primeiroValor
   repita
      escreva(i:3)
      i <- i + (1*fator)
   até (i = segundoValor+fator)
   escreval()/////////////////////////////
   i <- primeiroValor
   enquanto (i <> (segundoValor+fator)) faça
      escreva(i:3)
      i <- i + (1*fator)
   fimenquanto
   escreval()/////////////////////////////
   para i de primeiroValor até segundoValor passo (1*fator) faça
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
   até (cont > 5)
fimalgoritmo