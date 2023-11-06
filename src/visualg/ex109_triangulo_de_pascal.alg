algoritmo "Triângulo de Pascal"
var
   vet : vetor[1..25, 1..25] de inteiro
   i, j, n, vezes: inteiro



procedimento space(valor, i : inteiro)
inicio
   para j de valor até i+1 passo -1 faça
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
   se (resp = "s") ou (resp = "si") ou (resp = "sim") então
      retorne Verdadeiro
   senão
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
   até (usr_n <= 25) e (usr_n >= 1)
   retorne usr_n
fimfuncao



inicio

   vezes <- 0
   repita
      vezes <- vezes + 1
      n <- vezes //linhas()
      escreval()
      para i de 1 até n faca
         space(n, i)
         para j de 1 até i faca
            se (i >= 3) e (j >= 2) então
               vet[i, j] <- vet[(i-1), j] + vet[(i-1), (j-1)]
            senão
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
   até (vezes = 25) //(continuar() = Verdadeiro)

fimalgoritmo