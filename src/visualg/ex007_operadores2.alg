algoritmo "Operadores: Aritm�ticos, Relacionais e L�gicos"
var
l1, l2, l3, Eq, Es : real
inicio

      escreva("Informe o primeiro lado: ")
      leia(l1)
      escreva("Informe o segundo lado: ")
      leia(l2)
      escreva("Informe o terceiro lado: ")
      leia(l3)
      escreval
      escreval("� um tri�ngulo: ", (l1<l2+l3) e (l2<l1+l3) e (l3<l1+l2))
      escreval("O tri�nugulo � equil�tero: ", ((l1 = l2) e (l2 = l3)))
      escreval("O tri�nfulo � escaleno: ", ((l1<>l2) e (l1<>l3) e (l2<>l3)))

fimalgoritmo