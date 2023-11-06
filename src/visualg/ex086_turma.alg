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
   para i <- 1 até 4 faça
      escreva(" Nome do", i, "º aluno: ")
      leia(aluno[i])
      escreva(" 1ª Nota de ", aluno[i], ": ")
      leia(nota1[i])
      escreva(" 2ª Nota de ", aluno[i], ": ")
      leia(nota2[i])
      med[i] <- (nota1[i]+nota2[i])/2
      med_total <- med_total + med[i]
      se (med[i] > maior) então
         maior <- med[i]
         melhor <- aluno[i]
      senão
         se (med[i] = maior) então
            melhor <- melhor + ", " + aluno[i]
         fimse
      fimse
      se (med[i] < menor) então
         menor <- med[i]
         pior <- aluno[i]
      senão
         se (med[i] = menor) então
            pior <- pior + ", " + aluno[i]
         fimse
      fimse
      escreval()
   fimpara
   para i <- 1 até 4 faça
      se (med[i] > med_total/4) então
         acima <- acima + 1
      fimse
   fimpara
   limpatela
   escreval("====================================")
   escreval("         Listagem de Alunos         ")
   escreval("====================================")
   para i <- 1 ate 4 faça
      escreval("-----------------------")
      escreval("| Aluno: ", aluno[i])
      escreval("| Média: ", med[i]:5:2)
   fimpara
   escreval("----------------------------------------")
   escreval(" Melhor(es): ", maiusc(melhor))
   escreval(" Pior(es): ", maiusc(pior))
   escreval("====================================")
   escreval(" Média da Truma:", (med_total/4):5:2)
   escreval(" Alunos acima da média:", acima)
   escreval(" Aluno abaixo da média:", 4-acima)
   escreval(" Melhor média:", maior:5:2)
   escreval(" Pior média:", menor:5:2)
   escreval("====================================")
fimalgoritmo