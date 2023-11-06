algoritmo "Carteira"
var
   nasc, ano, idade : inteiro
inicio

   escreval("--------------------------")
   escreval(" DEPARTAMENTO DE TRANSITO")
   escreval("--------------------------")
   escreva("Ano atual (yyyy): ")
   leia(ano)
   escreva("Ano de nascimento (yyyy): ")
   leia(nasc)
   escreval

   idade <- (ano - nasc)
   escreval("-------- STATUS --------")
   escreval("IDADE: ", idade, " ANOS")
   se (idade >= 18) entao
      escreval("APTO A TIRAR CARTEIRA")
   senao
      escreval("INAPTO A TIRAR CARTEIRA")
   fimse
   escreval("------------------------")

fimalgoritmo