algoritmo "Tri�ngulo de Pascal"
var
   vet : vetor[1..25, 1..25] de inteiro
   i, j, n, vezes: inteiro



procedimento space(valor, i : inteiro)
inicio
   para j de valor at� i+1 passo -1 fa�a
      escreva("   ")
   fimpara
fimprocedimento



funcao continuar() : logico
var
   resp : caractere
inicio
   escreval()
   escreval(" Para? [s/n] ")
   escreva(" >>> ")
   leia(resp)
   resp <- minusc(resp)
   limpatela
   se (resp = "s") ou (resp = "si") ou (resp = "sim") ent�o
      retorne Verdadeiro
   sen�o
      retorne Falso
   fimse
fimfuncao



funcao linhas() : inteiro
var
   usr_n : inteiro
inicio
   repita
      escreval(" Linhas (de 1 a 25): ")
      escreva(" >>> ")
      leia(usr_n)
      limpatela
   at� (usr_n <= 25) e (usr_n >= 1)
   retorne usr_n
fimfuncao



inicio

   vezes <- 0
   repita
      vezes <- vezes + 1
      n <- vezes //linhas()
      escreval()
      para i de 1 at� n faca
         space(n, i)
         para j de 1 at� i faca
            se (i >= 3) e (j >= 2) ent�o
               vet[i, j] <- vet[(i-1), j] + vet[(i-1), (j-1)]
            sen�o
               vet[i, j] <- 1
            fimse
            escreva(vet[i, j]:6)
         fimpara
         escreval()
      fimpara
      escreval()
      escreval("-------------")
      escreval(" -> ", vezes)
      timer 400
      limpatela
      timer 0
   at� (vezes = 25) //(continuar() = Verdadeiro)

fimalgoritmo