algoritmo "IMC em condi��o aninhada"
var
   m,  h, imc : real
inicio

   escreva("Altura: ")
   leia(h)
   escreva("Massa: ")
   leia(m)

   imc <- m/(exp(h,2))
   escreval("Seu IMC �: ", imc:5:2)

   se (imc < 17) ent�o
      escreval("Peso muito abaixo do ideal.")
   sen�o
      se (imc >= 17) e (imc < 18.5) ent�o
         escreval("Peso baixo do ideal.")
      sen�o
         se (imc >= 18.5) e (imc < 25) ent�o
            escreval("Peso ideal.")
         sen�o
            se (imc >= 25) e (imc < 30) ent�o
               escreval("Sobrepeso.")
            sen�o
               se (imc >= 30 ) e (imc < 35) ent�o
                  escreval("Obesidade.")
               sen�o
                  se (imc >= 35) e (imc < 40) ent�o
                     escreval("Obesidade Severa.")
                  sen�o
                     escreval("Obesidade M�rbida.")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse

fimalgoritmo