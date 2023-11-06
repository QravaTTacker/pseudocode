algoritmo "Ordenar Vetores"
var
   valor : vetor[1..20] de real
   aux : real
   i, j, comp, troca, exe: inteiro

procedimento msg(x : inteiro)
inicio
   para i <- 1 até x faça
      escreva("=")
   fimpara
   escreval
fimprocedimento

inicio
   exe <- 0
   msg(50)
   repita
      comp <- 0
      troca <- 0
      para i <- 1 até 20 faça
         para j <- 1 até i faça
            escreva(" ")
         fimpara
         //escreva(i, "º valor: ")
         valor[i] <- randi(100) //+ rand()
         escreval(valor[i]:5:2)
      fimpara
      para i <- 1 até 19 faça
         para j <- (i+1) até 20 faça
            comp <- comp + 1
            se (valor[i] > valor[j]) então
               aux <- valor[i]
               valor[i] <- valor[j]
               valor[j] <- aux
               troca <- troca + 1
            fimse
         fimpara
      fimpara
      msg(50)
      para i <- 1 até 20 faça
         para j <- 20 até i passo -1 faça
            escreva(" ")
         fimpara
         escreval(valor[i]:5:2)
         //se (i % 5 = 0) então
         //  escreval("  / ")
         //fimse
      fimpara
      msg(50)
      escreval("| Comparações: ":15, comp)
      escreval("| Trocas: ":15, troca)
      msg(25)
      exe <- exe + 1
      timer 500
      escreval("| Nº da repetições:" , exe)
      timer 0
      msg(25)
   ate (troca <= 80)
   escreval("| Total:" , exe)
   msg(25)
fimalgoritmo