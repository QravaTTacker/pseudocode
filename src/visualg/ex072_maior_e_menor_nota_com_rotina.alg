algoritmo "Maior e Menor Nota Com Rotinas"
var
   resp, nome, materia, turma: caractere
   alunos : inteiro



procedimento painel2(nome2, materia2, turma2 : caractere; alunos2 : inteiro)
inicio
   escreval("===========================================")
   escreval(" Instituição: ", maiusc(nome2))
   escreval(" Componente: ", maiusc(materia2))
   escreval(" Turma: ", maiusc(turma2))
   escreval(" Nº de alunos: ", numpcarac(alunos2), maiusc(" alunos"))
   escreval("===========================================")
   escreval
   escreval("                 REGISTROS                 ")
   escreval
fimprocedimento


procedimento painel(nome, materia, turma : caractere; alunos : inteiro)
var
   aluno, melhor_aluno, pior_aluno : caracter
   nota, melhor_nota, pior_nota: real
   i : inteiro
inicio
   para i <- 1 até alunos faça
      painel2(nome, materia, turma, alunos)
      escreva(" Nome do ", i:1:0, "º aluno: ")
      leia(aluno)
      escreva(" Nota: ")
      leia(nota)
      se (i = 1) então
         melhor_aluno  <- aluno
         pior_aluno <- aluno
         melhor_nota  <- nota
         pior_nota <- nota
      senão
         se(nota < pior_nota) então
            pior_nota <- nota
            pior_aluno <- aluno
         senão
            se (nota = pior_nota) então
               pior_aluno <- pior_aluno + ", " + aluno
               pior_nota <- nota
            fimse
         fimse
         se (nota > melhor_nota) então
            melhor_nota <- nota
            melhor_aluno <- aluno
         senão
            se (nota = melhor_nota) então
               melhor_aluno <- melhor_aluno + ", " + aluno
               melhor_nota <- nota
            fimse
         fimse
      fimse
      limpatela
   fimpara
   painel2(nome, materia, turma, alunos)
   escreval("-------------------------------------------")
   escreval
   escreval(" Melhor aluno: ", melhor_aluno, " com", melhor_nota, " pontos.")
   escreval(" Pior aluno: ", pior_aluno, " com", pior_nota, " pontos.")
   escreval
   escreval("===========================================")
fimprocedimento



inicio
   repita
      escreval("================================")
      escreva(" Nome da instituição: ")
      leia(nome)
      escreva(" Componente: ")
      leia(materia)
      escreva(" Turma: ")
      leia(turma)
      escreva(" Quantidade de alunos: ")
      leia(alunos)
      limpatela
      painel(nome, materia, turma, alunos)
      escreva(" Para? [sim/não] ")
      leia(resp)
      limpatela
   até((resp = "sim") ou (resp = "SIM") ou (resp = "s") ou (resp = "S"))
fimalgoritmo