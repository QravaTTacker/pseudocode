algoritmo "Letra ou N�mero"
var
   usr_resp : caractere
inicio
   escreva(" Digite um caractere: ")
   leia(usr_resp)
   se (asc(usr_resp) > asc("9")) ou (asc(usr_resp) < asc("0")) ent�o
      escreval(" ", copia(usr_resp, 1, 1), " � uma Letra...")
   sen�o
      escreval(" ", usr_resp:1, " � um N�mero...")
   fimse
fimalgoritmo