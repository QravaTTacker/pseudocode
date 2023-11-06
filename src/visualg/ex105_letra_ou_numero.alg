algoritmo "Letra ou Número"
var
   usr_resp : caractere
inicio
   escreva(" Digite um caractere: ")
   leia(usr_resp)
   se (asc(usr_resp) > asc("9")) ou (asc(usr_resp) < asc("0")) então
      escreval(" ", copia(usr_resp, 1, 1), " é uma Letra...")
   senão
      escreval(" ", usr_resp:1, " é um Número...")
   fimse
fimalgoritmo