algoritmo "IMC em condição aninhada"
var
   m,  h, imc : real
inicio

   escreva("Altura: ")
   leia(h)
   escreva("Massa: ")
   leia(m)

   imc <- m/(exp(h,2))
   escreval("Seu IMC é: ", imc:5:2)

   se (imc < 17) então
      escreval("Peso muito abaixo do ideal.")
   senão
      se (imc >= 17) e (imc < 18.5) então
         escreval("Peso baixo do ideal.")
      senão
         se (imc >= 18.5) e (imc < 25) então
            escreval("Peso ideal.")
         senão
            se (imc >= 25) e (imc < 30) então
               escreval("Sobrepeso.")
            senão
               se (imc >= 30 ) e (imc < 35) então
                  escreval("Obesidade.")
               senão
                  se (imc >= 35) e (imc < 40) então
                     escreval("Obesidade Severa.")
                  senão
                     escreval("Obesidade Mórbida.")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

fimalgoritmo