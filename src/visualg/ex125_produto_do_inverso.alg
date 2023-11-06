algoritmo "semnome"
var
   v, v2, vetRsultado : vetor[0..9] de real
   i, length, right, left, mid : inteiro
inicio

   length <- 10

   para i de 0 ate length-1 faca
      v[i] <- randi(10)
      v2[i] <- randi(10)
   fimpara

   para i de 0 ate length-1 faca
      escreva(v[i] * v2[(length-1) - i]:4)
   fimpara

   mid <- length\2
   left <- mid
   right <- mid

   se length % 2 = 0 entao
      left <- left - 1
   senao
      right <- right + 1
   fimse

   para i de 0 ate length-1 faca
      se i % 2 = 0 entao
         vetRsultado[left] <- v[i] * v2[(length - 1) - i]
         left <- left - 1
      senao
         vetRsultado[right] <- v[i] * v2[(length - 1) - i]
         right <- right + 1
      fimse
   fimpara

   escreval()
   para i de 0 ate length-1 faca
      escreva(vetRsultado[i]:4)
   fimpara

fimalgoritmo