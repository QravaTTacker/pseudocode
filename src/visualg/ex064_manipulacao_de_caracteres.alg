algoritmo "Manipula��o De Caracteres"
var
   T, T2: caracter
   C, C2: inteiro
inicio
   escreva(" Digite uma letra: ")
   leia(T)
   escreval(" O c�digo ASCII de ", T,  " �", asc(T))
   escreval
   escreva(" Digite um c�digo ASCII: ")
   leia(C)
   escreval(" O caractere do c�digo", C, " � ", carac(C))
   escreval
   escreva(" Digite o seu primeiro nome: ")
   leia(T2)
   escreval(" O seu nome tem", compr(T2), " letras!")
   escreval(" A pen�ltima letra do seu nome � '", copia(T2, compr(T2)-1, 1), "'")
   //escreval(copia("Eduardo", 1, 3)) = "Edu"
   escreval(" Seu nome em mai�sculas: ", maiusc(T2))
   escreval(" seu nome em min�sculas: ", minusc(T2))
   escreval
   escreva(" Digite um n�mero: ")
   leia(C)
   escreva(" Digite um segundo n�mero: ")
   leia(C2)
   escreval(" A soma �", C + C2)
   escreval(" A uni�o � ", numpcarac(C) + numpcarac(C2))
   escreval
   T <- "5"
   T2 <- "5"
   escreval(" A uni�o � ", T + T2)
   escreval(" A soma �", caracpnum(T) + caracpnum(T2))
   escreval
   escreval(pos("h", "matheus"))
   escreval(pos("H", "matheus"))
   escreval(pos("a", "Gabriela"))
fimalgoritmo