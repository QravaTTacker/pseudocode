algoritmo "Cálculo de IMC"
var
   m, h, imc : real
inicio

   escreval("-------- Cálculo de IMC --------")
   escreval
   escreva("Informe a sua massa em quilogramas (kg): ")
   leia(m)
   escreva("Informe a sua altura em metros (m): ")
   leia(h)
   
   imc <- m/(h ^ 2)
   escreva("Seu IMC é ", imc:5:2, " e ")
   se (imc >= 18.5) e (imc <= 25) entao
      escreva("seu peso está na faixa ideal.")
   senao
      escreva("seu peso não está na faixa ideal :/.")
   fimse

fimalgoritmo