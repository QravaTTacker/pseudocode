algoritmo "semnome"
tipo
   pessoa = registro
      nome : caractere
      idade : inteiro
      renda : real
      cpf : caractere
   fimregistro

var
   usr : vetor[0..2] de pessoa
   i : inteiro
inicio
mudacor("amarelo", "frente")
para i de 0 ate 2 faca
   escreval(numpcarac(i + 1) + "º Pessoa")
   escreva("Nome: ")
   leia(usr[i].nome)
   escreva("Idade: ")
   leia(usr[i].idade)
   escreva("Renda: ")
   leia(usr[i].renda)
   escreva("CPF: ")
   leia(usr[i].cpf)
   limpatela
fimpara
escreval("======================")
escreval("        Usuários      ")
escreval("======================")
para i de 0 ate 2 faca
   escreval(" - ", usr[i].nome, " idade:", usr[i].idade, " R$", usr[i].renda, " CPF ", usr[i].cpf)
fimpara
fimalgoritmo