algoritmo "Truma"
var
   aluno : vetor[1..4] de caractere
   nota1, nota2, med : vetor[1..4] de real
   i, acima : inteiro
   maior, menor, med_total : real
   melhor, pior : caractere
inicio
   med_total <- 0
   acima <- 0
   menor <- 11
   maior <- 0
   para i <- 1 at� 4 fa�a
      escreva(" Nome do", i, "� aluno: ")
      leia(aluno[i])
      escreva(" 1� Nota de ", aluno[i], ": ")
      leia(nota1[i])
      escreva(" 2� Nota de ", aluno[i], ": ")
      leia(nota2[i])
      med[i] <- (nota1[i]+nota2[i])/2
      med_total <- med_total + med[i]
      se (med[i] > maior) ent�o
         maior <- med[i]
         melhor <- aluno[i]
      sen�o
         se (med[i] = maior) ent�o
            melhor <- melhor + ", " + aluno[i]
         fimse
      fimse
      se (med[i] < menor) ent�o
         menor <- med[i]
         pior <- aluno[i]
      sen�o
         se (med[i] = menor) ent�o
            pior <- pior + ", " + aluno[i]
         fimse
      fimse
      escreval()
   fimpara
   para i <- 1 at� 4 fa�a
      se (med[i] > med_total/4) ent�o
         acima <- acima + 1
      fimse
   fimpara
   limpatela
   escreval("====================================")
   escreval("         Listagem de Alunos         ")
   escreval("====================================")
   para i <- 1 ate 4 fa�a
      escreval("-----------------------")
      escreval("| Aluno: ", aluno[i])
      escreval("| M�dia: ", med[i]:5:2)
   fimpara
   escreval("----------------------------------------")
   escreval(" Melhor(es): ", maiusc(melhor))
   escreval(" Pior(es): ", maiusc(pior))
   escreval("====================================")
   escreval(" M�dia da Truma:", (med_total/4):5:2)
   escreval(" Alunos acima da m�dia:", acima)
   escreval(" Aluno abaixo da m�dia:", 4-acima)
   escreval(" Melhor m�dia:", maior:5:2)
   escreval(" Pior m�dia:", menor:5:2)
   escreval("====================================")
fimalgoritmo