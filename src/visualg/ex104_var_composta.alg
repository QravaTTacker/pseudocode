algoritmo "Var Composta"
var
   i, j, valor, cont, vezes : inteiro
   a : vetor[0..10, 0..10] de caractere


procedimento dados()
var
   alin, z : inteiro
inicio
   escreva("  A[", i:2, " , ",  j:2, " ]  ")
   se (i % 2 = 0) ent�o
      para z de 1 ate j faca
         escreva("-")
      fimpara
   sen�o
      para z de valor ate j passo -1 faca
         escreva("-")
      fimpara
   fimse
   se (cont <= 9) ent�o
      alin := 2
   sen�o
      se (cont <= 99) ent�o
         alin := 1
      fimse
   fimse
   escreva("---------------------")
   escreval("-> ", cont:(4-alin), "� valor: ", a[i, j]:2)
   cont := cont + 1
fimprocedimento


procedimento carregar()
var
   barra : vetor[0..9] de caractere
   random : inteiro
inicio
   para i de 0 at� 9 fa�a
      barra[i] := "#"
   fimpara
   random <- randi(2) + 1
   para i de 1 at� random fa�a
      escreva(" Carregando dados")
      para i de 0 at� 2 fa�a
         timer 200
         escreva(".")
      fimpara
      timer 0
      limpatela()
   fimpara
fimprocedimento


inicio
   vezes := 0
   repita
      vezes := vezes + 1
      cont := 1
      carregar()
      valor := randi(10)
      escreval("-------------------------")
      timer 500
      escreval(" Ordem: ", valor+1)
      escreval(" Valores: ", exp((valor+1), 2))
      timer 0
      escreval("-------------------------")
      para i de 0 at� valor fa�a
         para j de 0 at� valor fa�a
            a[i, j] := numpcarac(randi(10))
            dados()
         fimpara
      fimpara
      escreval("-------------------------")
      escreval()
      para i de 0 at� valor fa�a
         escreva(" ")
         para j de 1 at� i passo 1 fa�a
            escreva("   ")
         fimpara
         para j de 0 at� valor fa�a
            escreva(a[i, j]:3)
         fimpara
         escreval()
      fimpara
      escreval()
      escreval("-------------------------")
      timer 800
      escreval(" Linhas: ", valor+1)
      escreval("-------------------------")
      timer 0
      limpatela()
   at� n�o(valor <> 9)
   para i de 0 at� valor fa�a
      para j de 0 at� valor fa�a
         se (i = 0) ou (j = 0) ou (j = valor) ou (i = valor) ou (i = j) ou (i+j = valor + 1) ent�o
            a[i, j] := "#"
         sen�o
            a[i, j] := "."
         fimse
      fimpara
   fimpara
   escreval("-------------------------")
   escreval(" Vezes de execu��o: ", vezes)
   escreval("-----------------------------------------------------------------")
   escreval()
   para i de 0 at� valor fa�a
      escreva(" ")
      para j de valor at� i passo -1 fa�a
         escreva("   ")
      fimpara
      para j de 0 at� valor fa�a
         escreva(a[i, j]:3)
      fimpara
      escreval()
   fimpara
   escreval()
   escreval("-----------------------------------------------------------------")
fimalgoritmo