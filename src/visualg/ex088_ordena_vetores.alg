algoritmo "Ordenar Vetores"
var
   valor : vetor[1..20] de real
   aux : real
   i, j, comp, troca, exe: inteiro

procedimento msg(x : inteiro)
inicio
   para i <- 1 at� x fa�a
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
      para i <- 1 at� 20 fa�a
         para j <- 1 at� i fa�a
            escreva(" ")
         fimpara
         //escreva(i, "� valor: ")
         valor[i] <- randi(100) //+ rand()
         escreval(valor[i]:5:2)
      fimpara
      para i <- 1 at� 19 fa�a
         para j <- (i+1) at� 20 fa�a
            comp <- comp + 1
            se (valor[i] > valor[j]) ent�o
               aux <- valor[i]
               valor[i] <- valor[j]
               valor[j] <- aux
               troca <- troca + 1
            fimse
         fimpara
      fimpara
      msg(50)
      para i <- 1 at� 20 fa�a
         para j <- 20 at� i passo -1 fa�a
            escreva(" ")
         fimpara
         escreval(valor[i]:5:2)
         //se (i % 5 = 0) ent�o
         //  escreval("  / ")
         //fimse
      fimpara
      msg(50)
      escreval("| Compara��es: ":15, comp)
      escreval("| Trocas: ":15, troca)
      msg(25)
      exe <- exe + 1
      timer 500
      escreval("| N� da repeti��es:" , exe)
      timer 0
      msg(25)
   ate (troca <= 80)
   escreval("| Total:" , exe)
   msg(25)
fimalgoritmo