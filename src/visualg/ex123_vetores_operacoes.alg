algoritmo "Vetores de Opera��es Aritm�ticas"
var
   vet1, vet2 : vetor[0..9] de inteiro
   resultado : vetor[0..3, 0..9] de real
   resultFormat : vetor[0..3, 0..9] de caractere
   aux : real
   i, j : inteiro
   resp : caractere
inicio
   para i := 0 ate 9 fa�a
      escreval("===================== Opera��o ", i+1)
      escreva("Valor A: ")
      leia(vet1[i])
      escreva("Valor B: ")
      leia(vet2[i])
      resultado[0, i] <- vet1[i] + vet2[i]
      resultado[1, i] <- vet1[i] - vet2[i]
      resultado[2, i] <- vet1[i] * vet2[i]
      se vet2[i] <> 0 entao
         resultado[3, i] <- vet1[i] / vet2[i]
      sen�o
         escreval("N�o n�o consigo dividir", vet1[i], "/", vet2[i]:1, " :/")
         escreva("Continuar? Sim/N�o ")
         leia(resp)
         se minusc(resp) = "sim" ent�o
            resultado[3, i] <- 0
            limpatela
         sen�o
            limpatela
            interrompa
         fimse
      fimse
      resultFormat[0, i] := numpcarac(vet1[i]) + " + " + numpcarac(vet2[i]) + " = " + numpcarac(resultado[0, i])
      resultFormat[1, i] := numpcarac(vet1[i]) + " - " + numpcarac(vet2[i]) + " = " + numpcarac(resultado[1, i])
      resultFormat[2, i] := numpcarac(vet1[i]) + " * " + numpcarac(vet2[i]) + " = " + numpcarac(resultado[2, i])
      resultFormat[3, i] := numpcarac(vet1[i]) + " / " + numpcarac(vet2[i]) + " = " + numpcarac(resultado[3, i])
   fimpara
   para i de 0 ate 3 faca
      para j de 0 ate 9 faca
         escreval(resultFormat[i, j])
      fimpara
      escreval("=================================")
   fimpara
fimalgoritmo