algoritmo "Idade Para Dias"
var
   ano, mes, dia, anoA, mesA, diaA, dias_totais: inteiro

fun��o dias_totais(a, m, d : inteiro) : inteiro
inicio
   a <- a*365
   m <- m*30
   retorne (a + m + d)
fimfun��o

inicio
   escreval("------------------------------------")
   escreval(maiusc("  Informe a data do seu nascimento"))
   escreval("------------------------------------")
   escreva(" Ano: ")
   leia(ano)
   escreva(" Mes: ")
   leia(mes)
   escreva(" Dia: ")
   leia(dia)
   escreval
   escreval("------------------------")
   escreval(maiusc("  Informe a data atual"))
   escreval("------------------------")
   escreva(" Ano: ")
   leia(anoA)
   escreva(" Mes: ")
   leia(mesA)
   escreva(" Dia: ")
   leia(diaA)
   escreval
   escreval(" Dias totais:", dias_totais(anoA - ano, mesA - mes, diaA - dia))
   escreval
   escreval(" Obs: O c�lculo considerou o m�s com")
   escreval("      30 dias e o ano com 365 dias!")
   escreval
   escreval("-------------------------------------")
fimalgoritmo