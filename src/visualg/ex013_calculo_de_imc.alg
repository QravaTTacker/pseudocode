algoritmo "C�lculo de IMC"
var
   m, h, imc : real
inicio

   escreval("-------- C�lculo de IMC --------")
   escreval
   escreva("Informe a sua massa em quilogramas (kg): ")
   leia(m)
   escreva("Informe a sua altura em metros (m): ")
   leia(h)
   
   imc <- m/(h ^ 2)
   escreva("Seu IMC � ", imc:5:2, " e ")
   se (imc >= 18.5) e (imc <= 25) entao
      escreva("seu peso est� na faixa ideal.")
   senao
      escreva("seu peso n�o est� na faixa ideal :/.")
   fimse

fimalgoritmo