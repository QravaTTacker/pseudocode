algoritmo "Manipulação De Caracteres"
var
   T, T2: caracter
   C, C2: inteiro
inicio
   escreva(" Digite uma letra: ")
   leia(T)
   escreval(" O código ASCII de ", T,  " é", asc(T))
   escreval
   escreva(" Digite um código ASCII: ")
   leia(C)
   escreval(" O caractere do código", C, " é ", carac(C))
   escreval
   escreva(" Digite o seu primeiro nome: ")
   leia(T2)
   escreval(" O seu nome tem", compr(T2), " letras!")
   escreval(" A penúltima letra do seu nome é '", copia(T2, compr(T2)-1, 1), "'")
   //escreval(copia("Eduardo", 1, 3)) = "Edu"
   escreval(" Seu nome em maiúsculas: ", maiusc(T2))
   escreval(" seu nome em minúsculas: ", minusc(T2))
   escreval
   escreva(" Digite um número: ")
   leia(C)
   escreva(" Digite um segundo número: ")
   leia(C2)
   escreval(" A soma é", C + C2)
   escreval(" A união é ", numpcarac(C) + numpcarac(C2))
   escreval
   T <- "5"
   T2 <- "5"
   escreval(" A união é ", T + T2)
   escreval(" A soma é", caracpnum(T) + caracpnum(T2))
   escreval
   escreval(pos("h", "matheus"))
   escreval(pos("H", "matheus"))
   escreval(pos("a", "Gabriela"))
fimalgoritmo