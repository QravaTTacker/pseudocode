algoritmo "Perda de Massa Com Função"
var
   massa : real



função perda(massa : real) : inteiro
var
   temp : inteiro
inicio
   temp <- 0
   enquanto (massa >= 0.5) faça
      massa <- massa/2
      temp <- temp + 50
   fimenquanto
   retorne temp
fimfunção



procedimento tempo_total(temp : inteiro)
var
   hora, min, seg : inteiro
inicio
   hora <- int(temp/3600)
   min <- int((temp - (hora*3600))/60)
   seg <- temp - (hora*3600) - (min*60)
   escreval
   escreval(" Para massa ficar menor ou igual à 0.5g, levará:")
   escreval
   escreval("    ", hora:2:0, " horas, ", min:1:0, " minutos e ", seg:1:0, " segundos.")
fimprocedimento



inicio
   escreva(" Informe a massa do produto (g): ")
   leia(massa)
   tempo_total(perda(massa))
fimalgoritmo