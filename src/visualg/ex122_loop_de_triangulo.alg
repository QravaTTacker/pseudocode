algoritmo "First"
var
   n, i, j : inteiro

inicio

   repita
      n <- randi(10) + 1
      para i de 1 ate n faca
         para j de 1 ate i faca
            escreva(" $ ")
         fimpara
         escreval()
      fimpara
      
      para i de 1 ate n + 1 faca
         escreva(" $ ")
      fimpara
      escreval()

      para i de 1 ate n faca
         para j de n ate i passo -1 faca
            escreva(" $ ")
         fimpara
         escreval()
      fimpara
      escreval("-------------------")
   ate Falso

fimalgoritmo
