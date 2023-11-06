algoritmo "Seletor de Pessoas"
var
   r, sexo : caracter
   idade, cor, homem, mulher: inteiro
inicio
   repita
      escreval("==============================")
      escreval("      SELETOR DE PESSOAS      ")
      escreval("==============================")
      escreva("Qual o sexo? [M/F] ")
      leia(sexo)
      escreval("------------------------------")
      escreva("Qual a idade? ")
      leia(idade)
      escreval("------------------------------")
      escreval("Qual a cor do cabelo?")
      escreval
      escreval("[1] Preto")
      escreval("[2] Castanho")
      escreval("[3] Loiro")
      escreval("[4] Ruivo")
      escreval
      escreva("Opção: ")
      leia(cor)
      escreval("------------------------------")
      se(((sexo = "m") ou (sexo = "M")) e (idade > 18) e (cor = 2))então
         homem <- homem + 1
      senão
         se(((sexo = "f") ou (sexo = "F")) e (idade >= 25) e (idade <= 30) e (cor = 3))então
            mulher <- mulher + 1
         fimse
      fimse
      escreval
      escreva("Deseja para? ")
      leia(r)
      escreval
      escreval
   até((r = "S") ou (r = "s"))
   escreval("===========================================")
   escreval("Homens com +18 anos com cabelo castanho:", homem)
   escreval("Mulheres entre 25 e 30 anos com cabelo loiro:", mulher)
   escreval("===========================================")
fimalgoritmo