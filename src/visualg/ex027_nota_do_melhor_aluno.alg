algoritmo "Nota Do Melhor Aluno"
var

   i, n_alunos: inteiro
   nome, aluno_max : caracter
   nota, nota_max, media, soma_nota, media_total : real

inicio

   i <- 1
   n_alunos <- 0
   nota <- 0
   nota_max <- 0
   soma_nota <- 0
   media_total <- 0

   escreva("Quantos alunos a turma tem? ")
   leia(n_alunos)
   escreval
   escreval("-----------------------")

   enquanto (i <= n_alunos) faça

      escreva("Nome do aluno: ")
      leia(nome)
      escreva("Nota de ", nome, ": ")
      leia(nota)

      soma_nota <- soma_nota + nota

      escreval

      se (nota > nota_max) então
         nota_max <- nota
         aluno_max <- nome
      senão
         se (nota = nota_max) então
         aluno_max <- aluno_max + " | " + nome
         fimse
      fimse

      i <- i + 1
   fimenquanto

   escreval("-----------------------------------")
   escreval

   media_total <- soma_nota/n_alunos

   escreval("MAIOR NOTA:", nota_max, " do aluno ", aluno_max)
   escreval("MÉDIA TOTAL: ", media_total:3:2)

   escreval
   escreva("-----------------------------------")


fimalgoritmo