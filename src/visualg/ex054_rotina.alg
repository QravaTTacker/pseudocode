algoritmo "Rotina - Procedimento"
var
   i: inteiro
   nome, pesada : caractere
   massa, massa_maior : real
procedimento topo ()
inicio
   limpatela
   escreval("----------------------------------")
   escreval("        Detector de Pesado        ")
   escreval("----------------------------------")
fimprocedimento
inicio
   topo()
   para i <- 1 até 3 faça
      escreva(" Nome: ")
      leia(nome)
      escreva(" Massa: ")
      leia(massa)
      se ((massa >= massa_maior) ou (i = 1)) então
         massa_maior <- massa
         pesada <- nome
      fimse
      topo()
   fimpara
   topo()
   escreval(" ", pesada, " possui a maior massa, com", massa_maior, " kg")
fimalgoritmo